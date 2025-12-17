.class public Lpl/edu/icm/jlargearrays/LargeArrayStatistics;
.super Ljava/lang/Object;
.source "LargeArrayStatistics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static avg(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 23

    move-object/from16 v6, p0

    if-eqz v6, :cond_6

    .line 318
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_6

    .line 321
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 325
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 326
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_4

    .line 327
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto :goto_4

    :cond_1
    int-to-long v0, v11

    .line 332
    div-long v16, v9, v0

    .line 333
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_3

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_2

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_2
    add-long v19, v1, v16

    .line 337
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$5;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$5;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v5

    .line 351
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_5

    .line 353
    aget-object v1, v19, v0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v14, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    :goto_3
    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    .line 358
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v14, v0

    add-long/2addr v7, v12

    goto :goto_3

    :cond_4
    :goto_4
    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    .line 329
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v14, v0

    add-long/2addr v7, v12

    goto :goto_4

    :cond_5
    long-to-double v0, v9

    div-double/2addr v14, v0

    return-wide v14

    .line 319
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static avgKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 25

    move-object/from16 v6, p0

    if-eqz v6, :cond_7

    .line 375
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    .line 378
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 383
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 384
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_4

    .line 385
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    int-to-long v0, v11

    .line 393
    div-long v16, v9, v0

    .line 394
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_3

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_2

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_2
    add-long v19, v1, v16

    .line 398
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v5

    .line 416
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v14

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_6

    .line 418
    :try_start_1
    aget-object v3, v19, v0

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v1, v14

    :catch_1
    :goto_3
    cmp-long v0, v7, v9

    if-gez v0, :cond_6

    .line 423
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double/2addr v3, v14

    add-double v14, v1, v3

    sub-double v0, v14, v1

    sub-double/2addr v0, v3

    add-long/2addr v7, v12

    move-wide/from16 v23, v0

    move-wide v1, v14

    move-wide/from16 v14, v23

    goto :goto_3

    :cond_4
    :goto_4
    move-wide v0, v14

    :goto_5
    cmp-long v2, v7, v9

    if-gez v2, :cond_5

    .line 387
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double/2addr v2, v14

    add-double v14, v0, v2

    sub-double v0, v14, v0

    sub-double/2addr v0, v2

    add-long/2addr v7, v12

    move-wide/from16 v23, v0

    move-wide v0, v14

    move-wide/from16 v14, v23

    goto :goto_5

    :cond_5
    move-wide v1, v0

    :cond_6
    long-to-double v3, v9

    div-double/2addr v1, v3

    return-wide v1

    .line 376
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 22

    move-object/from16 v6, p0

    if-eqz v6, :cond_9

    .line 124
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_9

    .line 127
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 130
    :cond_0
    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v7

    .line 131
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 132
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    if-lt v11, v0, :cond_6

    .line 133
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    int-to-long v0, v11

    .line 141
    div-long v14, v9, v0

    .line 142
    new-array v4, v11, [Ljava/util/concurrent/Future;

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    if-ge v5, v11, :cond_3

    int-to-long v0, v5

    mul-long v2, v0, v14

    add-int/lit8 v0, v11, -0x1

    if-ne v5, v0, :cond_2

    move-wide/from16 v17, v9

    goto :goto_1

    :cond_2
    add-long v0, v2, v14

    move-wide/from16 v17, v0

    .line 146
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;-><init>(Lpl/edu/icm/jlargearrays/LargeArray;JJ)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v21

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v4, v20

    goto :goto_0

    :cond_3
    move-object/from16 v20, v4

    .line 163
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move/from16 v0, v16

    :goto_2
    if-ge v0, v11, :cond_8

    .line 165
    aget-object v1, v20, v0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v3, v1, v7

    if-lez v3, :cond_4

    move-wide v7, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v0, v12

    :goto_3
    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    .line 172
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    cmpl-double v4, v2, v7

    if-lez v4, :cond_5

    move-wide v7, v2

    :cond_5
    add-long/2addr v0, v12

    goto :goto_3

    :cond_6
    :goto_4
    move-wide v0, v12

    :goto_5
    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    .line 135
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    cmpl-double v4, v2, v7

    if-lez v4, :cond_7

    move-wide v7, v2

    :cond_7
    add-long/2addr v0, v12

    goto :goto_5

    :cond_8
    return-wide v7

    .line 125
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 22

    move-object/from16 v6, p0

    if-eqz v6, :cond_9

    .line 56
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_9

    .line 59
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 62
    :cond_0
    invoke-virtual {v6, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v7

    .line 63
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 64
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    if-lt v11, v0, :cond_6

    .line 65
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    int-to-long v0, v11

    .line 73
    div-long v14, v9, v0

    .line 74
    new-array v4, v11, [Ljava/util/concurrent/Future;

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    if-ge v5, v11, :cond_3

    int-to-long v0, v5

    mul-long v2, v0, v14

    add-int/lit8 v0, v11, -0x1

    if-ne v5, v0, :cond_2

    move-wide/from16 v17, v9

    goto :goto_1

    :cond_2
    add-long v0, v2, v14

    move-wide/from16 v17, v0

    .line 78
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$1;-><init>(Lpl/edu/icm/jlargearrays/LargeArray;JJ)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v21

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v4, v20

    goto :goto_0

    :cond_3
    move-object/from16 v20, v4

    .line 95
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move/from16 v0, v16

    :goto_2
    if-ge v0, v11, :cond_8

    .line 97
    aget-object v1, v20, v0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v3, v1, v7

    if-gez v3, :cond_4

    move-wide v7, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v0, v12

    :goto_3
    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    .line 104
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    cmpg-double v4, v2, v7

    if-gez v4, :cond_5

    move-wide v7, v2

    :cond_5
    add-long/2addr v0, v12

    goto :goto_3

    :cond_6
    :goto_4
    move-wide v0, v12

    :goto_5
    cmp-long v2, v0, v9

    if-gez v2, :cond_8

    .line 67
    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    cmpg-double v4, v2, v7

    if-gez v4, :cond_7

    move-wide v7, v2

    :cond_7
    add-long/2addr v0, v12

    goto :goto_5

    :cond_8
    return-wide v7

    .line 57
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static std(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 24

    move-object/from16 v6, p0

    if-eqz v6, :cond_7

    .line 443
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    .line 446
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    return-wide v7

    .line 453
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    const-wide/16 v0, 0x2

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 455
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_5

    .line 456
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    int-to-long v0, v11

    .line 469
    div-long v16, v9, v0

    .line 470
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_4

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_3

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_3
    add-long v19, v1, v16

    .line 474
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_4
    move-object/from16 v19, v5

    .line 498
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v7

    move-wide v3, v1

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_6

    .line 500
    :try_start_1
    aget-object v5, v19, v0

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    check-cast v5, [D

    .line 501
    aget-wide v16, v5, v18

    add-double v1, v1, v16

    const/16 v16, 0x1

    .line 502
    aget-wide v16, v5, v16
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    add-double v3, v3, v16

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v1, v7

    move-wide v3, v1

    :catch_1
    move-wide/from16 v16, v7

    move-wide/from16 v18, v16

    :goto_3
    cmp-long v0, v14, v9

    if-gez v0, :cond_6

    .line 506
    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v20

    sub-double v16, v20, v16

    add-double v22, v1, v16

    sub-double v0, v22, v1

    sub-double v16, v0, v16

    mul-double v20, v20, v20

    sub-double v20, v20, v18

    add-double v0, v3, v20

    sub-double v2, v0, v3

    sub-double v18, v2, v20

    add-long/2addr v14, v12

    move-wide v3, v0

    move-wide/from16 v1, v22

    goto :goto_3

    :cond_5
    :goto_4
    move-wide v1, v7

    move-wide v3, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v16

    :goto_5
    cmp-long v0, v14, v9

    if-gez v0, :cond_6

    .line 458
    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v20

    sub-double v16, v20, v16

    add-double v22, v1, v16

    sub-double v0, v22, v1

    sub-double v16, v0, v16

    mul-double v20, v20, v20

    sub-double v20, v20, v18

    add-double v0, v3, v20

    sub-double v2, v0, v3

    sub-double v18, v2, v20

    add-long/2addr v14, v12

    move-wide v3, v0

    move-wide/from16 v1, v22

    goto :goto_5

    :cond_6
    long-to-double v5, v9

    div-double/2addr v1, v5

    div-double/2addr v3, v5

    mul-double/2addr v1, v1

    sub-double/2addr v3, v1

    .line 520
    invoke-static {v7, v8, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    .line 444
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stdKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 23

    move-object/from16 v6, p0

    if-eqz v6, :cond_7

    .line 533
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    .line 536
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    return-wide v7

    .line 541
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    const-wide/16 v0, 0x2

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 543
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_5

    .line 544
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    int-to-long v0, v11

    .line 551
    div-long v16, v9, v0

    .line 552
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_4

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_3

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_3
    add-long v19, v1, v16

    .line 556
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_4
    move-object/from16 v19, v5

    .line 572
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v7

    move-wide v3, v1

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_6

    .line 574
    :try_start_1
    aget-object v5, v19, v0

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    check-cast v5, [D

    .line 575
    aget-wide v16, v5, v18

    add-double v1, v1, v16

    const/16 v16, 0x1

    .line 576
    aget-wide v16, v5, v16
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    add-double v3, v3, v16

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v1, v7

    move-wide v3, v1

    :catch_1
    :goto_3
    cmp-long v0, v14, v9

    if-gez v0, :cond_6

    .line 580
    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v1, v1, v16

    mul-double v16, v16, v16

    add-double v3, v3, v16

    add-long/2addr v14, v12

    goto :goto_3

    :cond_5
    :goto_4
    move-wide v1, v7

    move-wide v3, v1

    :goto_5
    cmp-long v0, v14, v9

    if-gez v0, :cond_6

    .line 546
    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v1, v1, v16

    mul-double v16, v16, v16

    add-double v3, v3, v16

    add-long/2addr v14, v12

    goto :goto_5

    :cond_6
    long-to-double v5, v9

    div-double/2addr v1, v5

    div-double/2addr v3, v5

    mul-double/2addr v1, v1

    sub-double/2addr v3, v1

    .line 588
    invoke-static {v7, v8, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    .line 534
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sum(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 23

    move-object/from16 v6, p0

    if-eqz v6, :cond_6

    .line 192
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_6

    .line 195
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 200
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_4

    .line 201
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto :goto_4

    :cond_1
    int-to-long v0, v11

    .line 206
    div-long v16, v9, v0

    .line 207
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_3

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_2

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_2
    add-long v19, v1, v16

    .line 211
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$3;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$3;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v5

    .line 225
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_5

    .line 227
    aget-object v1, v19, v0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v14, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    :goto_3
    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    .line 232
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v14, v0

    add-long/2addr v7, v12

    goto :goto_3

    :cond_4
    :goto_4
    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    .line 203
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v14, v0

    add-long/2addr v7, v12

    goto :goto_4

    :cond_5
    return-wide v14

    .line 193
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sumKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D
    .locals 25

    move-object/from16 v6, p0

    if-eqz v6, :cond_7

    .line 249
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v0, v1, :cond_7

    .line 252
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 257
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v9

    .line 258
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-lt v11, v0, :cond_4

    .line 259
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    int-to-long v0, v11

    .line 267
    div-long v16, v9, v0

    .line 268
    new-array v5, v11, [Ljava/util/concurrent/Future;

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    if-ge v3, v11, :cond_3

    int-to-long v0, v3

    mul-long v1, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_2

    move-wide/from16 v19, v9

    goto :goto_1

    :cond_2
    add-long v19, v1, v16

    .line 272
    :goto_1
    new-instance v21, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$4;

    move-object/from16 v0, v21

    move/from16 v22, v3

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$4;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v22

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v5, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v5

    .line 290
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v14

    move/from16 v0, v18

    :goto_2
    if-ge v0, v11, :cond_6

    .line 292
    :try_start_1
    aget-object v3, v19, v0

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-wide v1, v14

    :catch_1
    :goto_3
    cmp-long v0, v7, v9

    if-gez v0, :cond_6

    .line 297
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double/2addr v3, v14

    add-double v14, v1, v3

    sub-double v0, v14, v1

    sub-double/2addr v0, v3

    add-long/2addr v7, v12

    move-wide/from16 v23, v0

    move-wide v1, v14

    move-wide/from16 v14, v23

    goto :goto_3

    :cond_4
    :goto_4
    move-wide v0, v14

    :goto_5
    cmp-long v2, v7, v9

    if-gez v2, :cond_5

    .line 261
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double/2addr v2, v14

    add-double v14, v0, v2

    sub-double v0, v14, v0

    sub-double/2addr v0, v2

    add-long/2addr v7, v12

    move-wide/from16 v23, v0

    move-wide v0, v14

    move-wide/from16 v14, v23

    goto :goto_5

    :cond_5
    move-wide v1, v0

    :cond_6
    return-wide v1

    .line 250
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
