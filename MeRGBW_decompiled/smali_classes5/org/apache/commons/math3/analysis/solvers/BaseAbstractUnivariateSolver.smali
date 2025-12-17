.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver<",
        "TFUNC;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_VALUE_ACCURACY:D = 1.0E-15

.field private static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-14


# instance fields
.field private final absoluteAccuracy:D

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field

.field private final functionValueAccuracy:D

.field private final relativeAccuracy:D

.field private searchMax:D

.field private searchMin:D

.field private searchStart:D


# direct methods
.method protected constructor <init>(D)V
    .locals 7

    const-wide v1, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v5, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move-wide v3, p1

    .line 70
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method

.method protected constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 83
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method

.method protected constructor <init>(DDD)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 98
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->absoluteAccuracy:D

    .line 99
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->relativeAccuracy:D

    .line 100
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->functionValueAccuracy:D

    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract doSolve()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->absoluteAccuracy:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()D
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->functionValueAccuracy:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMax:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMin()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMin:D

    return-wide v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->relativeAccuracy:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchStart:D

    return-wide v0
.end method

.method protected incrementEvaluationCount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method protected isBracketing(DD)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result p1

    return p1
.end method

.method protected isSequence(DDD)Z
    .locals 0

    .line 251
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isSequence(DDD)Z

    move-result p1

    return p1
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 180
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 183
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMin:D

    .line 184
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchMax:D

    .line 185
    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->searchStart:D

    .line 186
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 187
    iget-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 188
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    return-void
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;D)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v7, p3

    .line 211
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DD)D"
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v2, v0

    add-double v7, p3, v2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 204
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 196
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->doSolve()D

    move-result-wide p1

    return-wide p1
.end method

.method protected verifyBracketing(DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    return-void
.end method

.method protected verifyInterval(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 264
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    return-void
.end method

.method protected verifySequence(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 280
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    return-void
.end method
