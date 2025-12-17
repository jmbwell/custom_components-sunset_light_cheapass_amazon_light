.class public Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;
.super Ljava/lang/Object;
.source "WilcoxonSignedRankTest.java"


# instance fields
.field private naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method private calculateAbsoluteDifferences([D)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 123
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 127
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 130
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 124
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private calculateAsymptoticPValue(DI)D
    .locals 6

    add-int/lit8 v0, p3, 0x1

    mul-int/2addr v0, p3

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    int-to-double v2, p3

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v0

    .line 253
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 257
    new-instance p3, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 259
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private calculateDifferences([D[D)[D
    .locals 6

    .line 99
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 102
    aget-wide v2, p2, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private calculateExactPValue(DI)D
    .locals 8

    const/4 v0, 0x1

    shl-int v1, v0, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_1

    shr-int v7, v3, v5

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    int-to-double v5, v6

    cmpl-double v5, v5, p1

    if-ltz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    int-to-double v2, v4

    mul-double/2addr v2, p1

    int-to-double p1, v1

    div-double/2addr v2, p1

    return-wide v2
.end method

.method private ensureDataConformance([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 81
    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    .line 85
    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 83
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 79
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public wilcoxonSignedRank([D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->ensureDataConformance([D[D)V

    .line 178
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateDifferences([D[D)[D

    move-result-object p2

    .line 179
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateAbsoluteDifferences([D)[D

    move-result-object v0

    .line 181
    iget-object v1, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->naturalRanking:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    .line 185
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_1

    .line 186
    aget-wide v6, p2, v3

    cmpl-double v6, v6, v1

    if-lez v6, :cond_0

    .line 187
    aget-wide v6, v0, v3

    add-double/2addr v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_1
    array-length p1, p1

    add-int/lit8 p2, p1, 0x1

    mul-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    sub-double/2addr p1, v4

    .line 194
    invoke-static {v4, v5, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public wilcoxonSignedRankTest([D[DZ)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->ensureDataConformance([D[D)V

    .line 311
    array-length v0, p1

    .line 312
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->wilcoxonSignedRank([D[D)D

    move-result-wide p1

    if-eqz p3, :cond_1

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 319
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateExactPValue(DI)D

    move-result-wide p1

    return-wide p1

    :cond_2
    add-int/lit8 p3, v0, 0x1

    mul-int/2addr p3, v0

    int-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    sub-double/2addr v1, p1

    .line 322
    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->calculateAsymptoticPValue(DI)D

    move-result-wide p1

    return-wide p1
.end method
