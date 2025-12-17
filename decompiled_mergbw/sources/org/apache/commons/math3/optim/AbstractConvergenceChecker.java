package org.apache.commons.math3.optim;
/* loaded from: classes5.dex */
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {
    private final double absoluteThreshold;
    private final double relativeThreshold;

    @Override // org.apache.commons.math3.optim.ConvergenceChecker
    public abstract boolean converged(int i, PAIR pair, PAIR pair2);

    public AbstractConvergenceChecker(double d, double d2) {
        this.relativeThreshold = d;
        this.absoluteThreshold = d2;
    }

    public double getRelativeThreshold() {
        return this.relativeThreshold;
    }

    public double getAbsoluteThreshold() {
        return this.absoluteThreshold;
    }
}
