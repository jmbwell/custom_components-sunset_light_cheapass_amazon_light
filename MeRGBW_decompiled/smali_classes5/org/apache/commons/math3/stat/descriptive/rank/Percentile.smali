.class public Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "Percentile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LEVELS:I = 0xa

.field private static final PIVOTS_HEAP_LENGTH:I = 0x200

.field private static final serialVersionUID:J = -0x7049c6862ae14530L


# instance fields
.field private cachedPivots:[I

.field private final estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field private final kthSelector:Lorg/apache/commons/math3/util/KthSelector;

.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private quantile:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 137
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 152
    sget-object v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v5, Lorg/apache/commons/math3/util/KthSelector;

    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/util/KthSelector;-><init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 196
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    invoke-static {p5}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 200
    iput-object p4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 201
    iput-object p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 165
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 167
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 168
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 170
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setData([D)V

    .line 171
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_0
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static copyOf([DII)[D
    .locals 0

    .line 478
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    add-int/2addr p2, p1

    .line 479
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOfRange([DII)[D

    move-result-object p0

    return-object p0
.end method

.method private getPivots([D)[I
    .locals 1

    .line 558
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 559
    iget-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    .line 561
    new-array p1, p1, [I

    const/4 v0, -0x1

    .line 562
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    return-object p1
.end method

.method private static removeAndSlice([DIID)[D
    .locals 5

    .line 516
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    .line 519
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 521
    aget-wide v2, p0, v1

    invoke-static {p3, p4, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, v1, p1

    .line 522
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 527
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    goto :goto_2

    .line 528
    :cond_2
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result p3

    const/4 p4, 0x0

    if-ne p3, p2, :cond_3

    .line 529
    new-array p0, p4, [D

    goto :goto_2

    .line 531
    :cond_3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result p3

    sub-int/2addr p2, p3

    new-array p2, p2, [D

    move v1, p1

    move p3, p4

    .line 536
    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    sub-int p4, v3, p4

    .line 538
    invoke-static {p0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    .line 540
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p4

    add-int v1, p1, p4

    goto :goto_1

    :cond_4
    if-ge v1, v2, :cond_5

    sub-int/2addr v2, v1

    .line 544
    invoke-static {p0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object p0, p2

    :goto_2
    return-object p0
.end method

.method private static replaceAndSlice([DIIDD)[D
    .locals 2

    .line 496
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 498
    aget-wide v0, p0, p1

    invoke-static {p3, p4, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, p5

    goto :goto_1

    :cond_0
    aget-wide v0, p0, p1

    :goto_1
    aput-wide v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1

    .line 409
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-object v0
.end method

.method public evaluate(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    const/4 v3, 0x0

    .line 273
    array-length v4, p1

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 302
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate([DIID)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->test([DII)Z

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-nez p3, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 348
    aget-wide p2, p1, p2

    return-wide p2

    .line 351
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getWorkArray([DII)[D

    move-result-object p2

    .line 352
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getPivots([D)[I

    move-result-object v2

    .line 353
    array-length p1, p2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v1, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 341
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x64

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method

.method public getKthSelector()Lorg/apache/commons/math3/util/KthSelector;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-object v0
.end method

.method public getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/KthSelector;->getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    move-result-object v0

    return-object v0
.end method

.method public getQuantile()D
    .locals 2

    .line 385
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-wide v0
.end method

.method protected getWorkArray([DII)[D
    .locals 7

    .line 444
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getDataRef()[D

    move-result-object p1

    goto :goto_0

    .line 447
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 462
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p1

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p1

    .line 459
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNotNaN([D)V

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 455
    invoke-static {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->removeAndSlice([DIID)[D

    move-result-object p1

    goto :goto_0

    :cond_3
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 452
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object p1

    goto :goto_0

    :cond_4
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 449
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method medianOf3([DII)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;->pivotIndex([DII)I

    move-result p1

    return p1
.end method

.method public setData([D)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    .line 210
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 211
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 213
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    return-void
.end method

.method public setData([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    .line 223
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 224
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 226
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([DII)V

    return-void
.end method

.method public setQuantile(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 401
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-void

    .line 398
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    .line 598
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    .line 672
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    .line 631
    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method
