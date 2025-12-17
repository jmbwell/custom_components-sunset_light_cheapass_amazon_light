.class public Lorg/apache/commons/math3/distribution/ConstantRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ConstantRealDistribution.java"


# static fields
.field private static final serialVersionUID:J = -0x39b34733540b89c1L


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 42
    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide p1
.end method

.method public density(D)D
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public getNumericalMean()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 61
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide p1

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 0

    return-void
.end method

.method public sample()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method
