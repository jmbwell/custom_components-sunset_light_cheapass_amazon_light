.class public Lorg/apache/commons/math3/distribution/ExponentialDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "ExponentialDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final EXPONENTIAL_SA_QI:[D

.field private static final serialVersionUID:J = 0x21531e610042563cL


# instance fields
.field private final logMean:D

.field private final mean:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 71
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    .line 81
    new-instance v2, Lorg/apache/commons/math3/util/ResizableDoubleArray;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/util/ResizableDoubleArray;-><init>(I)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v3, v7

    if-gez v7, :cond_0

    .line 84
    invoke-static {v0, v1, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    invoke-static {v6}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v9

    long-to-double v9, v9

    div-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 85
    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->addElement(D)V

    add-int/2addr v6, v5

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/ResizableDoubleArray;->getElements()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 105
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    .line 126
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 139
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_0

    .line 162
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    .line 163
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logMean:D

    .line 164
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 160
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-double p1, p1

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 2

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logDensity(D)D

    move-result-wide p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getMean()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 304
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->getMean()D

    move-result-wide v0

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_1

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_1

    if-nez v2, :cond_0

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 226
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    neg-double v0, v0

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    :goto_0
    return-wide p1

    .line 222
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2
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

    const/4 v0, 0x0

    return v0
.end method

.method public logDensity(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p1

    :cond_0
    neg-double p1, p1

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    div-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->logMean:D

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method public sample()D
    .locals 11

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    :goto_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v4

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 251
    sget-object v4, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v5, v4, v5

    add-double/2addr v2, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v0, v6

    add-double/2addr v0, v6

    .line 259
    sget-object v4, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v6, v4, v5

    cmpg-double v4, v0, v6

    if-gtz v4, :cond_1

    .line 260
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    add-double/2addr v2, v0

    mul-double/2addr v4, v2

    return-wide v4

    .line 265
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v6

    move v4, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 271
    iget-object v8, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v8}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-gez v10, :cond_3

    move-wide v6, v8

    .line 278
    :cond_3
    sget-object v8, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->EXPONENTIAL_SA_QI:[D

    aget-wide v9, v8, v4

    cmpl-double v9, v0, v9

    if-gtz v9, :cond_2

    .line 280
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->mean:D

    aget-wide v4, v8, v5

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    mul-double/2addr v0, v2

    return-wide v0
.end method
