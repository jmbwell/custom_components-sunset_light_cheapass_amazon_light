.class public Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;
.super Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.source "SimpleUnivariateValueChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;-><init>(DD)V

    if-lez p5, :cond_0

    .line 93
    iput p5, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    return-void

    .line 91
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p2, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    check-cast p3, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->converged(ILorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;)Z
    .locals 5

    .line 116
    iget v0, p0, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    return v2

    .line 120
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide p1

    .line 121
    invoke-virtual {p3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    sub-double v3, p1, v0

    .line 122
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 123
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->getRelativeThreshold()D

    move-result-wide v0

    mul-double/2addr p1, v0

    cmpg-double p1, v3, p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/SimpleUnivariateValueChecker;->getAbsoluteThreshold()D

    move-result-wide p1

    cmpg-double p1, v3, p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
