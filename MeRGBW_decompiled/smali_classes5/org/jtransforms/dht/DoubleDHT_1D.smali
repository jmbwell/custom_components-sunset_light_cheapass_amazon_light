.class public Lorg/jtransforms/dht/DoubleDHT_1D;
.super Ljava/lang/Object;
.source "DoubleDHT_1D.java"


# instance fields
.field private final fft:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private final n:I

.field private final nl:J

.field private final useLargeArrays:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-int v0, p1

    .line 62
    iput v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    .line 63
    iput-wide p1, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    .line 64
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
    iput-boolean v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->useLargeArrays:Z

    .line 65
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-void
.end method

.method static synthetic access$000(Lorg/jtransforms/dht/DoubleDHT_1D;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dht/DoubleDHT_1D;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    return-wide v0
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    return-void
.end method

.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    .line 163
    const-class v15, Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v0, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    const-wide/16 v9, 0x1

    cmp-long v0, v0, v9

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-boolean v0, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->useLargeArrays:Z

    if-nez v0, :cond_2

    .line 167
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v13, v0

    if-gez v0, :cond_1

    .line 168
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    long-to-int v1, v13

    invoke-virtual {v11, v0, v1}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move-object v4, v11

    goto/16 :goto_4

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget-object v0, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v12, v13, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 174
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v0, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v5, 0x0

    .line 175
    iget-wide v2, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    move-object/from16 v1, p1

    move-wide/from16 v16, v2

    move-wide/from16 v2, p2

    move-object v4, v7

    move-object/from16 v18, v7

    move v0, v8

    move-wide/from16 v7, v16

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    .line 176
    iget-wide v1, v11, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    const-wide/16 v16, 0x2

    div-long v19, v1, v16

    .line 177
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v8, 0x1

    if-le v1, v8, :cond_5

    .line 178
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v1

    cmp-long v1, v19, v1

    if-lez v1, :cond_5

    const/4 v7, 0x2

    int-to-long v1, v7

    .line 180
    div-long v21, v19, v1

    .line 181
    new-array v5, v7, [Ljava/util/concurrent/Future;

    :goto_0
    if-ge v0, v7, :cond_4

    int-to-long v1, v0

    mul-long v1, v1, v21

    add-long v3, v1, v9

    if-ne v0, v8, :cond_3

    move-wide/from16 v23, v19

    goto :goto_1

    :cond_3
    add-long v1, v3, v21

    move-wide/from16 v23, v1

    .line 185
    :goto_1
    new-instance v25, Lorg/jtransforms/dht/DoubleDHT_1D$2;

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object/from16 v26, v5

    move-wide/from16 v5, v23

    move/from16 v23, v7

    move-object/from16 v7, p1

    move/from16 v24, v8

    move-wide v11, v9

    move-wide/from16 v8, p2

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dht/DoubleDHT_1D$2;-><init>(Lorg/jtransforms/dht/DoubleDHT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v26, v0

    add-int/lit8 v0, v0, 0x1

    move-wide v9, v11

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v5, v26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto :goto_0

    :cond_4
    move-object/from16 v26, v5

    move-wide v11, v9

    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 206
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

    .line 204
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move-wide v11, v9

    move-wide v9, v11

    :goto_2
    cmp-long v0, v9, v19

    if-gez v0, :cond_6

    mul-long v0, v9, v16

    add-long v2, v0, v11

    add-long v4, v13, v9

    move-object/from16 v6, v18

    .line 213
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    sub-double v7, v7, v21

    move-object/from16 v11, p1

    invoke-virtual {v11, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-object/from16 v4, p0

    .line 214
    iget-wide v7, v4, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    add-long/2addr v7, v13

    sub-long/2addr v7, v9

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {v11, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v9, v1

    move-wide v11, v1

    goto :goto_2

    :cond_6
    :goto_3
    move-object/from16 v4, p0

    move-wide v1, v11

    move-object/from16 v6, v18

    move-object/from16 v11, p1

    .line 217
    iget-wide v7, v4, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    rem-long v9, v7, v16

    const-wide/16 v15, 0x0

    cmp-long v0, v9, v15

    if-nez v0, :cond_7

    add-long v7, v13, v19

    .line 218
    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v11, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_4

    :cond_7
    add-long v9, v13, v19

    sub-long/2addr v7, v1

    .line 220
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v7, v12

    invoke-virtual {v11, v9, v10, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v1

    .line 221
    iget-wide v7, v4, Lorg/jtransforms/dht/DoubleDHT_1D;->nl:J

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v7, v0

    invoke-virtual {v11, v9, v10, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :goto_4
    return-void
.end method

.method public forward([D)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    return-void
.end method

.method public forward([DI)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 96
    const-class v11, Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    return-void

    .line 99
    :cond_0
    iget-boolean v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v1, v10

    invoke-virtual {v8, v0, v1, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto/16 :goto_4

    .line 102
    :cond_1
    iget-object v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 103
    iget v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    new-array v13, v0, [D

    const/4 v1, 0x0

    .line 104
    invoke-static {v9, v10, v13, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    const/4 v14, 0x2

    div-int/lit8 v15, v0, 0x2

    .line 106
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v12, :cond_4

    int-to-long v2, v15

    .line 107
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 109
    div-int/lit8 v0, v15, 0x2

    .line 110
    new-array v7, v14, [Ljava/util/concurrent/Future;

    move v6, v1

    :goto_0
    if-ge v6, v14, :cond_3

    mul-int v1, v6, v0

    add-int/lit8 v3, v1, 0x1

    if-ne v6, v12, :cond_2

    move v4, v15

    goto :goto_1

    :cond_2
    add-int v1, v3, v0

    move v4, v1

    .line 114
    :goto_1
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_1D$1;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    move-object/from16 v18, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/DoubleDHT_1D$1;-><init>(Lorg/jtransforms/dht/DoubleDHT_1D;II[DI[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v17

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v7, v18

    goto :goto_0

    :cond_3
    move-object/from16 v18, v7

    const/4 v1, 0x0

    .line 131
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 135
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

    .line 133
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move v0, v12

    :goto_2
    if-ge v0, v15, :cond_5

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, v10, v0

    .line 142
    aget-wide v4, v13, v1

    aget-wide v6, v13, v2

    sub-double/2addr v4, v6

    aput-wide v4, v9, v3

    .line 143
    iget v3, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int/2addr v3, v10

    sub-int/2addr v3, v0

    aget-wide v4, v13, v1

    aget-wide v1, v13, v2

    add-double/2addr v4, v1

    aput-wide v4, v9, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_5
    :goto_3
    iget v0, v8, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_6

    add-int v0, v10, v15

    .line 147
    aget-wide v1, v13, v12

    aput-wide v1, v9, v0

    goto :goto_4

    :cond_6
    add-int v1, v10, v15

    add-int/lit8 v2, v0, -0x1

    .line 149
    aget-wide v2, v13, v2

    aget-wide v4, v13, v12

    sub-double/2addr v2, v4

    aput-wide v2, v9, v1

    add-int/2addr v1, v12

    sub-int/2addr v0, v12

    .line 150
    aget-wide v2, v13, v0

    aget-wide v4, v13, v12

    add-double/2addr v2, v4

    aput-wide v2, v9, v1

    :goto_4
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 8

    .line 279
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-boolean v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->useLargeArrays:Z

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 284
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object p1

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2, p4}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    goto :goto_0

    .line 286
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The data array is too big."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz p4, :cond_3

    .line 291
    iget p4, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    int-to-long v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p4

    div-double/2addr v2, v4

    const/4 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public inverse([DIZ)V
    .locals 7

    .line 257
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-boolean v0, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->useLargeArrays:Z

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    if-eqz p3, :cond_2

    .line 265
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_1D;->n:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v1

    div-double/2addr v2, v4

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public inverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    return-void
.end method
