.class public Lorg/jtransforms/dst/FloatDST_1D;
.super Ljava/lang/Object;
.source "FloatDST_1D.java"


# instance fields
.field private final dct:Lorg/jtransforms/dct/FloatDCT_1D;

.field private final n:I

.field private final nl:J

.field private final useLargeArrays:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-int v0, p1

    .line 61
    iput v0, p0, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    .line 62
    iput-wide p1, p0, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    .line 63
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->isUseLargeArrays()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/jtransforms/dst/FloatDST_1D;->useLargeArrays:Z

    .line 64
    new-instance v0, Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dst/FloatDST_1D;->dct:Lorg/jtransforms/dct/FloatDCT_1D;

    return-void
.end method

.method static synthetic access$000(Lorg/jtransforms/dst/FloatDST_1D;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dst/FloatDST_1D;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    return-wide v0
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-wide/from16 v11, p2

    move/from16 v1, p4

    .line 169
    const-class v13, Lorg/jtransforms/dst/FloatDST_1D;

    iget-wide v2, v10, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    .line 172
    :cond_0
    iget-boolean v6, v10, Lorg/jtransforms/dst/FloatDST_1D;->useLargeArrays:Z

    if-nez v6, :cond_2

    .line 173
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v11, v2

    if-gez v2, :cond_1

    .line 174
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    long-to-int v2, v11

    invoke-virtual {v10, v0, v2, v1}, Lorg/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    goto/16 :goto_4

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v6, 0x2

    .line 180
    div-long v14, v2, v6

    add-long v8, v11, v4

    add-long/2addr v2, v11

    :goto_0
    cmp-long v16, v8, v2

    if-gez v16, :cond_3

    .line 184
    invoke-virtual {v0, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v8, v6

    const-wide/16 v4, 0x1

    goto :goto_0

    .line 186
    :cond_3
    iget-object v2, v10, Lorg/jtransforms/dst/FloatDST_1D;->dct:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, v11, v12, v1}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 187
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v9, 0x1

    if-le v1, v9, :cond_6

    .line 188
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-lez v1, :cond_6

    const/4 v7, 0x2

    int-to-long v1, v7

    .line 190
    div-long v16, v14, v1

    .line 191
    new-array v8, v7, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_5

    int-to-long v1, v5

    mul-long v18, v1, v16

    if-ne v5, v9, :cond_4

    move-wide/from16 v20, v14

    goto :goto_2

    :cond_4
    add-long v1, v18, v16

    move-wide/from16 v20, v1

    .line 195
    :goto_2
    new-instance v22, Lorg/jtransforms/dst/FloatDST_1D$2;

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move/from16 v23, v5

    move-wide/from16 v5, v18

    move/from16 v19, v7

    move-object/from16 v18, v8

    move-wide/from16 v7, v20

    move/from16 v20, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/dst/FloatDST_1D$2;-><init>(Lorg/jtransforms/dst/FloatDST_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v23

    add-int/lit8 v5, v23, 0x1

    move-object/from16 v8, v18

    move/from16 v7, v19

    move/from16 v9, v20

    goto :goto_1

    :cond_5
    move-object/from16 v18, v8

    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 218
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 216
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 221
    :cond_6
    iget-wide v1, v10, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    add-long/2addr v1, v11

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    :goto_3
    cmp-long v7, v5, v14

    if-gez v7, :cond_7

    add-long v7, v11, v5

    .line 226
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-long v3, v1, v5

    .line 228
    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v0, v7, v8, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 229
    invoke-virtual {v0, v3, v4, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public forward([FIZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    move/from16 v1, p3

    .line 98
    const-class v9, Lorg/jtransforms/dst/FloatDST_1D;

    iget v2, v7, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v3, v7, Lorg/jtransforms/dst/FloatDST_1D;->useLargeArrays:Z

    if-eqz v3, :cond_1

    .line 102
    new-instance v2, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v3, v8

    invoke-virtual {v7, v2, v3, v4, v1}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_4

    .line 105
    :cond_1
    div-int/lit8 v11, v2, 0x2

    add-int/lit8 v3, v8, 0x1

    add-int/2addr v2, v8

    :goto_0
    if-ge v3, v2, :cond_2

    .line 109
    aget v4, v0, v3

    neg-float v4, v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, v7, Lorg/jtransforms/dst/FloatDST_1D;->dct:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v2, v0, v8, v1}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    .line 112
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v10, :cond_5

    int-to-long v3, v11

    .line 113
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 115
    div-int/lit8 v12, v11, 0x2

    const/4 v13, 0x2

    .line 116
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v2

    :goto_1
    if-ge v15, v13, :cond_4

    mul-int v4, v15, v12

    if-ne v15, v10, :cond_3

    move v5, v11

    goto :goto_2

    :cond_3
    add-int v1, v4, v12

    move v5, v1

    .line 120
    :goto_2
    new-instance v16, Lorg/jtransforms/dst/FloatDST_1D$1;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/FloatDST_1D$1;-><init>(Lorg/jtransforms/dst/FloatDST_1D;III[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 139
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 143
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 141
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 146
    :cond_5
    iget v1, v7, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    add-int/2addr v1, v8

    sub-int/2addr v1, v10

    :goto_3
    if-ge v2, v11, :cond_6

    add-int v3, v8, v2

    .line 151
    aget v4, v0, v3

    sub-int v5, v1, v2

    .line 153
    aget v6, v0, v5

    aput v6, v0, v3

    .line 154
    aput v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public forward([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 332
    const-class v15, Lorg/jtransforms/dst/FloatDST_1D;

    iget-wide v0, v10, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    const-wide/16 v16, 0x1

    cmp-long v2, v0, v16

    if-nez v2, :cond_0

    return-void

    .line 335
    :cond_0
    iget-boolean v2, v10, Lorg/jtransforms/dst/FloatDST_1D;->useLargeArrays:Z

    if-nez v2, :cond_2

    .line 336
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v12, v0

    if-gez v0, :cond_1

    .line 337
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    long-to-int v1, v12

    invoke-virtual {v10, v0, v1, v14}, Lorg/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    goto/16 :goto_5

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v18, 0x2

    .line 343
    div-long v20, v0, v18

    .line 344
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_5

    .line 345
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v0

    cmp-long v0, v20, v0

    if-lez v0, :cond_5

    const/4 v0, 0x2

    int-to-long v1, v0

    .line 347
    div-long v22, v20, v1

    .line 348
    new-array v7, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_4

    int-to-long v1, v8

    mul-long v5, v1, v22

    if-ne v8, v9, :cond_3

    move-wide/from16 v24, v20

    goto :goto_1

    :cond_3
    add-long v1, v5, v22

    move-wide/from16 v24, v1

    .line 352
    :goto_1
    new-instance v26, Lorg/jtransforms/dst/FloatDST_1D$4;

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object/from16 v27, v7

    move/from16 v28, v8

    move-wide/from16 v7, v24

    move/from16 v24, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/dst/FloatDST_1D$4;-><init>(Lorg/jtransforms/dst/FloatDST_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v27, v28

    add-int/lit8 v8, v28, 0x1

    move/from16 v9, v24

    move-object/from16 v7, v27

    goto :goto_0

    :cond_4
    move-object/from16 v27, v7

    const/4 v1, 0x0

    .line 370
    :try_start_0
    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 374
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 372
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 377
    :cond_5
    iget-wide v0, v10, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    add-long/2addr v0, v12

    sub-long v0, v0, v16

    const-wide/16 v2, 0x0

    :goto_2
    cmp-long v4, v2, v20

    if-gez v4, :cond_6

    add-long v4, v12, v2

    .line 379
    invoke-virtual {v11, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-long v7, v0, v2

    .line 380
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v11, v4, v5, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 381
    invoke-virtual {v11, v7, v8, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    goto :goto_2

    .line 384
    :cond_6
    :goto_3
    iget-object v0, v10, Lorg/jtransforms/dst/FloatDST_1D;->dct:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v0, v12, v16

    .line 386
    iget-wide v2, v10, Lorg/jtransforms/dst/FloatDST_1D;->nl:J

    add-long/2addr v2, v12

    :goto_4
    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    .line 388
    invoke-virtual {v11, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v11, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v18

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public inverse([FIZ)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 266
    const-class v11, Lorg/jtransforms/dst/FloatDST_1D;

    iget v0, v7, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v1, v7, Lorg/jtransforms/dst/FloatDST_1D;->useLargeArrays:Z

    if-eqz v1, :cond_1

    .line 270
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v1, v9

    invoke-virtual {v7, v0, v1, v2, v10}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_5

    :cond_1
    const/4 v13, 0x2

    .line 273
    div-int/2addr v0, v13

    .line 274
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v12, :cond_4

    int-to-long v3, v0

    .line 275
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 277
    div-int/lit8 v14, v0, 0x2

    .line 278
    new-array v15, v13, [Ljava/util/concurrent/Future;

    move v6, v2

    :goto_0
    if-ge v6, v13, :cond_3

    mul-int v4, v6, v14

    if-ne v6, v12, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    add-int v1, v4, v14

    move v5, v1

    .line 282
    :goto_1
    new-instance v16, Lorg/jtransforms/dst/FloatDST_1D$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/FloatDST_1D$3;-><init>(Lorg/jtransforms/dst/FloatDST_1D;III[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 300
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 304
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 302
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 307
    :cond_4
    iget v1, v7, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    add-int/2addr v1, v9

    sub-int/2addr v1, v12

    :goto_2
    if-ge v2, v0, :cond_5

    add-int v3, v9, v2

    .line 309
    aget v4, v8, v3

    sub-int v5, v1, v2

    .line 310
    aget v6, v8, v5

    aput v6, v8, v3

    .line 311
    aput v4, v8, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 314
    :cond_5
    :goto_3
    iget-object v0, v7, Lorg/jtransforms/dst/FloatDST_1D;->dct:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v0, v8, v9, v10}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    add-int/lit8 v0, v9, 0x1

    .line 316
    iget v1, v7, Lorg/jtransforms/dst/FloatDST_1D;->n:I

    add-int/2addr v1, v9

    :goto_4
    if-ge v0, v1, :cond_6

    .line 318
    aget v2, v8, v0

    neg-float v2, v2

    aput v2, v8, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public inverse([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    return-void
.end method
