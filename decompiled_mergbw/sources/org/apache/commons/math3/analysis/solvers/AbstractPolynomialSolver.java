package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
/* loaded from: classes5.dex */
public abstract class AbstractPolynomialSolver extends BaseAbstractUnivariateSolver<PolynomialFunction> implements PolynomialSolver {
    private PolynomialFunction polynomialFunction;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPolynomialSolver(double d) {
        super(d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPolynomialSolver(double d, double d2) {
        super(d, d2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPolynomialSolver(double d, double d2, double d3) {
        super(d, d2, d3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public void setup(int i, PolynomialFunction polynomialFunction, double d, double d2, double d3) {
        super.setup(i, (int) polynomialFunction, d, d2, d3);
        this.polynomialFunction = polynomialFunction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double[] getCoefficients() {
        return this.polynomialFunction.getCoefficients();
    }
}
