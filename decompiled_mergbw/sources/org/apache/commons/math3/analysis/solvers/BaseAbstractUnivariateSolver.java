package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.MathUtils;
/* loaded from: classes5.dex */
public abstract class BaseAbstractUnivariateSolver<FUNC extends UnivariateFunction> implements BaseUnivariateSolver<FUNC> {
    private static final double DEFAULT_FUNCTION_VALUE_ACCURACY = 1.0E-15d;
    private static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-14d;
    private final double absoluteAccuracy;
    private final Incrementor evaluations;
    private FUNC function;
    private final double functionValueAccuracy;
    private final double relativeAccuracy;
    private double searchMax;
    private double searchMin;
    private double searchStart;

    protected abstract double doSolve() throws TooManyEvaluationsException, NoBracketingException;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAbstractUnivariateSolver(double d) {
        this(DEFAULT_RELATIVE_ACCURACY, d, 1.0E-15d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAbstractUnivariateSolver(double d, double d2) {
        this(d, d2, 1.0E-15d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAbstractUnivariateSolver(double d, double d2, double d3) {
        this.evaluations = new Incrementor();
        this.absoluteAccuracy = d2;
        this.relativeAccuracy = d;
        this.functionValueAccuracy = d3;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public double getMin() {
        return this.searchMin;
    }

    public double getMax() {
        return this.searchMax;
    }

    public double getStartValue() {
        return this.searchStart;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double getFunctionValueAccuracy() {
        return this.functionValueAccuracy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double computeObjectiveValue(double d) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.function.value(d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setup(int i, FUNC func, double d, double d2, double d3) throws NullArgumentException {
        MathUtils.checkNotNull(func);
        this.searchMin = d;
        this.searchMax = d2;
        this.searchStart = d3;
        this.function = func;
        this.evaluations.setMaximalCount(i);
        this.evaluations.resetCount();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d, double d2, double d3) throws TooManyEvaluationsException, NoBracketingException {
        setup(i, func, d, d2, d3);
        return doSolve();
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d, double d2) {
        return solve(i, func, d, d2, d + ((d2 - d) * 0.5d));
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, FUNC func, double d) throws TooManyEvaluationsException, NoBracketingException {
        return solve(i, func, Double.NaN, Double.NaN, d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isBracketing(double d, double d2) {
        return UnivariateSolverUtils.isBracketing(this.function, d, d2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isSequence(double d, double d2, double d3) {
        return UnivariateSolverUtils.isSequence(d, d2, d3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void verifyInterval(double d, double d2) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifyInterval(d, d2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void verifySequence(double d, double d2, double d3) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifySequence(d, d2, d3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void verifyBracketing(double d, double d2) throws NullArgumentException, NoBracketingException {
        UnivariateSolverUtils.verifyBracketing(this.function, d, d2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void incrementEvaluationCount() throws TooManyEvaluationsException {
        try {
            this.evaluations.incrementCount();
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }
}
