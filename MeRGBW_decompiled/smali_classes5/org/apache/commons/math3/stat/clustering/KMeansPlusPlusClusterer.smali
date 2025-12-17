.class public Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;
.super Ljava/lang/Object;
.source "KMeansPlusPlusClusterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->LARGEST_VARIANCE:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;-><init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    return-void
.end method

.method private static assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;",
            "Ljava/util/Collection<",
            "TT;>;[I)I"
        }
    .end annotation

    .line 232
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 233
    invoke-static {p0, v2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I

    move-result v3

    .line 234
    aget v4, p2, v1

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 239
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/stat/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    add-int/lit8 v2, v1, 0x1

    .line 240
    aput v3, p2, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;I",
            "Ljava/util/Random;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    move/from16 v0, p1

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 267
    new-array v3, v2, [Z

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p2

    .line 273
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 275
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 277
    new-instance v8, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v8, v7}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    .line 280
    aput-boolean v8, v3, v6

    .line 284
    new-array v9, v2, [D

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v2, :cond_1

    if-eq v11, v6, :cond_0

    .line 290
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v7, v12}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v12

    mul-double/2addr v12, v12

    .line 291
    aput-wide v12, v9, v11

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v0, :cond_9

    const-wide/16 v6, 0x0

    move-wide v12, v6

    move v11, v10

    :goto_1
    if-ge v11, v2, :cond_3

    .line 302
    aget-boolean v14, v3, v11

    if-nez v14, :cond_2

    .line 303
    aget-wide v14, v9, v11

    add-double/2addr v12, v14

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    mul-double/2addr v14, v12

    move v11, v10

    :goto_2
    const/4 v12, -0x1

    if-ge v11, v2, :cond_5

    .line 318
    aget-boolean v13, v3, v11

    if-nez v13, :cond_4

    .line 319
    aget-wide v16, v9, v11

    add-double v6, v6, v16

    cmpl-double v13, v6, v14

    if-ltz v13, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move v11, v12

    :goto_3
    if-ne v11, v12, :cond_7

    add-int/lit8 v6, v2, -0x1

    :goto_4
    if-ltz v6, :cond_7

    .line 332
    aget-boolean v7, v3, v6

    if-nez v7, :cond_6

    move v11, v6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-ltz v11, :cond_9

    .line 342
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 344
    new-instance v7, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    aput-boolean v8, v3, v11

    .line 349
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v0, :cond_1

    move v7, v10

    :goto_6
    if-ge v7, v2, :cond_1

    .line 354
    aget-boolean v11, v3, v7

    if-nez v11, :cond_8

    .line 355
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v11

    mul-double/2addr v11, v11

    .line 357
    aget-wide v13, v9, v7

    cmpg-double v13, v11, v13

    if-gez v13, :cond_8

    .line 358
    aput-wide v11, v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    return-object v4
.end method

.method private getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 465
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    const/4 v3, -0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 468
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v6

    .line 469
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v7

    .line 470
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 471
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v10, v8, v0

    if-lez v10, :cond_1

    move-object v2, v4

    move v3, v5

    move-wide v0, v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 486
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object p1

    .line 483
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static getNearestCluster(Ljava/util/Collection;Lorg/apache/commons/math3/stat/clustering/Clusterable;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/stat/clustering/Clusterable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;TT;)I"
        }
    .end annotation

    .line 503
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 504
    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    move v2, v3

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 429
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 432
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object p1

    .line 444
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 387
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 388
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v4

    .line 392
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 393
    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 394
    invoke-interface {v7, v4}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-object v2, v3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    return-object p1

    .line 409
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_8

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->random:Ljava/util/Random;

    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->chooseInitialCenters(Ljava/util/Collection;ILjava/util/Random;)Ljava/util/List;

    move-result-object p2

    .line 176
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 177
    invoke-static {p2, p1, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    if-gez p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_7

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 186
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    sget-object v5, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$1;->$SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy:[I

    iget-object v6, p0, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->emptyStrategy:Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer$EmptyClusterStrategy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 195
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getFarthestPoint(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v5

    goto :goto_2

    .line 198
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_CLUSTER_IN_K_MEANS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 192
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestNumberCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v5

    goto :goto_2

    .line 189
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->getPointFromLargestVarianceCluster(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v5

    goto :goto_2

    .line 202
    :cond_4
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v6}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->centroidOf(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-object v8, v6

    move v6, v5

    move-object v5, v8

    .line 204
    :goto_2
    new-instance v7, Lorg/apache/commons/math3/stat/clustering/Cluster;

    invoke-direct {v7, v5}, Lorg/apache/commons/math3/stat/clustering/Cluster;-><init>(Lorg/apache/commons/math3/stat/clustering/Clusterable;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_1

    .line 206
    :cond_5
    invoke-static {v3, p1, v0}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->assignPointsToClusters(Ljava/util/List;Ljava/util/Collection;[I)I

    move-result p2

    if-nez p2, :cond_6

    if-nez v5, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object p2, v3

    goto :goto_0

    :cond_7
    return-object p2

    .line 168
    :cond_8
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p1, p2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method public cluster(Ljava/util/Collection;III)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;III)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v3, 0x0

    :goto_0
    move/from16 v4, p3

    if-ge v3, v4, :cond_4

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p4

    .line 115
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/clustering/KMeansPlusPlusClusterer;->cluster(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v9

    .line 119
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/stat/clustering/Cluster;

    .line 120
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 123
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getCenter()Lorg/apache/commons/math3/stat/clustering/Clusterable;

    move-result-object v14

    .line 124
    new-instance v15, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v15}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    .line 125
    invoke-virtual {v13}, Lorg/apache/commons/math3/stat/clustering/Cluster;->getPoints()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lorg/apache/commons/math3/stat/clustering/Clusterable;

    .line 126
    invoke-interface {v4, v14}, Lorg/apache/commons/math3/stat/clustering/Clusterable;->distanceFrom(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    move-object/from16 v5, p0

    move/from16 v4, p3

    goto :goto_2

    .line 128
    :cond_0
    invoke-virtual {v15}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v4

    add-double/2addr v11, v4

    :cond_1
    move-object/from16 v5, p0

    move/from16 v4, p3

    goto :goto_1

    :cond_2
    cmpg-double v4, v11, v1

    if-gtz v4, :cond_3

    move-object v0, v9

    move-wide v1, v11

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
