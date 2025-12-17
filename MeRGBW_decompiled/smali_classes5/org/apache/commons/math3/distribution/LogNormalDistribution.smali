.class public Lorg/apache/commons/math3/distribution/LogNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "LogNormalDistribution.java"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final SQRT2:D

.field private static final SQRT2PI:D

.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final logShapePlusHalfLog2Pi:D

.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 63
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 66
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 94
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 113
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 134
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 148
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 172
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    .line 173
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 174
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    .line 175
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 169
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 250
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr p1, v2

    .line 251
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    mul-double/2addr v6, v4

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    .line 254
    :cond_2
    sget-wide v0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double/2addr v4, v0

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erf(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public cumulativeProbability(DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->probability(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public density(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 211
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr v0, v2

    .line 212
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double/2addr v0, v2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    .line 213
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v4, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2PI:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    .line 299
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    .line 300
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double/2addr v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    .line 310
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v0, v0

    .line 312
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    mul-double/2addr v6, v4

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getScale()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    return-wide v0
.end method

.method protected getSolverAbsoluteAccuracy()D
    .locals 2

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->solverAbsoluteAccuracy:D

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
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p1

    .line 225
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    .line 226
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double v0, p1, v0

    .line 227
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    div-double/2addr v0, v2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    .line 228
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->logShapePlusHalfLog2Pi:D

    add-double/2addr v0, p1

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public probability(DD)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    cmpl-double v0, p1, p3

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_1

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    sget-wide v2, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->SQRT2:D

    mul-double/2addr v0, v2

    .line 281
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr p1, v2

    div-double/2addr p1, v0

    .line 282
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p3

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    sub-double/2addr p3, v2

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 283
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/special/Erf;->erf(DD)D

    move-result-wide p1

    mul-double/2addr p1, v0

    return-wide p1

    .line 278
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide p1

    return-wide p1

    .line 274
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public sample()D
    .locals 6

    .line 363
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    .line 364
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->scale:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/LogNormalDistribution;->shape:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method
