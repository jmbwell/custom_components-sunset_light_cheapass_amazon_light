.class public Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.super Ljava/lang/Object;
.source "NaturalRanking.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# instance fields
.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private final tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 76
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 93
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 143
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 144
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 117
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 159
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 160
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 130
    iput-object p2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 131
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 105
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 106
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method private containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 311
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 312
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private fill([DLjava/util/List;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    .line 382
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 383
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput-wide p3, p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 413
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 414
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V
    .locals 3

    const/4 v0, 0x0

    .line 296
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 297
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
    .locals 9

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->containsNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 269
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 271
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 272
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 274
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 275
    new-instance v5, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    aget-object v8, p1, v4

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 279
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_3
    new-array p1, v3, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    .line 285
    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private resolveTie([DLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 336
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-wide v1, p1, v1

    .line 339
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 341
    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy:[I

    iget-object v5, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v3, 0x5

    if-ne v4, v3, :cond_0

    .line 362
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 363
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v1

    .line 365
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 366
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v5, v0

    add-long/2addr v5, v1

    long-to-double v5, v5

    aput-wide v5, p1, v3

    move v0, v4

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 352
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 353
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    .line 354
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 356
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    int-to-long v5, v3

    add-long/2addr v5, v0

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v0, v1, v5, v6}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, p1, v2

    goto :goto_1

    .line 349
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    goto :goto_2

    :cond_3
    int-to-double v3, v3

    add-double/2addr v1, v3

    sub-double/2addr v1, v5

    .line 346
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    goto :goto_2

    :cond_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v7

    int-to-double v3, v3

    add-double/2addr v1, v3

    sub-double/2addr v1, v5

    div-double/2addr v1, v7

    .line 343
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->fill([DLjava/util/List;D)V

    :cond_5
    :goto_2
    return-void
.end method

.method private restoreNaNs([DLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 399
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    aput-wide v1, p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method

.method public getTiesStrategy()Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->tiesStrategy:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object v0
.end method

.method public rank([D)[D
    .locals 10

    .line 194
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    const/4 v1, 0x0

    move v2, v1

    .line 195
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 196
    new-instance v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;-><init>(DI)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$1;->$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy:[I

    iget-object v2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    .line 215
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw p1

    .line 221
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 212
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanPositions([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 209
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->removeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 206
    invoke-direct {p0, v0, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    goto :goto_1

    :cond_6
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 203
    invoke-direct {p0, v0, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->recodeNaNs([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;D)V

    .line 225
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 229
    array-length p1, v0

    new-array p1, p1, [D

    .line 231
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v4

    int-to-double v5, v2

    aput-wide v5, p1, v4

    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v5, v1

    .line 234
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_9

    .line 235
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v6

    add-int/lit8 v8, v1, -0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-lez v6, :cond_8

    add-int/lit8 v5, v1, 0x1

    .line 238
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    .line 239
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 241
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 245
    :cond_8
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_3
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->getPosition()I

    move-result v6

    int-to-double v7, v5

    aput-wide v7, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 250
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->resolveTie([DLjava/util/List;)V

    .line 252
    :cond_a
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v0, v1, :cond_b

    .line 253
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->restoreNaNs([DLjava/util/List;)V

    :cond_b
    return-object p1
.end method
