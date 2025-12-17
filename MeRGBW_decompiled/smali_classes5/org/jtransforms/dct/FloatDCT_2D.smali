.class public Lorg/jtransforms/dct/FloatDCT_2D;
.super Ljava/lang/Object;
.source "FloatDCT_2D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

.field private dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

.field private isPowerOfTwo:Z

.field private rows:I

.field private rowsl:J

.field private useThreads:Z


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    .line 65
    iput-boolean v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    long-to-int v1, p1

    .line 78
    iput v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    long-to-int v1, p3

    .line 79
    iput v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    .line 80
    iput-wide p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    .line 81
    iput-wide p3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long v1, p1, p3

    .line 82
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 83
    iput-boolean v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    .line 85
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iput-boolean v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    .line 88
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v3

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 89
    new-instance v0, Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 91
    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    goto :goto_0

    .line 93
    :cond_3
    new-instance p1, Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-direct {p1, p3, p4}, Lorg/jtransforms/dct/FloatDCT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    :goto_0
    return-void

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dct/FloatDCT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dct/FloatDCT_2D;)Lorg/jtransforms/dct/FloatDCT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jtransforms/dct/FloatDCT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dct/FloatDCT_2D;)Lorg/jtransforms/dct/FloatDCT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dct/FloatDCT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/jtransforms/dct/FloatDCT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    return-wide v0
.end method

.method private ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 12

    .line 961
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v3, v1

    :goto_0
    long-to-int v1, v3

    .line 963
    new-array v2, v1, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 967
    new-instance v4, Lorg/jtransforms/dct/FloatDCT_2D$17;

    move-object v5, v4

    move-object v6, p0

    move v7, p1

    move v8, v3

    move v9, v1

    move-object v10, p2

    move v11, p3

    invoke-direct/range {v5 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$17;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;IIILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 985
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 989
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 987
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt2d0_subth(I[FZ)V
    .locals 12

    .line 927
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 929
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 933
    new-instance v11, Lorg/jtransforms/dct/FloatDCT_2D$16;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dct/FloatDCT_2D$16;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;III[FZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 951
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 955
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 953
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

    .line 995
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    .line 997
    :goto_0
    new-array v1, v2, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v2, :cond_1

    .line 1001
    new-instance v11, Lorg/jtransforms/dct/FloatDCT_2D$18;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move v6, v10

    move v7, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/jtransforms/dct/FloatDCT_2D$18;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;III[[FZ)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1019
    :try_start_0
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1021
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

    .line 1109
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    .line 1110
    iget-wide v8, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

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

    .line 1115
    :cond_1
    :goto_1
    new-instance v8, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 1116
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v9, v4, v10

    const/4 v12, -0x1

    const-wide/16 v13, 0x1

    if-lez v9, :cond_7

    if-ne v1, v12, :cond_4

    const-wide/16 v15, 0x0

    .line 1118
    :goto_2
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v1, v15, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1119
    :goto_3
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    .line 1120
    iget-wide v10, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v10, v6

    add-long/2addr v10, v15

    add-long/2addr v4, v6

    .line 1122
    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v21, v6

    add-long v6, v10, v13

    .line 1123
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1124
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    add-long/2addr v6, v4

    const-wide/16 v19, 0x2

    add-long v13, v10, v19

    invoke-virtual {v2, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1125
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    mul-long v6, v6, v19

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x1

    add-long v6, v21, v4

    move-wide v13, v4

    const-wide/16 v10, 0x2

    goto :goto_3

    .line 1127
    :cond_2
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1128
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1129
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1130
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1131
    :goto_4
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 1132
    iget-wide v9, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v9, v4

    add-long/2addr v9, v15

    add-long/2addr v6, v4

    .line 1134
    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1135
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x2

    add-long v13, v9, v11

    .line 1136
    iget-wide v11, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    add-long/2addr v11, v6

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1137
    iget-wide v11, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v13, 0x2

    mul-long/2addr v11, v13

    add-long/2addr v6, v11

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

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

    .line 1141
    :goto_5
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_a

    const-wide/16 v6, 0x0

    .line 1142
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v6, v9

    if-gez v1, :cond_5

    .line 1143
    iget-wide v11, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v11, v6

    add-long/2addr v11, v4

    add-long/2addr v9, v6

    .line 1145
    invoke-virtual {v2, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v6, v7, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v15, v4

    const-wide/16 v13, 0x1

    add-long v4, v11, v13

    .line 1146
    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1147
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    add-long/2addr v4, v9

    move-wide/from16 v21, v6

    const-wide/16 v13, 0x2

    add-long v6, v11, v13

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v8, v4, v5, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1148
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

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

    .line 1150
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1151
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1152
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1153
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1154
    :goto_7
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 1155
    iget-wide v9, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v9, v4

    add-long/2addr v9, v15

    add-long/2addr v6, v4

    .line 1157
    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v9, v10, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long v13, v9, v11

    .line 1158
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v13, 0x2

    add-long v11, v9, v13

    .line 1159
    iget-wide v13, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    add-long/2addr v13, v6

    invoke-virtual {v8, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v11, v12, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    .line 1160
    iget-wide v13, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

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

    .line 1165
    :goto_8
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_8

    .line 1166
    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v6, v4

    .line 1167
    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v8, v4, v5, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 1168
    iget-wide v9, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

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

    .line 1171
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1172
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_9

    :cond_9
    const-wide/16 v4, 0x0

    .line 1174
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v8, v4, v5, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1175
    iget-object v1, v0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v6, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-virtual {v1, v8, v6, v7, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :goto_9
    move-wide v6, v4

    .line 1177
    :goto_a
    iget-wide v3, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v1, v6, v3

    if-gez v1, :cond_a

    .line 1178
    iget-wide v3, v0, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v3, v6

    .line 1179
    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 1180
    iget-wide v11, v0, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

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

    .line 1030
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1031
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1036
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1039
    :goto_1
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1040
    :goto_2
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_2

    .line 1041
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1043
    aget v7, p2, v5

    aput v7, v0, v1

    add-int/lit8 v7, v5, 0x1

    .line 1044
    aget v7, p2, v7

    aput v7, v0, v6

    add-int v7, v6, v3

    add-int/lit8 v8, v5, 0x2

    .line 1045
    aget v8, p2, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x3

    .line 1046
    aget v3, p2, v5

    aput v3, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1048
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1049
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1050
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1051
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v1, v4

    .line 1052
    :goto_3
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_3

    .line 1053
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1055
    aget v7, v0, v1

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    .line 1056
    aget v8, v0, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    add-int v8, v6, v3

    .line 1057
    aget v8, v0, v8

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 1058
    aget v3, v0, v6

    aput v3, p2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1062
    :goto_4
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1063
    :goto_5
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_5

    .line 1064
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1066
    aget v7, p2, v5

    aput v7, v0, v1

    add-int/lit8 v7, v5, 0x1

    .line 1067
    aget v7, p2, v7

    aput v7, v0, v6

    add-int v7, v6, v3

    add-int/lit8 v8, v5, 0x2

    .line 1068
    aget v8, p2, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x3

    .line 1069
    aget v3, p2, v5

    aput v3, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1071
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1072
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1073
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1074
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v1, v4

    .line 1075
    :goto_6
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_6

    .line 1076
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p1

    add-int v6, v3, v1

    .line 1078
    aget v7, v0, v1

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    .line 1079
    aget v8, v0, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    add-int v8, v6, v3

    .line 1080
    aget v8, v0, v8

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 1081
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

    .line 1086
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v2, :cond_8

    .line 1087
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v5, v1

    .line 1088
    aget v6, p2, v5

    aput v6, v0, v1

    add-int/2addr v2, v1

    add-int/lit8 v5, v5, 0x1

    .line 1089
    aget v5, p2, v5

    aput v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1092
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1093
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    goto :goto_8

    .line 1095
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1096
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1098
    :goto_8
    iget p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v4, p1, :cond_a

    .line 1099
    iget p3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr p3, v4

    .line 1100
    aget v1, v0, v4

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p1, v4

    .line 1101
    aget p1, v0, p1

    aput p1, p2, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private ddxt2d_sub(I[[FZ)V
    .locals 9

    .line 1188
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1189
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 1194
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_7

    if-ne p1, v3, :cond_4

    move p1, v4

    .line 1197
    :goto_1
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1198
    :goto_2
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_2

    add-int v5, v3, v1

    .line 1200
    aget-object v6, p2, v1

    aget v7, v6, p1

    aput v7, v0, v1

    add-int/lit8 v7, p1, 0x1

    .line 1201
    aget v7, v6, v7

    aput v7, v0, v5

    add-int v7, v5, v3

    add-int/lit8 v8, p1, 0x2

    .line 1202
    aget v8, v6, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x3

    .line 1203
    aget v3, v6, v3

    aput v3, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1205
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1206
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1207
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1208
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v1, v4

    .line 1209
    :goto_3
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_3

    add-int v5, v3, v1

    .line 1211
    aget-object v6, p2, v1

    aget v7, v0, v1

    aput v7, v6, p1

    add-int/lit8 v7, p1, 0x1

    .line 1212
    aget v8, v0, v5

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x2

    add-int v8, v5, v3

    .line 1213
    aget v8, v0, v8

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 1214
    aget v3, v0, v5

    aput v3, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_4
    move p1, v4

    .line 1218
    :goto_4
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge p1, v1, :cond_a

    move v1, v4

    .line 1219
    :goto_5
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_5

    add-int v5, v3, v1

    .line 1221
    aget-object v6, p2, v1

    aget v7, v6, p1

    aput v7, v0, v1

    add-int/lit8 v7, p1, 0x1

    .line 1222
    aget v7, v6, v7

    aput v7, v0, v5

    add-int v7, v5, v3

    add-int/lit8 v8, p1, 0x2

    .line 1223
    aget v8, v6, v8

    aput v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v3, p1, 0x3

    .line 1224
    aget v3, v6, v3

    aput v3, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1226
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1227
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1228
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1229
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v1, v4

    .line 1230
    :goto_6
    iget v3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_6

    add-int v5, v3, v1

    .line 1232
    aget-object v6, p2, v1

    aget v7, v0, v1

    aput v7, v6, p1

    add-int/lit8 v7, p1, 0x1

    .line 1233
    aget v8, v0, v5

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x2

    add-int v8, v5, v3

    .line 1234
    aget v8, v0, v8

    aput v8, v6, v7

    add-int/lit8 v7, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 1235
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

    .line 1240
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    const/4 v5, 0x1

    if-ge v1, v2, :cond_8

    .line 1241
    aget-object v6, p2, v1

    aget v7, v6, v4

    aput v7, v0, v1

    add-int/2addr v2, v1

    .line 1242
    aget v5, v6, v5

    aput v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-ne p1, v3, :cond_9

    .line 1245
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 1246
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    goto :goto_8

    .line 1248
    :cond_9
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    .line 1249
    iget-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    :goto_8
    move p1, v4

    .line 1251
    :goto_9
    iget p3, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge p1, p3, :cond_a

    .line 1252
    aget-object v1, p2, p1

    aget v2, v0, p1

    aput v2, v1, v4

    add-int/2addr p3, p1

    .line 1253
    aget p3, v0, p3

    aput p3, v1, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_a
    return-void
.end method

.method private ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 21

    move-object/from16 v12, p0

    .line 729
    const-class v13, Lorg/jtransforms/dct/FloatDCT_2D;

    iget-wide v0, v12, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x4

    .line 730
    iget-wide v3, v12, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    mul-long/2addr v3, v1

    .line 731
    iget-wide v1, v12, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

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
    move-wide v14, v3

    int-to-long v10, v0

    .line 738
    new-array v8, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v9, v1

    :goto_2
    if-ge v9, v0, :cond_2

    int-to-long v6, v9

    .line 742
    new-instance v16, Lorg/jtransforms/dct/FloatDCT_2D$14;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v14

    move/from16 v5, p1

    move-object/from16 v17, v8

    move/from16 v18, v9

    move-wide v8, v10

    move-wide/from16 v19, v10

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$14;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;JIJJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v18

    add-int/lit8 v9, v18, 0x1

    move-object/from16 v8, v17

    move-wide/from16 v10, v19

    goto :goto_2

    :cond_2
    move-object/from16 v17, v8

    const/4 v1, 0x0

    .line 821
    :try_start_0
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 825
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 823
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

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

    .line 627
    const-class v10, Lorg/jtransforms/dct/FloatDCT_2D;

    iget v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 628
    iget v1, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 629
    iget v2, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

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

    .line 636
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 640
    new-instance v14, Lorg/jtransforms/dct/FloatDCT_2D$13;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$13;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;IIII[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 719
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 723
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

    .line 721
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

    .line 831
    const-class v10, Lorg/jtransforms/dct/FloatDCT_2D;

    iget v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 832
    iget v1, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 833
    iget v2, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

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

    .line 840
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 844
    new-instance v14, Lorg/jtransforms/dct/FloatDCT_2D$15;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$15;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;IIII[[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 917
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 921
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

    .line 919
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
.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 194
    const-class v12, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 195
    iget-boolean v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v13, v5, :cond_0

    .line 196
    iget-boolean v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v5, :cond_0

    .line 197
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 198
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto/16 :goto_a

    .line 200
    :cond_0
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 201
    :goto_0
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 202
    iget-object v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    if-le v13, v5, :cond_6

    .line 205
    iget-boolean v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_6

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    int-to-long v7, v13

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    iget-wide v3, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_6

    .line 206
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 207
    div-long v16, v5, v7

    move v0, v14

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 210
    iget-wide v1, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 211
    new-instance v18, Lorg/jtransforms/dct/FloatDCT_2D$3;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$3;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 222
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 226
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

    .line 224
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_3
    iget-wide v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    div-long v16, v0, v19

    :goto_4
    if-ge v14, v13, :cond_5

    int-to-long v0, v14

    mul-long v3, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_4

    .line 231
    iget-wide v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    goto :goto_5

    :cond_4
    add-long v0, v3, v16

    :goto_5
    move-wide v5, v0

    .line 232
    new-instance v0, Lorg/jtransforms/dct/FloatDCT_2D$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v18, v13

    move-object v13, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$4;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object v8, v13

    move/from16 v13, v18

    goto :goto_4

    :cond_5
    move-object v13, v8

    .line 250
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 254
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

    .line 252
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    const-wide/16 v3, 0x0

    .line 257
    :goto_6
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 258
    iget-object v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_6

    .line 260
    :cond_7
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 261
    :goto_7
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a

    const-wide/16 v5, 0x0

    .line 262
    :goto_8
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    .line 263
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_8

    .line 265
    :cond_8
    iget-object v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v5, v0, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v5, 0x0

    .line 266
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_9

    .line 267
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v10, v7, v8, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_9

    :cond_9
    add-long/2addr v3, v1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public forward([FZ)V
    .locals 13

    .line 106
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 107
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 108
    iget-boolean v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[FZ)V

    .line 110
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[FZ)V

    goto/16 :goto_a

    .line 112
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[FZ)V

    .line 113
    :goto_0
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 114
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 117
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 118
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 119
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 122
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 123
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$1;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$1;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 134
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

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
    :goto_3
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 143
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 144
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$2;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$2;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 169
    :goto_6
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 170
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 172
    :cond_7
    new-array v0, v1, [F

    move v1, v3

    .line 173
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 174
    :goto_8
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 175
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v4, p1, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 177
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    move v2, v3

    .line 178
    :goto_9
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 179
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v5, v0, v2

    aput v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public forward([[FZ)V
    .locals 13

    .line 282
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 283
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 284
    iget-boolean v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[[FZ)V

    .line 286
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[[FZ)V

    goto/16 :goto_a

    .line 288
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[[FZ)V

    .line 289
    :goto_0
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 290
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 293
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 294
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 295
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 298
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 299
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$5;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$5;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 310
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 314
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    :goto_3
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 319
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 320
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$6;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$6;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 338
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 345
    :goto_6
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 346
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 348
    :cond_7
    new-array v0, v1, [F

    move v1, v3

    .line 349
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 350
    :goto_8
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 351
    aget-object v4, p1, v2

    aget v4, v4, v1

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 353
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    move v2, v3

    .line 354
    :goto_9
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 355
    aget-object v4, p1, v2

    aget v5, v0, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 458
    const-class v12, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 459
    iget-boolean v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-le v13, v5, :cond_0

    .line 460
    iget-boolean v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 462
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto/16 :goto_a

    .line 464
    :cond_0
    invoke-direct {v9, v5, v10, v11}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v3, 0x0

    .line 465
    :goto_0
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 466
    iget-object v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    if-le v13, v5, :cond_6

    .line 469
    iget-boolean v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_6

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    int-to-long v7, v13

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    iget-wide v3, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_6

    .line 470
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 471
    div-long v16, v5, v7

    move v0, v14

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 474
    iget-wide v1, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 475
    new-instance v18, Lorg/jtransforms/dct/FloatDCT_2D$9;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$9;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 486
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 490
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

    .line 488
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    :goto_3
    iget-wide v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    div-long v16, v0, v19

    :goto_4
    if-ge v14, v13, :cond_5

    int-to-long v0, v14

    mul-long v3, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_4

    .line 495
    iget-wide v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    goto :goto_5

    :cond_4
    add-long v0, v3, v16

    :goto_5
    move-wide v5, v0

    .line 496
    new-instance v0, Lorg/jtransforms/dct/FloatDCT_2D$10;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v18, v13

    move-object v13, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/FloatDCT_2D$10;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v15, v14

    add-int/lit8 v14, v14, 0x1

    move-object v8, v13

    move/from16 v13, v18

    goto :goto_4

    :cond_5
    move-object v13, v8

    .line 514
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 518
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

    .line 516
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    const-wide/16 v3, 0x0

    .line 521
    :goto_6
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 522
    iget-object v0, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v10, v5, v6, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v3, v1

    goto :goto_6

    .line 524
    :cond_7
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    invoke-direct {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 525
    :goto_7
    iget-wide v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a

    const-wide/16 v5, 0x0

    .line 526
    :goto_8
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    .line 527
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v10, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_8

    .line 529
    :cond_8
    iget-object v5, v9, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v5, v0, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v5, 0x0

    .line 530
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->rowsl:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_9

    .line 531
    iget-wide v7, v9, Lorg/jtransforms/dct/FloatDCT_2D;->columnsl:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v10, v7, v8, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v1

    goto :goto_9

    :cond_9
    add-long/2addr v3, v1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse([FZ)V
    .locals 13

    .line 370
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 371
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-le v1, v4, :cond_0

    .line 372
    iget-boolean v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[FZ)V

    .line 374
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[FZ)V

    goto/16 :goto_a

    .line 376
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[FZ)V

    .line 377
    :goto_0
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 378
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 381
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 382
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 383
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 386
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 387
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$7;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$7;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 398
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 402
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 400
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    :goto_3
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 407
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 408
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$8;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$8;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 426
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 430
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 428
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 433
    :goto_6
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 434
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 436
    :cond_7
    new-array v0, v1, [F

    move v1, v3

    .line 437
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 438
    :goto_8
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 439
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v4, p1, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 441
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    move v2, v3

    .line 442
    :goto_9
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 443
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v5, v0, v2

    aput v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method

.method public inverse([[FZ)V
    .locals 13

    .line 546
    const-class v0, Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 547
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-le v1, v4, :cond_0

    .line 548
    iget-boolean v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[[FZ)V

    .line 550
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[[FZ)V

    goto/16 :goto_a

    .line 552
    :cond_0
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[[FZ)V

    .line 553
    :goto_0
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v3, v0, :cond_a

    .line 554
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v4, :cond_6

    .line 557
    iget-boolean v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v2, v1, :cond_6

    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v4, v1, :cond_6

    .line 558
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 559
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_2

    .line 562
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    goto :goto_2

    :cond_2
    add-int v6, v8, v2

    :goto_2
    move v9, v6

    .line 563
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$11;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$11;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 574
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 578
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 576
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    :goto_3
    iget v5, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_4
    if-ge v3, v1, :cond_5

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    .line 583
    iget v6, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    goto :goto_5

    :cond_4
    add-int v6, v8, v5

    :goto_5
    move v9, v6

    .line 584
    new-instance v12, Lorg/jtransforms/dct/FloatDCT_2D$12;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/dct/FloatDCT_2D$12;-><init>(Lorg/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 602
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception p1

    .line 606
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception p1

    .line 604
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_6
    move v0, v3

    .line 609
    :goto_6
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_7

    .line 610
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctColumns:Lorg/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 612
    :cond_7
    new-array v0, v1, [F

    move v1, v3

    .line 613
    :goto_7
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v1, v2, :cond_a

    move v2, v3

    .line 614
    :goto_8
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_8

    .line 615
    aget-object v4, p1, v2

    aget v4, v4, v1

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 617
    :cond_8
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D;->dctRows:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    move v2, v3

    .line 618
    :goto_9
    iget v4, p0, Lorg/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v4, :cond_9

    .line 619
    aget-object v4, p1, v2

    aget v5, v0, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_a
    return-void
.end method
