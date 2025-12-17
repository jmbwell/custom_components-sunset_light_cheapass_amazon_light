.class public final Lorg/apache/commons/math3/stat/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field private static final GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

.field private static final MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

.field private static final PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field private static final VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 52
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 55
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 58
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 64
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    .line 70
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 73
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    .line 76
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geometricMean([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 285
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static geometricMean([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 307
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->GEOMETRIC_MEAN:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getMode([DII)[D
    .locals 5

    .line 870
    new-instance v0, Lorg/apache/commons/math3/stat/Frequency;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/Frequency;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 872
    aget-wide v2, p0, v1

    .line 873
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    .line 874
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/Frequency;->getMode()Ljava/util/List;

    move-result-object p0

    .line 879
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [D

    .line 881
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v1, p2, 0x1

    .line 882
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p1, p2

    move p2, v1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static max([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 554
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 581
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MAX:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mean([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 245
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 267
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MEAN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static meanDifference([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 732
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/StatUtils;->sumDifference([D[D)D

    move-result-wide v0

    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static min([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 602
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 629
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->MIN:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mode([D)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 820
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object p0

    return-object p0

    .line 818
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static mode([DII)[D
    .locals 0

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 857
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->getMode([DII)[D

    move-result-object p0

    return-object p0

    .line 854
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 850
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 846
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static normalize([D)[D
    .locals 8

    .line 777
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 780
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 781
    aget-wide v3, p0, v2

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v2

    .line 786
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v4

    .line 789
    array-length v0, p0

    new-array v0, v0, [D

    .line 791
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 793
    aget-wide v6, p0, v1

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static percentile([DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 657
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static percentile([DIID)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 689
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PERCENTILE:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 447
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DD)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 533
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 505
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([DII)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static product([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 166
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 185
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->PRODUCT:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sum([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 98
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sumDifference([D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 705
    array-length v0, p0

    .line 706
    array-length v1, p1

    if-ne v0, v1, :cond_2

    if-lez v0, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 714
    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    sub-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 710
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 707
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public static sumLog([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 204
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumLog([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 227
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_LOGS:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sumSq([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->SUM_OF_SQUARES:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 331
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 426
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 395
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 360
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varianceDifference([D[DD)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 754
    array-length v0, p0

    .line 755
    array-length v1, p1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-wide v5, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 762
    aget-wide v7, p0, v1

    aget-wide v9, p1, v1

    sub-double/2addr v7, v9

    sub-double/2addr v7, p2

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-double/2addr v5, v5

    int-to-double p0, v0

    div-double/2addr v5, p0

    sub-double/2addr v3, v5

    sub-int/2addr v0, v2

    int-to-double p0, v0

    div-double/2addr v3, p0

    return-wide v3

    .line 759
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 756
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
