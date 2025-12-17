.class public Lorg/jtransforms/dht/FloatDHT_2D;
.super Ljava/lang/Object;
.source "FloatDHT_2D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

.field private dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

.field private isPowerOfTwo:Z

.field private rows:I

.field private rowsl:J

.field private useThreads:Z


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    .line 64
    iput-boolean v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    long-to-int v1, p1

    .line 77
    iput v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    long-to-int v1, p3

    .line 78
    iput v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    .line 79
    iput-wide p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    .line 80
    iput-wide p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long v1, p1, p3

    .line 81
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 82
    iput-boolean v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    .line 84
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iput-boolean v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    .line 87
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v3

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 88
    new-instance v0, Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dht/FloatDHT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 90
    iput-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-direct {p1, p3, p4}, Lorg/jtransforms/dht/FloatDHT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    :goto_0
    return-void

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dht/FloatDHT_2D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/jtransforms/dht/FloatDHT_2D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    return-wide v0
.end method

.method private ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 14

    .line 991
    const-class v1, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    move-object v12, p0

    iget-wide v4, v12, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v4, v0

    :goto_0
    long-to-int v0, v4

    .line 993
    new-array v2, v0, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    int-to-long v7, v3

    .line 997
    new-instance v13, Lorg/jtransforms/dht/FloatDHT_2D$17;

    move-object v4, v13

    move-object v5, p0

    move v6, p1

    move v9, v0

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lorg/jtransforms/dht/FloatDHT_2D$17;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;IJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1015
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1019
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1017
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d0_subth(I[FZ)V
    .locals 12

    .line 957
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 959
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 963
    new-instance v11, Lorg/jtransforms/dht/FloatDHT_2D$16;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dht/FloatDHT_2D$16;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;III[FZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 981
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 985
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 983
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d0_subth(I[[FZ)V
    .locals 12

    .line 1025
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 1027
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 1031
    new-instance v11, Lorg/jtransforms/dht/FloatDHT_2D$18;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dht/FloatDHT_2D$18;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;III[[FZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1049
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1139
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    .line 1140
    iget-wide v8, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    const-wide/16 v10, 0x2

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    const/4 v8, 0x1

    :goto_0
    shr-long/2addr v4, v8

    goto :goto_1

    :cond_0
    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    .line 1145
    :cond_1
    :goto_1
    new-instance v8, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 1146
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v9, v4, v10

    const/4 v12, -0x1

    const-wide/16 v13, 0x1

    if-lez v9, :cond_7

    if-ne v1, v12, :cond_4

    const-wide/16 v15, 0x0

    .line 1148
    :goto_2
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v1, v15, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1149
    :goto_3
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    .line 1150
    iget-wide v10, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v10, v6

    add-long/2addr v10, v15

    add-long/2addr v4, v6

    .line 1152
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v21, v6

    add-long v6, v10, v13

    .line 1153
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1154
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v6, v4

    const-wide/16 v19, 0x2

    add-long v13, v10, v19

    invoke-virtual {v2, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1155
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    mul-long v6, v6, v19

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x1

    add-long v6, v21, v3

    move-wide v13, v3

    const-wide/16 v10, 0x2

    goto :goto_3

    .line 1157
    :cond_2
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v8, v3, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1158
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-virtual {v1, v8, v3, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1159
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    invoke-virtual {v1, v8, v3, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1160
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    invoke-virtual {v1, v8, v3, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v3, 0x0

    .line 1161
    :goto_4
    iget-wide v5, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 1162
    iget-wide v9, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v9, v3

    add-long/2addr v9, v15

    add-long/2addr v5, v3

    .line 1164
    invoke-virtual {v8, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1165
    invoke-virtual {v8, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x2

    add-long v13, v9, v11

    .line 1166
    iget-wide v11, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v11, v5

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1167
    iget-wide v11, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v13, 0x2

    mul-long/2addr v11, v13

    add-long/2addr v5, v11

    invoke-virtual {v8, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_4

    :cond_3
    const-wide/16 v3, 0x4

    add-long/2addr v15, v3

    const-wide/16 v10, 0x2

    const-wide/16 v13, 0x1

    goto/16 :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    .line 1171
    :goto_5
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1172
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v1, v6, v9

    if-gez v1, :cond_5

    .line 1173
    iget-wide v11, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v11, v6

    add-long/2addr v11, v4

    add-long/2addr v9, v6

    .line 1175
    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v15, v4

    const-wide/16 v13, 0x1

    add-long v4, v11, v13

    .line 1176
    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1177
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v4, v9

    move-wide/from16 v21, v6

    const-wide/16 v13, 0x2

    add-long v6, v11, v13

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1178
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    mul-long/2addr v4, v13

    add-long/2addr v9, v4

    const-wide/16 v4, 0x3

    add-long/2addr v11, v4

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x1

    add-long v6, v21, v4

    move-wide v4, v15

    goto :goto_6

    :cond_5
    move-wide v15, v4

    .line 1180
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1181
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1182
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1183
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1184
    :goto_7
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 1185
    iget-wide v9, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v9, v4

    add-long/2addr v9, v15

    add-long/2addr v6, v4

    .line 1187
    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1188
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v13, 0x2

    add-long v11, v9, v13

    .line 1189
    iget-wide v13, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v13, v6

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v11, v12, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1190
    iget-wide v13, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v17, 0x2

    mul-long v13, v13, v17

    add-long/2addr v6, v13

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_7

    :cond_6
    const-wide/16 v4, 0x4

    const-wide/16 v11, 0x3

    const-wide/16 v17, 0x2

    add-long v6, v15, v4

    move-wide v4, v6

    goto/16 :goto_5

    :cond_7
    move-wide/from16 v17, v10

    cmp-long v4, v4, v17

    if-nez v4, :cond_a

    const-wide/16 v4, 0x0

    .line 1195
    :goto_8
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_8

    .line 1196
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v6, v4

    .line 1197
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v8, v4, v5, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1198
    iget-wide v9, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v9, v4

    const-wide/16 v13, 0x1

    add-long/2addr v6, v13

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v8, v9, v10, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v4, v13

    goto :goto_8

    :cond_8
    if-ne v1, v12, :cond_9

    .line 1201
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1202
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_9

    :cond_9
    const-wide/16 v4, 0x0

    .line 1204
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1205
    iget-object v1, v0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :goto_9
    move-wide v6, v4

    .line 1207
    :goto_a
    iget-wide v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v1, v6, v3

    if-gez v1, :cond_a

    .line 1208
    iget-wide v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v3, v6

    .line 1209
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 1210
    iget-wide v11, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    add-long/2addr v11, v6

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v9

    goto :goto_a

    :cond_a
    return-void
.end method

.method private ddxt2d_sub(I[FZ)V
    .locals 9

    .line 1060
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1061
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1066
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1069
    :goto_1
    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge p1, p3, :cond_a

    move p3, v4

    .line 1070
    :goto_2
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge p3, v1, :cond_2

    .line 1071
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v3, p3

    add-int/2addr v3, p1

    add-int v5, v1, p3

    .line 1073
    aget v6, p2, v3

    aput v6, v0, p3

    add-int/lit8 v6, v3, 0x1

    .line 1074
    aget v6, p2, v6

    aput v6, v0, v5

    add-int v6, v5, v1

    add-int/lit8 v7, v3, 0x2

    .line 1075
    aget v7, p2, v7

    aput v7, v0, v6

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/lit8 v3, v3, 0x3

    .line 1076
    aget v1, p2, v3

    aput v1, v0, v5

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 1078
    :cond_2
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p3, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1079
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1080
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1081
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move p3, v4

    .line 1082
    :goto_3
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge p3, v1, :cond_3

    .line 1083
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v3, p3

    add-int/2addr v3, p1

    add-int v5, v1, p3

    .line 1085
    aget v6, v0, p3

    aput v6, p2, v3

    add-int/lit8 v6, v3, 0x1

    .line 1086
    aget v7, v0, v5

    aput v7, p2, v6

    add-int/lit8 v6, v3, 0x2

    add-int v7, v5, v1

    .line 1087
    aget v7, v0, v7

    aput v7, p2, v6

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    .line 1088
    aget v1, v0, v5

    aput v1, p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1092
    :goto_4
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1093
    :goto_5
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v1, v3, :cond_5

    .line 1094
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1096
    aget v7, p2, v5

    aput v7, v0, v1

    add-int/lit8 v7, v5, 0x1

    .line 1097
    aget v7, p2, v7

    aput v7, v0, v6

    add-int v7, v6, v3

    add-int/lit8 v8, v5, 0x2

    .line 1098
    aget v8, p2, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x3

    .line 1099
    aget v3, p2, v5

    aput v3, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1101
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1102
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1103
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1104
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v1, v4

    .line 1105
    :goto_6
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v1, v3, :cond_6

    .line 1106
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1108
    aget v7, v0, v1

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    .line 1109
    aget v8, v0, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    add-int v8, v6, v3

    .line 1110
    aget v8, v0, v8

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 1111
    aget v3, v0, v6

    aput v3, p2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x4

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_a

    move v1, v4

    .line 1116
    :goto_7
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v1, v2, :cond_8

    .line 1117
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v5, v1

    .line 1118
    aget v6, p2, v5

    aput v6, v0, v1

    add-int/2addr v2, v1

    add-int/lit8 v5, v5, 0x1

    .line 1119
    aget v5, p2, v5

    aput v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1122
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p1, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1123
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p1, v0, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    goto :goto_8

    .line 1125
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1126
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1128
    :goto_8
    iget p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v4, p1, :cond_a

    .line 1129
    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr p3, v4

    .line 1130
    aget v1, v0, v4

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p1, v4

    .line 1131
    aget p1, v0, p1

    aput p1, p2, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private ddxt2d_sub(I[[FZ)V
    .locals 9

    .line 1218
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1219
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1224
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1227
    :goto_1
    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge p1, p3, :cond_a

    move p3, v4

    .line 1228
    :goto_2
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge p3, v1, :cond_2

    add-int v3, v1, p3

    .line 1230
    aget-object v5, p2, p3

    aget v6, v5, p1

    aput v6, v0, p3

    add-int/lit8 v6, p1, 0x1

    .line 1231
    aget v6, v5, v6

    aput v6, v0, v3

    add-int v6, v3, v1

    add-int/lit8 v7, p1, 0x2

    .line 1232
    aget v7, v5, v7

    aput v7, v0, v6

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, p1, 0x3

    .line 1233
    aget v1, v5, v1

    aput v1, v0, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 1235
    :cond_2
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p3, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1236
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1237
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1238
    iget-object p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move p3, v4

    .line 1239
    :goto_3
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge p3, v1, :cond_3

    add-int v3, v1, p3

    .line 1241
    aget-object v5, p2, p3

    aget v6, v0, p3

    aput v6, v5, p1

    add-int/lit8 v6, p1, 0x1

    .line 1242
    aget v7, v0, v3

    aput v7, v5, v6

    add-int/lit8 v6, p1, 0x2

    add-int v7, v3, v1

    .line 1243
    aget v7, v0, v7

    aput v7, v5, v6

    add-int/lit8 v6, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    .line 1244
    aget v1, v0, v3

    aput v1, v5, v6

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1248
    :goto_4
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1249
    :goto_5
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v1, v3, :cond_5

    add-int v5, v3, v1

    .line 1251
    aget-object v6, p2, v1

    aget v7, v6, p1

    aput v7, v0, v1

    add-int/lit8 v7, p1, 0x1

    .line 1252
    aget v7, v6, v7

    aput v7, v0, v5

    add-int v7, v5, v3

    add-int/lit8 v8, p1, 0x2

    .line 1253
    aget v8, v6, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x3

    .line 1254
    aget v3, v6, v3

    aput v3, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1256
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1257
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1258
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1259
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v1, v4

    .line 1260
    :goto_6
    iget v3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v1, v3, :cond_6

    add-int v5, v3, v1

    .line 1262
    aget-object v6, p2, v1

    aget v7, v0, v1

    aput v7, v6, p1

    add-int/lit8 v7, p1, 0x1

    .line 1263
    aget v8, v0, v5

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x2

    add-int v8, v5, v3

    .line 1264
    aget v8, v0, v8

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 1265
    aget v3, v0, v5

    aput v3, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x4

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_a

    move v1, v4

    .line 1270
    :goto_7
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    const/4 v5, 0x1

    if-ge v1, v2, :cond_8

    .line 1271
    aget-object v6, p2, v1

    aget v7, v6, v4

    aput v7, v0, v1

    add-int/2addr v2, v1

    .line 1272
    aget v5, v6, v5

    aput v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1275
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p1, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1276
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p1, v0, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    goto :goto_8

    .line 1278
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1279
    iget-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    :goto_8
    move p1, v4

    .line 1281
    :goto_9
    iget p3, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge p1, p3, :cond_a

    .line 1282
    aget-object v1, p2, p1

    aget v2, v0, p1

    aput v2, v1, v4

    add-int/2addr p3, p1

    .line 1283
    aget p3, v0, p3

    aput p3, v1, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_a
    return-void
.end method

.method private ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 759
    const-class v12, Lorg/jtransforms/dht/FloatDHT_2D;

    iget-wide v0, v11, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x4

    .line 760
    iget-wide v3, v11, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    mul-long/2addr v3, v1

    .line 761
    iget-wide v1, v11, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    shr-long/2addr v3, v1

    goto :goto_1

    :cond_0
    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v13, v3

    .line 768
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 772
    new-instance v16, Lorg/jtransforms/dht/FloatDHT_2D$14;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dht/FloatDHT_2D$14;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;JIJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 851
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 855
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 853
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private ddxt2d_subth(I[FZ)V
    .locals 15

    move-object v9, p0

    .line 657
    const-class v10, Lorg/jtransforms/dht/FloatDHT_2D;

    iget v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 658
    iget v1, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 659
    iget v2, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x2

    :cond_1
    :goto_0
    move v11, v1

    .line 666
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 670
    new-instance v14, Lorg/jtransforms/dht/FloatDHT_2D$13;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/FloatDHT_2D$13;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;IIII[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 749
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 753
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 751
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d_subth(I[[FZ)V
    .locals 15

    move-object v9, p0

    .line 861
    const-class v10, Lorg/jtransforms/dht/FloatDHT_2D;

    iget v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 862
    iget v1, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 863
    iget v2, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x2

    :cond_1
    :goto_0
    move v11, v1

    .line 870
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 874
    new-instance v14, Lorg/jtransforms/dht/FloatDHT_2D$15;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/FloatDHT_2D$15;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;IIII[[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 947
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 951
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 949
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private yTransform(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v4, 0x0

    .line 1315
    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    const-wide/16 v8, 0x2

    div-long v10, v6, v8

    cmp-long v10, v4, v10

    if-gtz v10, :cond_1

    sub-long v10, v6, v4

    .line 1316
    rem-long/2addr v10, v6

    .line 1317
    iget-wide v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long v12, v4, v6

    mul-long/2addr v10, v6

    const-wide/16 v6, 0x0

    .line 1319
    :goto_1
    iget-wide v14, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    div-long v16, v14, v8

    cmp-long v16, v6, v16

    const-wide/16 v17, 0x1

    if-gtz v16, :cond_0

    sub-long v19, v14, v6

    .line 1320
    rem-long v19, v19, v14

    add-long v14, v12, v6

    .line 1321
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v16

    add-long v2, v10, v6

    .line 1322
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v21

    add-long v8, v12, v19

    .line 1323
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v22

    move-wide/from16 v23, v12

    add-long v12, v10, v19

    .line 1324
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v19

    add-float v20, v16, v19

    add-float v25, v21, v22

    sub-float v20, v20, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v20, v20, v25

    sub-float v0, v16, v20

    .line 1326
    invoke-virtual {v1, v14, v15, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v21, v20

    .line 1327
    invoke-virtual {v1, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-float v0, v22, v20

    .line 1328
    invoke-virtual {v1, v8, v9, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-float v0, v19, v20

    .line 1329
    invoke-virtual {v1, v12, v13, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v6, v6, v17

    const-wide/16 v8, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v12, v23

    goto :goto_1

    :cond_0
    add-long v4, v4, v17

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private yTransform([F)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 1292
    :goto_0
    iget v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    div-int/lit8 v4, v3, 0x2

    if-gt v2, v4, :cond_1

    sub-int v4, v3, v2

    .line 1293
    rem-int/2addr v4, v3

    .line 1294
    iget v3, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int v5, v2, v3

    mul-int/2addr v4, v3

    move v3, v1

    .line 1296
    :goto_1
    iget v6, v0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/lit8 v7, v6, 0x2

    if-gt v3, v7, :cond_0

    sub-int v7, v6, v3

    .line 1297
    rem-int/2addr v7, v6

    add-int v6, v5, v3

    .line 1298
    aget v8, p1, v6

    add-int v9, v4, v3

    .line 1299
    aget v10, p1, v9

    add-int v11, v5, v7

    .line 1300
    aget v12, p1, v11

    add-int/2addr v7, v4

    .line 1301
    aget v13, p1, v7

    add-float v14, v8, v13

    add-float v15, v10, v12

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v8, v14

    .line 1303
    aput v8, p1, v6

    add-float/2addr v10, v14

    .line 1304
    aput v10, p1, v9

    add-float/2addr v12, v14

    .line 1305
    aput v12, p1, v11

    sub-float/2addr v13, v14

    .line 1306
    aput v13, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private yTransform([[F)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 1338
    :goto_0
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    div-int/lit8 v3, v2, 0x2

    if-gt v1, v3, :cond_1

    sub-int v3, v2, v1

    .line 1339
    rem-int/2addr v3, v2

    move v2, v0

    .line 1340
    :goto_1
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/lit8 v5, v4, 0x2

    if-gt v2, v5, :cond_0

    sub-int v5, v4, v2

    .line 1341
    rem-int/2addr v5, v4

    .line 1342
    aget-object v4, p1, v1

    aget v6, v4, v2

    .line 1343
    aget-object v7, p1, v3

    aget v8, v7, v2

    .line 1344
    aget v9, v4, v5

    .line 1345
    aget v10, v7, v5

    add-float v11, v6, v10

    add-float v12, v8, v9

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v6, v11

    .line 1347
    aput v6, v4, v2

    add-float/2addr v8, v11

    .line 1348
    aput v8, v7, v2

    add-float/2addr v9, v11

    .line 1349
    aput v9, v4, v5

    sub-float/2addr v10, v11

    .line 1350
    aput v10, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 196
    const-class v10, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 197
    iget-boolean v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-le v11, v5, :cond_0

    .line 198
    iget-boolean v6, v8, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v6, :cond_0

    .line 199
    invoke-direct {v8, v0, v9, v5}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 200
    invoke-direct {v8, v0, v9, v5}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_1

    .line 202
    :cond_0
    invoke-direct {v8, v0, v9, v5}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 203
    :goto_0
    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 204
    iget-object v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v9, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long/2addr v3, v1

    goto :goto_0

    .line 207
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto/16 :goto_c

    :cond_2
    const/4 v12, 0x0

    if-le v11, v5, :cond_7

    .line 209
    iget-boolean v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v0, :cond_7

    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    int-to-long v13, v11

    cmp-long v0, v5, v13

    if-ltz v0, :cond_7

    iget-wide v3, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v0, v3, v13

    if-ltz v0, :cond_7

    .line 210
    new-array v15, v11, [Ljava/util/concurrent/Future;

    .line 211
    div-long v16, v5, v13

    move v0, v12

    :goto_2
    if-ge v0, v11, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_3

    .line 214
    iget-wide v1, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    goto :goto_3

    :cond_3
    add-long v1, v3, v16

    :goto_3
    move-wide v5, v1

    .line 215
    new-instance v18, Lorg/jtransforms/dht/FloatDHT_2D$3;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/FloatDHT_2D$3;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 226
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 230
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 228
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :goto_4
    iget-wide v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    div-long v13, v0, v13

    :goto_5
    if-ge v12, v11, :cond_6

    int-to-long v0, v12

    mul-long v3, v0, v13

    add-int/lit8 v0, v11, -0x1

    if-ne v12, v0, :cond_5

    .line 235
    iget-wide v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    goto :goto_6

    :cond_5
    add-long v0, v3, v13

    :goto_6
    move-wide v5, v0

    .line 236
    new-instance v0, Lorg/jtransforms/dht/FloatDHT_2D$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v17, v11

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/FloatDHT_2D$4;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object v7, v11

    move/from16 v11, v17

    goto :goto_5

    :cond_6
    move-object v11, v7

    .line 254
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 258
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 256
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    const-wide/16 v3, 0x0

    .line 262
    :goto_7
    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 263
    iget-object v0, v8, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v9, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long/2addr v3, v1

    goto :goto_7

    .line 265
    :cond_8
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 266
    :goto_8
    iget-wide v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_b

    const-wide/16 v5, 0x0

    .line 267
    :goto_9
    iget-wide v10, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v7, v5, v10

    if-gez v7, :cond_9

    .line 268
    iget-wide v10, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v10, v5

    add-long/2addr v10, v3

    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_9

    .line 270
    :cond_9
    iget-object v5, v8, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v5, 0x0

    .line 271
    :goto_a
    iget-wide v10, v8, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v7, v5, v10

    if-gez v7, :cond_a

    .line 272
    iget-wide v10, v8, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v10, v5

    add-long/2addr v10, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v9, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_a

    :cond_a
    add-long/2addr v3, v1

    goto :goto_8

    .line 276
    :cond_b
    :goto_b
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_c
    return-void
.end method

.method public forward([F)V
    .locals 9

    .line 104
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 105
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 106
    iget-boolean v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(I[FZ)V

    .line 108
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(I[FZ)V

    goto :goto_1

    .line 110
    :cond_0
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(I[FZ)V

    .line 111
    :goto_0
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([F)V

    goto/16 :goto_c

    :cond_2
    if-le v1, v4, :cond_7

    .line 117
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-lt v4, v1, :cond_7

    .line 118
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 119
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_3

    .line 122
    iget v7, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v7, v6, v2

    .line 123
    :goto_3
    new-instance v8, Lorg/jtransforms/dht/FloatDHT_2D$1;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/FloatDHT_2D$1;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 134
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_5

    .line 143
    iget v7, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v7, v6, v5

    .line 144
    :goto_6
    new-instance v8, Lorg/jtransforms/dht/FloatDHT_2D$2;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/FloatDHT_2D$2;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 162
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_b

    :catch_2
    move-exception v1

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 170
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 171
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 173
    :cond_8
    new-array v0, v1, [F

    move v1, v3

    .line 174
    :goto_8
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge v1, v2, :cond_b

    move v2, v3

    .line 175
    :goto_9
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 176
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v4, p1, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 178
    :cond_9
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v2, v0}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    move v2, v3

    .line 179
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_a

    .line 180
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v5, v0, v2

    aput v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 184
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([F)V

    :goto_c
    return-void
.end method

.method public forward([[F)V
    .locals 9

    .line 288
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 289
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 290
    iget-boolean v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(I[[FZ)V

    .line 292
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(I[[FZ)V

    goto :goto_1

    .line 294
    :cond_0
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(I[[FZ)V

    .line 295
    :goto_0
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([[F)V

    goto/16 :goto_c

    :cond_2
    if-le v1, v4, :cond_7

    .line 301
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-lt v4, v1, :cond_7

    .line 302
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 303
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_3

    .line 306
    iget v7, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v7, v6, v2

    .line 307
    :goto_3
    new-instance v8, Lorg/jtransforms/dht/FloatDHT_2D$5;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/FloatDHT_2D$5;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 318
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 322
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 320
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_5

    .line 328
    iget v7, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v7, v6, v5

    .line 329
    :goto_6
    new-instance v8, Lorg/jtransforms/dht/FloatDHT_2D$6;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/FloatDHT_2D$6;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 347
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_b

    :catch_2
    move-exception v1

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v1

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 355
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 356
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 358
    :cond_8
    new-array v0, v1, [F

    move v1, v3

    .line 359
    :goto_8
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge v1, v2, :cond_b

    move v2, v3

    .line 360
    :goto_9
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 361
    aget-object v4, p1, v2

    aget v4, v4, v1

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 363
    :cond_9
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v2, v0}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([F)V

    move v2, v3

    .line 364
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_a

    .line 365
    aget-object v4, p1, v2

    aget v5, v0, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 369
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([[F)V

    :goto_c
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 476
    const-class v12, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 477
    iget-boolean v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-le v13, v5, :cond_0

    .line 478
    iget-boolean v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 480
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_1

    .line 482
    :cond_0
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 483
    :goto_0
    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 484
    iget-object v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_0

    .line 487
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto/16 :goto_c

    :cond_2
    const/4 v14, 0x0

    if-le v13, v5, :cond_7

    .line 489
    iget-boolean v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v0, :cond_7

    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    int-to-long v7, v13

    cmp-long v0, v5, v7

    if-ltz v0, :cond_7

    iget-wide v3, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_7

    .line 490
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 491
    div-long v16, v5, v7

    move v0, v14

    :goto_2
    if-ge v0, v13, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 494
    iget-wide v1, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    goto :goto_3

    :cond_3
    add-long v1, v3, v16

    :goto_3
    move-wide v5, v1

    .line 495
    new-instance v18, Lorg/jtransforms/dht/FloatDHT_2D$9;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/FloatDHT_2D$9;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_2

    :cond_4
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 506
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 510
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 508
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    :goto_4
    iget-wide v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    div-long v16, v0, v19

    :goto_5
    if-ge v14, v13, :cond_6

    int-to-long v0, v14

    mul-long v3, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_5

    .line 516
    iget-wide v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    goto :goto_6

    :cond_5
    add-long v0, v3, v16

    :goto_6
    move-wide v5, v0

    .line 517
    new-instance v0, Lorg/jtransforms/dht/FloatDHT_2D$10;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v18, v13

    move-object v13, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/FloatDHT_2D$10;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object v8, v13

    move/from16 v13, v18

    goto :goto_5

    :cond_6
    move-object v13, v8

    .line 535
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 539
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 537
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    const-wide/16 v3, 0x0

    .line 543
    :goto_7
    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 544
    iget-object v0, v9, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_7

    .line 546
    :cond_8
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 547
    :goto_8
    iget-wide v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_b

    const-wide/16 v5, 0x0

    .line 548
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_9

    .line 549
    iget-wide v7, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_9

    .line 551
    :cond_9
    iget-object v5, v9, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v5, v0, v11}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v5, 0x0

    .line 552
    :goto_a
    iget-wide v7, v9, Lorg/jtransforms/dht/FloatDHT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_a

    .line 553
    iget-wide v7, v9, Lorg/jtransforms/dht/FloatDHT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v10, v7, v8, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_a

    :cond_a
    add-long/2addr v3, v1

    goto :goto_8

    .line 557
    :cond_b
    :goto_b
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_c
    return-void
.end method

.method public inverse([FZ)V
    .locals 13

    .line 382
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 383
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-le v1, v4, :cond_0

    .line 384
    iget-boolean v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(I[FZ)V

    .line 386
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(I[FZ)V

    goto :goto_1

    .line 388
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(I[FZ)V

    .line 389
    :goto_0
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([F)V

    goto/16 :goto_c

    :cond_2
    if-le v1, v4, :cond_7

    .line 395
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-lt v4, v1, :cond_7

    .line 396
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 397
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_3

    .line 400
    iget v6, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v6, v8, v2

    :goto_3
    move v9, v6

    .line 401
    new-instance v12, Lorg/jtransforms/dht/FloatDHT_2D$7;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dht/FloatDHT_2D$7;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 412
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 416
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 414
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_5

    .line 422
    iget v6, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v6, v8, v5

    :goto_6
    move v9, v6

    .line 423
    new-instance v12, Lorg/jtransforms/dht/FloatDHT_2D$8;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dht/FloatDHT_2D$8;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 441
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_b

    :catch_2
    move-exception p2

    .line 445
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p2

    .line 443
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 449
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 450
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 452
    :cond_8
    new-array v0, v1, [F

    move v1, v3

    .line 453
    :goto_8
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge v1, v2, :cond_b

    move v2, v3

    .line 454
    :goto_9
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 455
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v4, p1, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 457
    :cond_9
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    move v2, v3

    .line 458
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_a

    .line 459
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v5, v0, v2

    aput v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 463
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([F)V

    :goto_c
    return-void
.end method

.method public inverse([[FZ)V
    .locals 13

    .line 570
    const-class v0, Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 571
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-le v1, v4, :cond_0

    .line 572
    iget-boolean v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(I[[FZ)V

    .line 574
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(I[[FZ)V

    goto :goto_1

    .line 576
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_sub(I[[FZ)V

    .line 577
    :goto_0
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 578
    iget-object v0, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([[F)V

    goto/16 :goto_c

    :cond_2
    if-le v1, v4, :cond_7

    .line 583
    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-lt v4, v1, :cond_7

    .line 584
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 585
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_3

    .line 588
    iget v6, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v6, v8, v2

    :goto_3
    move v9, v6

    .line 589
    new-instance v12, Lorg/jtransforms/dht/FloatDHT_2D$11;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dht/FloatDHT_2D$11;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 600
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 604
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 602
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_5

    .line 610
    iget v6, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v6, v8, v5

    :goto_6
    move v9, v6

    .line 611
    new-instance v12, Lorg/jtransforms/dht/FloatDHT_2D$12;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dht/FloatDHT_2D$12;-><init>(Lorg/jtransforms/dht/FloatDHT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 629
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_b

    :catch_2
    move-exception p2

    .line 633
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p2

    .line 631
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 637
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 638
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtColumns:Lorg/jtransforms/dht/FloatDHT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 640
    :cond_8
    new-array v0, v1, [F

    move v1, v3

    .line 641
    :goto_8
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->columns:I

    if-ge v1, v2, :cond_b

    move v2, v3

    .line 642
    :goto_9
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 643
    aget-object v4, p1, v2

    aget v4, v4, v1

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 645
    :cond_9
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D;->dhtRows:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    move v2, v3

    .line 646
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/FloatDHT_2D;->rows:I

    if-ge v2, v4, :cond_a

    .line 647
    aget-object v4, p1, v2

    aget v5, v0, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 651
    :cond_b
    :goto_b
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/FloatDHT_2D;->yTransform([[F)V

    :goto_c
    return-void
.end method
