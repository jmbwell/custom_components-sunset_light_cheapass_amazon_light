.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractDifferentiableUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/DifferentiableUnivariateSolver;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method protected computeDerivativeObjectiveValue(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->incrementEvaluationCount()V

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V
    .locals 0

    .line 79
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 80
    invoke-interface {p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->functionDerivative:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    return-void
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 31
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractDifferentiableUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;DDD)V

    return-void
.end method
