package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public abstract class RungeKuttaIntegrator extends AbstractIntegrator {

    /* renamed from: a  reason: collision with root package name */
    private final double[][] f80a;

    /* renamed from: b  reason: collision with root package name */
    private final double[] f81b;

    /* renamed from: c  reason: collision with root package name */
    private final double[] f82c;
    private final RungeKuttaStepInterpolator prototype;
    private final double step;

    /* JADX INFO: Access modifiers changed from: protected */
    public RungeKuttaIntegrator(String str, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d) {
        super(str);
        this.f82c = dArr;
        this.f80a = dArr2;
        this.f81b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.step = FastMath.abs(d);
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d);
        setEquations(expandableStatefulODE);
        int i = 0;
        boolean z = d > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        int length = this.f82c.length;
        int i2 = length + 1;
        double[][] dArr2 = new double[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            dArr2[i3] = new double[completeState.length];
        }
        double[] dArr3 = (double[]) completeState.clone();
        double[] dArr4 = new double[completeState.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) this.prototype.copy();
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator;
        double[] dArr5 = dArr4;
        double[] dArr6 = dArr3;
        rungeKuttaStepInterpolator.reinitialize(this, dArr3, dArr2, z, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        rungeKuttaStepInterpolator2.storeTime(expandableStatefulODE.getTime());
        this.stepStart = expandableStatefulODE.getTime();
        if (z) {
            double d2 = this.stepStart;
            double d3 = this.step;
            if (d2 + d3 >= d) {
                this.stepSize = d - this.stepStart;
            } else {
                this.stepSize = d3;
            }
        } else {
            double d4 = this.stepStart;
            double d5 = this.step;
            if (d4 - d5 <= d) {
                this.stepSize = d - this.stepStart;
            } else {
                this.stepSize = -d5;
            }
        }
        initIntegration(expandableStatefulODE.getTime(), completeState, d);
        this.isLastStep = false;
        while (true) {
            rungeKuttaStepInterpolator2.shift();
            computeDerivatives(this.stepStart, dArr, dArr2[i]);
            int i4 = 1;
            while (i4 < i2) {
                int i5 = i;
                while (i5 < completeState.length) {
                    int i6 = i4 - 1;
                    double d6 = this.f80a[i6][i] * dArr2[i][i5];
                    for (int i7 = 1; i7 < i4; i7++) {
                        d6 += this.f80a[i6][i7] * dArr2[i7][i5];
                    }
                    dArr6[i5] = dArr[i5] + (this.stepSize * d6);
                    i5++;
                    z = z;
                    i = 0;
                }
                computeDerivatives(this.stepStart + (this.f82c[i4 - 1] * this.stepSize), dArr6, dArr2[i4]);
                i4++;
                rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator2;
                z = z;
                i = 0;
            }
            boolean z2 = z;
            double[] dArr7 = dArr6;
            RungeKuttaStepInterpolator rungeKuttaStepInterpolator3 = rungeKuttaStepInterpolator2;
            for (int i8 = 0; i8 < completeState.length; i8++) {
                double d7 = this.f81b[0] * dArr2[0][i8];
                for (int i9 = 1; i9 < i2; i9++) {
                    d7 += this.f81b[i9] * dArr2[i9][i8];
                }
                dArr7[i8] = dArr[i8] + (this.stepSize * d7);
            }
            rungeKuttaStepInterpolator3.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr7, 0, dArr, 0, completeState.length);
            double[] dArr8 = dArr5;
            System.arraycopy(dArr2[length], 0, dArr8, 0, completeState.length);
            this.stepStart = acceptStep(rungeKuttaStepInterpolator3, dArr, dArr8, d);
            if (!this.isLastStep) {
                rungeKuttaStepInterpolator3.storeTime(this.stepStart);
                double d8 = this.stepStart + this.stepSize;
                if (!z2 ? d8 <= d : d8 >= d) {
                    this.stepSize = d - this.stepStart;
                }
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                this.stepStart = Double.NaN;
                this.stepSize = Double.NaN;
                return;
            }
            dArr5 = dArr8;
            dArr6 = dArr7;
            rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator3;
            z = z2;
            i = 0;
        }
    }

    public double[] singleStep(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d, double[] dArr, double d2) {
        double[] dArr2 = (double[]) dArr.clone();
        int i = 1;
        int length = this.f82c.length + 1;
        double[][] dArr3 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr3[i2] = new double[dArr.length];
        }
        double[] dArr4 = (double[]) dArr.clone();
        double d3 = d2 - d;
        firstOrderDifferentialEquations.computeDerivatives(d, dArr2, dArr3[0]);
        int i3 = 1;
        while (i3 < length) {
            int i4 = 0;
            while (i4 < dArr.length) {
                int i5 = i3 - 1;
                double d4 = this.f80a[i5][0] * dArr3[0][i4];
                for (int i6 = i; i6 < i3; i6++) {
                    d4 += this.f80a[i5][i6] * dArr3[i6][i4];
                }
                dArr4[i4] = dArr2[i4] + (d4 * d3);
                i4++;
                i = 1;
            }
            firstOrderDifferentialEquations.computeDerivatives((this.f82c[i3 - 1] * d3) + d, dArr4, dArr3[i3]);
            i3++;
            i = 1;
        }
        for (int i7 = 0; i7 < dArr.length; i7++) {
            double d5 = this.f81b[0] * dArr3[0][i7];
            for (int i8 = 1; i8 < length; i8++) {
                d5 += this.f81b[i8] * dArr3[i8][i7];
            }
            dArr2[i7] = dArr2[i7] + (d5 * d3);
        }
        return dArr2;
    }
}
