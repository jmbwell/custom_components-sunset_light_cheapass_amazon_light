.class public Lorg/jtransforms/dst/DoubleDST_2D;
.super Ljava/lang/Object;
.source "DoubleDST_2D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

.field private dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

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
    iput-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    .line 64
    iput-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    long-to-int v1, p1

    .line 77
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    long-to-int v1, p3

    .line 78
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    .line 79
    iput-wide p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    .line 80
    iput-wide p3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long v1, p1, p3

    .line 81
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 82
    iput-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    .line 84
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iput-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

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
    new-instance v0, Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 90
    iput-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-direct {p1, p3, p4}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    :goto_0
    return-void

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dst/DoubleDST_2D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dst/DoubleDST_2D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/jtransforms/dst/DoubleDST_2D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    return-wide v0
.end method

.method private ddxt2d0_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 14

    .line 960
    const-class v1, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    move-object v12, p0

    iget-wide v4, v12, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v4, v0

    :goto_0
    long-to-int v0, v4

    .line 962
    new-array v2, v0, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    int-to-long v7, v3

    .line 966
    new-instance v13, Lorg/jtransforms/dst/DoubleDST_2D$17;

    move-object v4, v13

    move-object v5, p0

    move v6, p1

    move v9, v0

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$17;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;IJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 984
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 988
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

    .line 986
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d0_subth(I[DZ)V
    .locals 12

    .line 926
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 928
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 932
    new-instance v11, Lorg/jtransforms/dst/DoubleDST_2D$16;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dst/DoubleDST_2D$16;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;III[DZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 950
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 954
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 952
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d0_subth(I[[DZ)V
    .locals 12

    .line 994
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 996
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 1000
    new-instance v11, Lorg/jtransforms/dst/DoubleDST_2D$18;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dst/DoubleDST_2D$18;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;III[[DZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1018
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1108
    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    .line 1109
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

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

    .line 1114
    :cond_1
    :goto_1
    new-instance v8, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 1115
    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v9, v4, v10

    const/4 v12, -0x1

    const-wide/16 v13, 0x1

    if-lez v9, :cond_7

    if-ne v1, v12, :cond_4

    const-wide/16 v15, 0x0

    .line 1117
    :goto_2
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v1, v15, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1118
    :goto_3
    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    .line 1119
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v10, v6

    add-long/2addr v10, v15

    add-long/2addr v4, v6

    .line 1121
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v8, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v10, v13

    .line 1122
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v8, v4, v5, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-object/from16 v0, p0

    .line 1123
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v13, v4

    move-wide/from16 v21, v6

    const-wide/16 v19, 0x2

    add-long v6, v10, v19

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v13, v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1124
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    mul-long v6, v6, v19

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x1

    add-long v6, v21, v4

    move-wide v13, v4

    const-wide/16 v10, 0x2

    goto :goto_3

    .line 1126
    :cond_2
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1127
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1128
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1129
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1130
    :goto_4
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 1131
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v9, v4

    add-long/2addr v9, v15

    add-long/2addr v6, v4

    .line 1133
    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1134
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x2

    add-long v13, v9, v11

    .line 1135
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v11, v6

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1136
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v13, 0x2

    mul-long/2addr v11, v13

    add-long/2addr v6, v11

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v9, v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_4

    :cond_3
    const-wide/16 v4, 0x4

    add-long/2addr v15, v4

    const-wide/16 v10, 0x2

    const-wide/16 v13, 0x1

    goto/16 :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    .line 1140
    :goto_5
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1141
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v1, v6, v9

    if-gez v1, :cond_5

    .line 1142
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v11, v6

    add-long/2addr v11, v4

    add-long/2addr v9, v6

    .line 1144
    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v8, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide v15, v4

    const-wide/16 v13, 0x1

    add-long v4, v11, v13

    .line 1145
    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1146
    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v4, v9

    move-wide/from16 v21, v6

    const-wide/16 v13, 0x2

    add-long v6, v11, v13

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1147
    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    mul-long/2addr v4, v13

    add-long/2addr v9, v4

    const-wide/16 v4, 0x3

    add-long/2addr v11, v4

    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x1

    add-long v6, v21, v4

    move-wide v4, v15

    goto :goto_6

    :cond_5
    move-wide v15, v4

    .line 1149
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1150
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1151
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1152
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1153
    :goto_7
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 1154
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v9, v4

    add-long/2addr v9, v15

    add-long/2addr v6, v4

    .line 1156
    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1157
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v13, 0x2

    add-long v11, v9, v13

    .line 1158
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v13, v6

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v2, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1159
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    const-wide/16 v17, 0x2

    mul-long v13, v13, v17

    add-long/2addr v6, v13

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v9, v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 1164
    :goto_8
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_8

    .line 1165
    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v6, v4

    .line 1166
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v4, v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1167
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v9, v4

    const-wide/16 v13, 0x1

    add-long/2addr v6, v13

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v9, v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v13

    goto :goto_8

    :cond_8
    if-ne v1, v12, :cond_9

    .line 1170
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1171
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_9

    :cond_9
    const-wide/16 v4, 0x0

    .line 1173
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1174
    iget-object v1, v0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v6, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :goto_9
    move-wide v6, v4

    .line 1176
    :goto_a
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v1, v6, v3

    if-gez v1, :cond_a

    .line 1177
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v3, v6

    .line 1178
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v2, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 1179
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    add-long/2addr v11, v6

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v2, v3, v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v9

    goto :goto_a

    :cond_a
    return-void
.end method

.method private ddxt2d_sub(I[DZ)V
    .locals 10

    .line 1029
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1030
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1035
    :cond_1
    :goto_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1038
    :goto_1
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1039
    :goto_2
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_2

    .line 1040
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1042
    aget-wide v7, p2, v5

    aput-wide v7, v0, v1

    add-int/lit8 v7, v5, 0x1

    .line 1043
    aget-wide v7, p2, v7

    aput-wide v7, v0, v6

    add-int v7, v6, v3

    add-int/lit8 v8, v5, 0x2

    .line 1044
    aget-wide v8, p2, v8

    aput-wide v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x3

    .line 1045
    aget-wide v7, p2, v5

    aput-wide v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1047
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1048
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1049
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1050
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v1, v4

    .line 1051
    :goto_3
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_3

    .line 1052
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1054
    aget-wide v7, v0, v1

    aput-wide v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    .line 1055
    aget-wide v8, v0, v6

    aput-wide v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    add-int v8, v6, v3

    .line 1056
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 1057
    aget-wide v6, v0, v6

    aput-wide v6, p2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1061
    :goto_4
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1062
    :goto_5
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_5

    .line 1063
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1065
    aget-wide v7, p2, v5

    aput-wide v7, v0, v1

    add-int/lit8 v7, v5, 0x1

    .line 1066
    aget-wide v7, p2, v7

    aput-wide v7, v0, v6

    add-int v7, v6, v3

    add-int/lit8 v8, v5, 0x2

    .line 1067
    aget-wide v8, p2, v8

    aput-wide v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x3

    .line 1068
    aget-wide v7, p2, v5

    aput-wide v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1070
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1071
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1072
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1073
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v1, v4

    .line 1074
    :goto_6
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_6

    .line 1075
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1077
    aget-wide v7, v0, v1

    aput-wide v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    .line 1078
    aget-wide v8, v0, v6

    aput-wide v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    add-int v8, v6, v3

    .line 1079
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 1080
    aget-wide v6, v0, v6

    aput-wide v6, p2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x4

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_a

    move v1, v4

    .line 1085
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v2, :cond_8

    .line 1086
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v5, v1

    .line 1087
    aget-wide v6, p2, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    add-int/lit8 v5, v5, 0x1

    .line 1088
    aget-wide v5, p2, v5

    aput-wide v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1091
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1092
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    goto :goto_8

    .line 1094
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1095
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1097
    :goto_8
    iget p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v4, p1, :cond_a

    .line 1098
    iget p3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr p3, v4

    .line 1099
    aget-wide v1, v0, v4

    aput-wide v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p1, v4

    .line 1100
    aget-wide v1, v0, p1

    aput-wide v1, p2, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private ddxt2d_sub(I[[DZ)V
    .locals 10

    .line 1187
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1188
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1193
    :cond_1
    :goto_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1196
    :goto_1
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1197
    :goto_2
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_2

    add-int v5, v3, v1

    .line 1199
    aget-object v6, p2, v1

    aget-wide v7, v6, p1

    aput-wide v7, v0, v1

    add-int/lit8 v7, p1, 0x1

    .line 1200
    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    add-int v7, v5, v3

    add-int/lit8 v8, p1, 0x2

    .line 1201
    aget-wide v8, v6, v8

    aput-wide v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x3

    .line 1202
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1204
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1205
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1206
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1207
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v1, v4

    .line 1208
    :goto_3
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_3

    add-int v5, v3, v1

    .line 1210
    aget-object v6, p2, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, p1

    add-int/lit8 v7, p1, 0x1

    .line 1211
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v7, p1, 0x2

    add-int v8, v5, v3

    .line 1212
    aget-wide v8, v0, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 1213
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1217
    :goto_4
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1218
    :goto_5
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_5

    add-int v5, v3, v1

    .line 1220
    aget-object v6, p2, v1

    aget-wide v7, v6, p1

    aput-wide v7, v0, v1

    add-int/lit8 v7, p1, 0x1

    .line 1221
    aget-wide v7, v6, v7

    aput-wide v7, v0, v5

    add-int v7, v5, v3

    add-int/lit8 v8, p1, 0x2

    .line 1222
    aget-wide v8, v6, v8

    aput-wide v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x3

    .line 1223
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1225
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1226
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1227
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1228
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v1, v4

    .line 1229
    :goto_6
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v1, v3, :cond_6

    add-int v5, v3, v1

    .line 1231
    aget-object v6, p2, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, p1

    add-int/lit8 v7, p1, 0x1

    .line 1232
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v7, p1, 0x2

    add-int v8, v5, v3

    .line 1233
    aget-wide v8, v0, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 1234
    aget-wide v8, v0, v5

    aput-wide v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x4

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_a

    move v1, v4

    .line 1239
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    const/4 v5, 0x1

    if-ge v1, v2, :cond_8

    .line 1240
    aget-object v6, p2, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v2, v1

    .line 1241
    aget-wide v5, v6, v5

    aput-wide v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1244
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1245
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    goto :goto_8

    .line 1247
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1248
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    :goto_8
    move p1, v4

    .line 1250
    :goto_9
    iget p3, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge p1, p3, :cond_a

    .line 1251
    aget-object v1, p2, p1

    aget-wide v2, v0, p1

    aput-wide v2, v1, v4

    add-int/2addr p3, p1

    .line 1252
    aget-wide v2, v0, p3

    aput-wide v2, v1, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_a
    return-void
.end method

.method private ddxt2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 728
    const-class v12, Lorg/jtransforms/dst/DoubleDST_2D;

    iget-wide v0, v11, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x4

    .line 729
    iget-wide v3, v11, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    mul-long/2addr v3, v1

    .line 730
    iget-wide v1, v11, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

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

    .line 737
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 741
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_2D$14;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dst/DoubleDST_2D$14;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 820
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 824
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

    .line 822
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private ddxt2d_subth(I[DZ)V
    .locals 15

    move-object v9, p0

    .line 626
    const-class v10, Lorg/jtransforms/dst/DoubleDST_2D;

    iget v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 627
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 628
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

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

    .line 635
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 639
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_2D$13;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$13;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 718
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 722
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

    .line 720
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d_subth(I[[DZ)V
    .locals 15

    move-object v9, p0

    .line 830
    const-class v10, Lorg/jtransforms/dst/DoubleDST_2D;

    iget v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 831
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 832
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

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

    .line 839
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 843
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_2D$15;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$15;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;IIII[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 916
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 920
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

    .line 918
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 193
    const-class v12, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 194
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v13, v5, :cond_0

    .line 195
    iget-boolean v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v5, :cond_0

    .line 196
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 197
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_a

    .line 199
    :cond_0
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 200
    :goto_0
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 201
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    if-le v13, v5, :cond_6

    .line 204
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v0, :cond_6

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    int-to-long v7, v13

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_6

    .line 205
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 206
    div-long v16, v5, v7

    move v0, v14

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 209
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 210
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_2D$3;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$3;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 221
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 225
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 223
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_3
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    div-long v16, v0, v19

    :goto_4
    if-ge v14, v13, :cond_5

    int-to-long v0, v14

    mul-long v3, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_4

    .line 230
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    goto :goto_5

    :cond_4
    add-long v0, v3, v16

    :goto_5
    move-wide v5, v0

    .line 231
    new-instance v0, Lorg/jtransforms/dst/DoubleDST_2D$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v18, v13

    move-object v13, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$4;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object v8, v13

    move/from16 v13, v18

    goto :goto_4

    :cond_5
    move-object v13, v8

    .line 249
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 253
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 251
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    const-wide/16 v3, 0x0

    .line 256
    :goto_6
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 257
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_6

    .line 259
    :cond_7
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 260
    :goto_7
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a

    const-wide/16 v5, 0x0

    .line 261
    :goto_8
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    .line 262
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v1

    goto :goto_8

    .line 264
    :cond_8
    iget-object v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v5, 0x0

    .line 265
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_9

    .line 266
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v10, v7, v8, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v1

    goto :goto_9

    :cond_9
    add-long/2addr v3, v1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public forward([DZ)V
    .locals 13

    .line 105
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 106
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 107
    iget-boolean v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(I[DZ)V

    .line 109
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(I[DZ)V

    goto/16 :goto_a

    .line 111
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(I[DZ)V

    .line 112
    :goto_0
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 113
    iget-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 116
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 117
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 118
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 121
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 122
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$1;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$1;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 133
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :goto_3
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 142
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 143
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$2;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$2;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 161
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 165
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 168
    :goto_6
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 169
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 171
    :cond_7
    new-array v0, v1, [D

    move v1, v3

    .line 172
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 173
    :goto_8
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 174
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v4, p1, v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 176
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v2, v3

    .line 177
    :goto_9
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 178
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v5, v0, v2

    aput-wide v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public forward([[DZ)V
    .locals 13

    .line 281
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 282
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 283
    iget-boolean v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 284
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(I[[DZ)V

    .line 285
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(I[[DZ)V

    goto/16 :goto_a

    .line 287
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(I[[DZ)V

    .line 288
    :goto_0
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 289
    iget-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 292
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 293
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 294
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 297
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 298
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$5;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$5;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 309
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 313
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 311
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :goto_3
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 318
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 319
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$6;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$6;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 337
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 341
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 339
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 344
    :goto_6
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 345
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 347
    :cond_7
    new-array v0, v1, [D

    move v1, v3

    .line 348
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 349
    :goto_8
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 350
    aget-object v4, p1, v2

    aget-wide v5, v4, v1

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 352
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v2, v3

    .line 353
    :goto_9
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 354
    aget-object v4, p1, v2

    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 457
    const-class v12, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 458
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-le v13, v5, :cond_0

    .line 459
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 461
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_a

    .line 463
    :cond_0
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 464
    :goto_0
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 465
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    if-le v13, v5, :cond_6

    .line 468
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v0, :cond_6

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    int-to-long v7, v13

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_6

    .line 469
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 470
    div-long v16, v5, v7

    move v0, v14

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 473
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 474
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_2D$9;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$9;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 485
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 489
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 487
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    :goto_3
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    div-long v16, v0, v19

    :goto_4
    if-ge v14, v13, :cond_5

    int-to-long v0, v14

    mul-long v3, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_4

    .line 494
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    goto :goto_5

    :cond_4
    add-long v0, v3, v16

    :goto_5
    move-wide v5, v0

    .line 495
    new-instance v0, Lorg/jtransforms/dst/DoubleDST_2D$10;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v18, v13

    move-object v13, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_2D$10;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object v8, v13

    move/from16 v13, v18

    goto :goto_4

    :cond_5
    move-object v13, v8

    .line 513
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 517
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 515
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    const-wide/16 v3, 0x0

    .line 520
    :goto_6
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 521
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_6

    .line 523
    :cond_7
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 524
    :goto_7
    iget-wide v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a

    const-wide/16 v5, 0x0

    .line 525
    :goto_8
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    .line 526
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v1

    goto :goto_8

    .line 528
    :cond_8
    iget-object v5, v9, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v5, 0x0

    .line 529
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_9

    .line 530
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v10, v7, v8, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v1

    goto :goto_9

    :cond_9
    add-long/2addr v3, v1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse([DZ)V
    .locals 13

    .line 369
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 370
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-le v1, v4, :cond_0

    .line 371
    iget-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(I[DZ)V

    .line 373
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(I[DZ)V

    goto/16 :goto_a

    .line 375
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(I[DZ)V

    .line 376
    :goto_0
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 377
    iget-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 380
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 381
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 382
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 385
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 386
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$7;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$7;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 397
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 401
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 399
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :goto_3
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 406
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 407
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$8;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$8;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 425
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 429
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 427
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 432
    :goto_6
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 433
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 435
    :cond_7
    new-array v0, v1, [D

    move v1, v3

    .line 436
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 437
    :goto_8
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 438
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v4, p1, v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 440
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v2, v3

    .line 441
    :goto_9
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 442
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v5, v0, v2

    aput-wide v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse([[DZ)V
    .locals 13

    .line 545
    const-class v0, Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 546
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-le v1, v4, :cond_0

    .line 547
    iget-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_subth(I[[DZ)V

    .line 549
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(I[[DZ)V

    goto/16 :goto_a

    .line 551
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d_sub(I[[DZ)V

    .line 552
    :goto_0
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 553
    iget-object v0, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 556
    iget-boolean v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 557
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 558
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 561
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 562
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$11;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$11;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 573
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 577
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 575
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    :goto_3
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 582
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 583
    new-instance v12, Lorg/jtransforms/dst/DoubleDST_2D$12;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dst/DoubleDST_2D$12;-><init>(Lorg/jtransforms/dst/DoubleDST_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 601
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 605
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 603
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 608
    :goto_6
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 609
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 611
    :cond_7
    new-array v0, v1, [D

    move v1, v3

    .line 612
    :goto_7
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 613
    :goto_8
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 614
    aget-object v4, p1, v2

    aget-wide v5, v4, v1

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 616
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v2, v3

    .line 617
    :goto_9
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 618
    aget-object v4, p1, v2

    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method
