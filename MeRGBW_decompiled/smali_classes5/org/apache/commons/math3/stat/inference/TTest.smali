.class public Lorg/apache/commons/math3/stat/inference/TTest;
.super Ljava/lang/Object;
.source "TTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1176
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 1177
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1174
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private checkSampleData([D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1155
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    .line 1156
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v2, p1, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1153
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private checkSignificanceLevel(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_0

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_0

    return-void

    .line 1136
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v5, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2
.end method


# virtual methods
.method protected df(DDDD)D
    .locals 6

    div-double v0, p1, p5

    div-double v2, p3, p7

    add-double/2addr v0, v2

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    mul-double v2, p5, p5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, v4

    mul-double/2addr v2, p5

    div-double/2addr p1, v2

    mul-double/2addr p3, p3

    mul-double p5, p7, p7

    sub-double/2addr p7, v4

    mul-double/2addr p5, p7

    div-double/2addr p3, p5

    add-double/2addr p1, p3

    div-double/2addr v0, p1

    return-wide v0
.end method

.method protected homoscedasticT(DDDDDD)D
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p9, v0

    mul-double/2addr v2, p5

    sub-double v4, p11, v0

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    add-double v4, p9, p11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    sub-double v4, p1, p3

    div-double v6, v0, p9

    div-double v0, v0, p11

    add-double/2addr v6, v0

    mul-double/2addr v2, v6

    .line 1041
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 410
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 411
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticT([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 276
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 278
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method protected homoscedasticTTest(DDDDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1118
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    add-double/2addr p9, p11

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    sub-double/2addr p9, p3

    .line 1121
    new-instance p5, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 p6, 0x0

    invoke-direct {p5, p6, p9, p10}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double p1, p1

    .line 1122
    invoke-virtual {p5, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 899
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 900
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 901
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticTTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 677
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 679
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public homoscedasticTTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 807
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 808
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide p1

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pairedT([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 85
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 86
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 87
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public pairedTTest([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 133
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    .line 134
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public pairedTTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 182
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide p1

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected t(DDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p7

    .line 1003
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method protected t(DDDDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p9

    div-double/2addr p7, p11

    add-double/2addr p5, p7

    .line 1022
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 232
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 233
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 207
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 362
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 363
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public t([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 317
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 319
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method protected tTest(DDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1059
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    .line 1061
    new-instance p3, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p7, p4

    const/4 p4, 0x0

    invoke-direct {p3, p4, p7, p8}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double p1, p1

    .line 1062
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method protected tTest(DDDDDD)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1088
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    move-object v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    .line 1089
    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/stat/inference/TTest;->df(DDDD)D

    move-result-wide v2

    .line 1091
    new-instance v4, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double v0, v0

    .line 1092
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 534
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 535
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 448
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 450
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 852
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 853
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 854
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 630
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSampleData([D)V

    .line 632
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 583
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 584
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p1

    cmpg-double p1, p1, p4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tTest(D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 496
    invoke-direct {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide p1

    cmpg-double p1, p1, p4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 970
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 971
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p1

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 744
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->checkSignificanceLevel(D)V

    .line 745
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide p1

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
