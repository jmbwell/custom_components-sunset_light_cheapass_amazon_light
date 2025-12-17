.class Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;
.super Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;
.source "LeastSquaresFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalLeastSquaresProblem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;,
        Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractOptimizationProblem<",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
        ">;",
        "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
    }
.end annotation


# instance fields
.field private final lazyEvaluation:Z

.field private final model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

.field private final paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

.field private final start:Lorg/apache/commons/math3/linear/RealVector;

.field private final target:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/optim/ConvergenceChecker;IIZLorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;",
            ">;IIZ",
            "Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;",
            ")V"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p5, p6, p4}, Lorg/apache/commons/math3/optim/AbstractOptimizationProblem;-><init>(IILorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 387
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    .line 388
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    .line 389
    iput-object p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    .line 390
    iput-boolean p7, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->lazyEvaluation:Z

    .line 391
    iput-object p8, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    if-eqz p7, :cond_1

    .line 393
    instance-of p2, p1, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_IMPLEMENTATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    invoke-direct {p2, p3, p4}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    .locals 7

    .line 420
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->paramValidator:Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/ParameterValidator;->validate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 424
    iget-boolean p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->lazyEvaluation:Z

    if-eqz p1, :cond_1

    .line 425
    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;

    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    check-cast v0, Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v4, v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$LazyUnweightedEvaluation;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/ValueAndJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V

    return-object p1

    .line 430
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->model:Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;->value(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object p1

    .line 431
    new-instance v6, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem$UnweightedEvaluation;-><init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$1;)V

    return-object v6
.end method

.method public getObservationSize()I
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->target:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getParameterSize()I
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getStart()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory$LocalLeastSquaresProblem;->start:Lorg/apache/commons/math3/linear/RealVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    return-object v0
.end method
