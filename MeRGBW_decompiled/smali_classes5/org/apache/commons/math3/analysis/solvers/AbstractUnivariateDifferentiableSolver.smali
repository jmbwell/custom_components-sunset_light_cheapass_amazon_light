.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractUnivariateDifferentiableSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/UnivariateDifferentiableSolver;"
    }
.end annotation


# instance fields
.field private function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method protected computeObjectiveValueAndDerivative(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->incrementEvaluationCount()V

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    new-instance v7, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v1, v7

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;->value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 30
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V

    return-void
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;DDD)V
    .locals 0

    .line 79
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 80
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateDifferentiableSolver;->function:Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;

    return-void
.end method
