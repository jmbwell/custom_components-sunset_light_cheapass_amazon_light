package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;
/* compiled from: BicubicSplineInterpolatingFunction.java */
/* loaded from: classes5.dex */
class BicubicSplineFunction implements BivariateFunction {
    private static final short N = 4;

    /* renamed from: a  reason: collision with root package name */
    private final double[][] f61a;
    private final BivariateFunction partialDerivativeX;
    private final BivariateFunction partialDerivativeXX;
    private final BivariateFunction partialDerivativeXY;
    private final BivariateFunction partialDerivativeY;
    private final BivariateFunction partialDerivativeYY;

    public BicubicSplineFunction(double[] dArr) {
        this(dArr, false);
    }

    public BicubicSplineFunction(double[] dArr, boolean z) {
        int i = 4;
        int i2 = 0;
        this.f61a = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                this.f61a[i3][i4] = dArr[(i3 * 4) + i4];
            }
        }
        if (z) {
            final double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            final double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            final double[][] dArr4 = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            final double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            final double[][] dArr6 = (double[][]) Array.newInstance(Double.TYPE, 4, 4);
            int i5 = 0;
            while (i5 < i) {
                int i6 = i2;
                while (i6 < i) {
                    double d = this.f61a[i5][i6];
                    double[] dArr7 = dArr2[i5];
                    dArr7[i6] = i5 * d;
                    double[] dArr8 = dArr3[i5];
                    double d2 = i6;
                    dArr8[i6] = d * d2;
                    dArr4[i5][i6] = (i5 - 1) * dArr7[i6];
                    dArr5[i5][i6] = (i6 - 1) * dArr8[i6];
                    dArr6[i5][i6] = d2 * dArr7[i6];
                    i6++;
                    i = 4;
                }
                i5++;
                i = 4;
                i2 = 0;
            }
            this.partialDerivativeX = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.1
                @Override // org.apache.commons.math3.analysis.BivariateFunction
                public double value(double d3, double d4) {
                    double d5 = d4 * d4;
                    return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d3, d3 * d3}, new double[]{1.0d, d4, d5, d5 * d4}, dArr2);
                }
            };
            this.partialDerivativeY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.2
                @Override // org.apache.commons.math3.analysis.BivariateFunction
                public double value(double d3, double d4) {
                    double d5 = d3 * d3;
                    return BicubicSplineFunction.this.apply(new double[]{1.0d, d3, d5, d5 * d3}, new double[]{0.0d, 1.0d, d4, d4 * d4}, dArr3);
                }
            };
            this.partialDerivativeXX = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.3
                @Override // org.apache.commons.math3.analysis.BivariateFunction
                public double value(double d3, double d4) {
                    double[] dArr9 = {0.0d, 0.0d, 1.0d, d3};
                    double d5 = d4 * d4;
                    return BicubicSplineFunction.this.apply(dArr9, new double[]{1.0d, d4, d5, d5 * d4}, dArr4);
                }
            };
            this.partialDerivativeYY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.4
                @Override // org.apache.commons.math3.analysis.BivariateFunction
                public double value(double d3, double d4) {
                    double d5 = d3 * d3;
                    return BicubicSplineFunction.this.apply(new double[]{1.0d, d3, d5, d5 * d3}, new double[]{0.0d, 0.0d, 1.0d, d4}, dArr5);
                }
            };
            this.partialDerivativeXY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.5
                @Override // org.apache.commons.math3.analysis.BivariateFunction
                public double value(double d3, double d4) {
                    return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d3, d3 * d3}, new double[]{0.0d, 1.0d, d4, d4 * d4}, dArr6);
                }
            };
            return;
        }
        this.partialDerivativeX = null;
        this.partialDerivativeY = null;
        this.partialDerivativeXX = null;
        this.partialDerivativeYY = null;
        this.partialDerivativeXY = null;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d, double d2) {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        double d3 = d * d;
        double[] dArr = {1.0d, d, d3, d3 * d};
        double d4 = d2 * d2;
        return apply(dArr, new double[]{1.0d, d2, d4, d4 * d2}, this.f61a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double apply(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d = 0.0d;
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                d += dArr3[i][i2] * dArr[i] * dArr2[i2];
            }
        }
        return d;
    }

    public BivariateFunction partialDerivativeX() {
        return this.partialDerivativeX;
    }

    public BivariateFunction partialDerivativeY() {
        return this.partialDerivativeY;
    }

    public BivariateFunction partialDerivativeXX() {
        return this.partialDerivativeXX;
    }

    public BivariateFunction partialDerivativeYY() {
        return this.partialDerivativeYY;
    }

    public BivariateFunction partialDerivativeXY() {
        return this.partialDerivativeXY;
    }
}
