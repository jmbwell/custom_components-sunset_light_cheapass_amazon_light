.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "GradientMultivariateOptimizer.java"


# instance fields
.field private gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method protected computeObjectiveGradient([D)[D
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 94
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;

    if-eqz v3, :cond_0

    .line 95
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunctionGradient;->getObjectiveFunctionGradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->gradient:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
