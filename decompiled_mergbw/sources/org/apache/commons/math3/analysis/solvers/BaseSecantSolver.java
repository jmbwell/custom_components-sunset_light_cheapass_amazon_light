package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public abstract class BaseSecantSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private AllowedSolution allowed;
    private final Method method;

    /* loaded from: classes5.dex */
    protected enum Method {
        REGULA_FALSI,
        ILLINOIS,
        PEGASUS
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseSecantSolver(double d, Method method) {
        super(d);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseSecantSolver(double d, double d2, Method method) {
        super(d, d2);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseSecantSolver(double d, double d2, double d3, Method method) {
        super(d, d2, d3);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, AllowedSolution allowedSolution) {
        return solve(i, univariateFunction, d, d2, d + ((d2 - d) * 0.5d), allowedSolution);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, double d3, AllowedSolution allowedSolution) {
        this.allowed = allowedSolution;
        return super.solve(i, (int) univariateFunction, d, d2, d3);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver, org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, double d3) {
        return solve(i, univariateFunction, d, d2, d3, AllowedSolution.ANY_SIDE);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    protected final double doSolve() throws ConvergenceException {
        double d;
        double min = getMin();
        double max = getMax();
        double computeObjectiveValue = computeObjectiveValue(min);
        double computeObjectiveValue2 = computeObjectiveValue(max);
        double d2 = 0.0d;
        if (computeObjectiveValue == 0.0d) {
            return min;
        }
        if (computeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        boolean z = false;
        while (true) {
            double d3 = min;
            d = max - (((max - min) * computeObjectiveValue2) / (computeObjectiveValue2 - computeObjectiveValue));
            double computeObjectiveValue3 = computeObjectiveValue(d);
            int i = (computeObjectiveValue3 > d2 ? 1 : (computeObjectiveValue3 == d2 ? 0 : -1));
            if (i == 0) {
                return d;
            }
            if (computeObjectiveValue2 * computeObjectiveValue3 < d2) {
                d3 = max;
                z = !z;
                computeObjectiveValue = computeObjectiveValue2;
            } else {
                int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[this.method.ordinal()];
                if (i2 == 1) {
                    computeObjectiveValue *= 0.5d;
                } else if (i2 == 2) {
                    computeObjectiveValue *= computeObjectiveValue2 / (computeObjectiveValue2 + computeObjectiveValue3);
                } else if (i2 != 3) {
                    throw new MathInternalError();
                } else {
                    if (d == max) {
                        throw new ConvergenceException();
                    }
                }
            }
            if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
                int i3 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i3 != 1) {
                    if (i3 == 2) {
                        if (z) {
                            break;
                        }
                    } else if (i3 != 3) {
                        if (i3 != 4) {
                            if (i3 != 5) {
                                throw new MathInternalError();
                            }
                            if (i >= 0) {
                                return d;
                            }
                        } else if (computeObjectiveValue3 <= 0.0d) {
                            return d;
                        }
                    } else if (!z) {
                        return d;
                    }
                } else {
                    break;
                }
            }
            double d4 = computeObjectiveValue;
            if (FastMath.abs(d - d3) < FastMath.max(relativeAccuracy * FastMath.abs(d), absoluteAccuracy)) {
                int i4 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i4 != 1) {
                    if (i4 == 2) {
                        return z ? d : d3;
                    } else if (i4 == 3) {
                        return z ? d3 : d;
                    } else if (i4 == 4) {
                        return computeObjectiveValue3 <= 0.0d ? d : d3;
                    } else if (i4 == 5) {
                        return i >= 0 ? d : d3;
                    } else {
                        throw new MathInternalError();
                    }
                }
                return d;
            }
            max = d;
            computeObjectiveValue2 = computeObjectiveValue3;
            min = d3;
            computeObjectiveValue = d4;
            d2 = 0.0d;
        }
        return d;
    }

    /* renamed from: org.apache.commons.math3.analysis.solvers.BaseSecantSolver$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution;
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Method.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method = iArr2;
            try {
                iArr2[Method.ILLINOIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.PEGASUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.REGULA_FALSI.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }
}
