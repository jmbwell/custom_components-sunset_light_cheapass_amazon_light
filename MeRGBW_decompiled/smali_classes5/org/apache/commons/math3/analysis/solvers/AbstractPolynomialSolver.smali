.class public abstract Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.source "AbstractPolynomialSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;",
        ">;",
        "Lorg/apache/commons/math3/analysis/solvers/PolynomialSolver;"
    }
.end annotation


# instance fields
.field private polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;


# direct methods
.method protected constructor <init>(D)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method protected getCoefficients()[D
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->getCoefficients()[D

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 27
    check-cast p2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    return-void
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 71
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->polynomialFunction:Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    return-void
.end method
