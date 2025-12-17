package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;
/* loaded from: classes5.dex */
public class PolynomialFunctionNewtonForm implements UnivariateDifferentiableFunction {

    /* renamed from: a  reason: collision with root package name */
    private final double[] f64a;

    /* renamed from: c  reason: collision with root package name */
    private final double[] f65c;
    private double[] coefficients;
    private boolean coefficientsComputed;

    public PolynomialFunctionNewtonForm(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        verifyInputArray(dArr, dArr2);
        double[] dArr3 = new double[dArr.length];
        this.f64a = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.f65c = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.coefficientsComputed = false;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return evaluate(this.f64a, this.f65c, d);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        verifyInputArray(this.f64a, this.f65c);
        int length = this.f65c.length;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.f64a[length]);
        for (int i = length - 1; i >= 0; i--) {
            derivativeStructure2 = derivativeStructure.subtract(this.f65c[i]).multiply(derivativeStructure2).add(this.f64a[i]);
        }
        return derivativeStructure2;
    }

    public int degree() {
        return this.f65c.length;
    }

    public double[] getNewtonCoefficients() {
        double[] dArr = this.f64a;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getCenters() {
        double[] dArr = this.f65c;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getCoefficients() {
        if (!this.coefficientsComputed) {
            computeCoefficients();
        }
        double[] dArr = this.coefficients;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d) throws NullArgumentException, DimensionMismatchException, NoDataException {
        verifyInputArray(dArr, dArr2);
        int length = dArr2.length;
        double d2 = dArr[length];
        for (int i = length - 1; i >= 0; i--) {
            d2 = dArr[i] + ((d - dArr2[i]) * d2);
        }
        return d2;
    }

    protected void computeCoefficients() {
        int degree = degree();
        this.coefficients = new double[degree + 1];
        for (int i = 0; i <= degree; i++) {
            this.coefficients[i] = 0.0d;
        }
        this.coefficients[0] = this.f64a[degree];
        for (int i2 = degree - 1; i2 >= 0; i2--) {
            for (int i3 = degree - i2; i3 > 0; i3--) {
                double[] dArr = this.coefficients;
                dArr[i3] = dArr[i3 - 1] - (this.f65c[i2] * dArr[i3]);
            }
            double[] dArr2 = this.coefficients;
            dArr2[0] = this.f64a[i2] - (this.f65c[i2] * dArr2[0]);
        }
        this.coefficientsComputed = true;
    }

    protected static void verifyInputArray(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException(LocalizedFormats.EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY);
        }
        if (dArr.length != dArr2.length + 1) {
            throw new DimensionMismatchException(LocalizedFormats.ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1, dArr.length, dArr2.length);
        }
    }
}
