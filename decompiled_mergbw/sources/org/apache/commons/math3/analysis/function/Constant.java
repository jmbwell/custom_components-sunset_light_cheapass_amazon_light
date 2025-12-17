package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
/* loaded from: classes5.dex */
public class Constant implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* renamed from: c  reason: collision with root package name */
    private final double f57c;

    public Constant(double d) {
        this.f57c = d;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return this.f57c;
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public DifferentiableUnivariateFunction derivative() {
        return new Constant(0.0d);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return new DerivativeStructure(derivativeStructure.getFreeParameters(), derivativeStructure.getOrder(), this.f57c);
    }
}
