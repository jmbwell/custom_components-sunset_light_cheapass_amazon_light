.class public Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 2

    .line 2544
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2545
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->abs(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static abs(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_1c

    .line 2558
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2561
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2565
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2566
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2567
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2568
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2569
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2570
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2571
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2572
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAbs([F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2573
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 2574
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2575
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAbs([D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2577
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v1, 0x0

    .line 2580
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v15

    .line 2581
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2582
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    const/4 v3, 0x2

    const-wide/16 v19, 0x1

    if-eqz v0, :cond_a

    if-lt v13, v3, :cond_8

    .line 2583
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v2, v13

    .line 2588
    div-long v16, v8, v2

    .line 2589
    new-array v12, v13, [Ljava/util/concurrent/Future;

    move v14, v1

    :goto_0
    if-ge v14, v13, :cond_7

    int-to-long v0, v14

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_6

    move-wide v3, v8

    goto :goto_1

    :cond_6
    add-long v3, v1, v16

    .line 2593
    :goto_1
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$36;

    move-object/from16 v0, v18

    move-object v5, v15

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$36;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2605
    :cond_7
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :goto_2
    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    .line 2608
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {v15, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    goto :goto_2

    :cond_8
    :goto_3
    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    .line 2585
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {v15, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    goto :goto_3

    :cond_9
    :goto_4
    move-object v10, v15

    goto/16 :goto_13

    .line 2612
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v0

    if-eqz v0, :cond_f

    if-lt v13, v3, :cond_e

    .line 2613
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_b

    goto :goto_8

    :cond_b
    int-to-long v2, v13

    .line 2618
    div-long v16, v8, v2

    .line 2619
    new-array v12, v13, [Ljava/util/concurrent/Future;

    move v14, v1

    :goto_5
    if-ge v14, v13, :cond_d

    int-to-long v0, v14

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_c

    move-wide v3, v8

    goto :goto_6

    :cond_c
    add-long v3, v1, v16

    .line 2623
    :goto_6
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$37;

    move-object/from16 v0, v18

    move-object v5, v15

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$37;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 2635
    :cond_d
    :try_start_1
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :goto_7
    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    .line 2638
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {v15, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    goto :goto_7

    :cond_e
    :goto_8
    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    .line 2615
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {v15, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    goto :goto_8

    .line 2642
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v4, :cond_14

    .line 2643
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v3, :cond_13

    .line 2644
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_10

    goto :goto_c

    :cond_10
    int-to-long v2, v13

    .line 2650
    div-long v2, v8, v2

    .line 2651
    new-array v4, v13, [Ljava/util/concurrent/Future;

    move v6, v1

    :goto_9
    if-ge v6, v13, :cond_12

    int-to-long v10, v6

    mul-long/2addr v10, v2

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_11

    move-wide/from16 v16, v8

    goto :goto_a

    :cond_11
    add-long v16, v10, v2

    .line 2655
    :goto_a
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$38;

    move-object v12, v7

    move/from16 v21, v13

    move-wide v13, v10

    move-object v10, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$38;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    move-object v15, v10

    move/from16 v13, v21

    const-wide/16 v10, 0x0

    goto :goto_9

    :cond_12
    move-object v10, v15

    .line 2668
    :try_start_2
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_13

    :catch_2
    const-wide/16 v2, 0x0

    :goto_b
    cmp-long v4, v2, v8

    if-gez v4, :cond_19

    .line 2671
    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v4

    .line 2672
    aget v6, v4, v1

    mul-float/2addr v6, v6

    aget v4, v4, v5

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v2, v2, v19

    goto :goto_b

    :cond_13
    :goto_c
    move-object v10, v15

    const-wide/16 v2, 0x0

    :goto_d
    cmp-long v4, v2, v8

    if-gez v4, :cond_19

    .line 2646
    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v4

    .line 2647
    aget v6, v4, v1

    mul-float/2addr v6, v6

    aget v4, v4, v5

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-virtual {v10, v2, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v2, v2, v19

    goto :goto_d

    :cond_14
    move/from16 v21, v13

    move-object v10, v15

    .line 2676
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v4, :cond_1a

    .line 2677
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move/from16 v2, v21

    if-lt v2, v3, :cond_18

    .line 2678
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_15

    goto :goto_11

    :cond_15
    int-to-long v3, v2

    .line 2684
    div-long v3, v8, v3

    .line 2685
    new-array v6, v2, [Ljava/util/concurrent/Future;

    move v7, v1

    :goto_e
    if-ge v7, v2, :cond_17

    int-to-long v11, v7

    mul-long v13, v11, v3

    add-int/lit8 v11, v2, -0x1

    if-ne v7, v11, :cond_16

    move-wide v15, v8

    goto :goto_f

    :cond_16
    add-long v11, v13, v3

    move-wide v15, v11

    .line 2689
    :goto_f
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$39;

    move-object v12, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$39;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 2702
    :cond_17
    :try_start_3
    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_13

    :catch_3
    const-wide/16 v2, 0x0

    :goto_10
    cmp-long v4, v2, v8

    if-gez v4, :cond_19

    .line 2705
    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    .line 2706
    aget-wide v6, v4, v1

    mul-double/2addr v6, v6

    aget-wide v11, v4, v5

    mul-double/2addr v11, v11

    add-double/2addr v6, v11

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v10, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    goto :goto_10

    :cond_18
    :goto_11
    const-wide/16 v2, 0x0

    :goto_12
    cmp-long v4, v2, v8

    if-gez v4, :cond_19

    .line 2680
    invoke-virtual {v0, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    .line 2681
    aget-wide v6, v4, v1

    mul-double/2addr v6, v6

    aget-wide v11, v4, v5

    mul-double/2addr v11, v11

    add-double/2addr v6, v11

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v10, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    goto :goto_12

    :cond_19
    :goto_13
    return-object v10

    .line 2711
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2561
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2559
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static acos(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 3387
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 3388
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->acos(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static acos(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3405
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3407
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 3408
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 3409
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3411
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 3412
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3413
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3414
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 3415
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3416
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3418
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3410
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 3421
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 3422
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 3423
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    const-wide/16 v14, 0x1

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_9

    .line 3453
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_a

    .line 3454
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 3455
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 3456
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v3, v13

    .line 3462
    div-long v3, v8, v3

    .line 3463
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_1
    if-ge v1, v13, :cond_8

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3467
    :goto_2
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$53;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$53;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3480
    :cond_8
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    :goto_3
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3483
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3484
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3458
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3459
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_4

    .line 3488
    :cond_a
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_f

    .line 3489
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 3490
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 3491
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    goto :goto_8

    :cond_b
    int-to-long v3, v13

    .line 3497
    div-long v3, v8, v3

    .line 3498
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_5
    if-ge v1, v13, :cond_d

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_c

    move-wide/from16 v19, v8

    goto :goto_6

    :cond_c
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3502
    :goto_6
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$54;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$54;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3516
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_e

    :catch_1
    :goto_7
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3519
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3520
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_7

    :cond_e
    :goto_8
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3493
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3494
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAcos([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_8

    .line 3526
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    if-lt v13, v4, :cond_14

    .line 3424
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_11

    goto :goto_d

    :cond_11
    int-to-long v2, v13

    .line 3429
    div-long v16, v8, v2

    .line 3430
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v1

    :goto_a
    if-ge v5, v13, :cond_13

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_12

    move-wide v3, v8

    goto :goto_b

    :cond_12
    add-long v3, v1, v16

    .line 3434
    :goto_b
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$52;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$52;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_a

    :cond_13
    move-object/from16 v20, v6

    .line 3446
    :try_start_2
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    :goto_c
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3449
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_c

    :cond_14
    :goto_d
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3426
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_d

    :cond_15
    :goto_e
    return-object v12

    .line 3405
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3403
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 2

    .line 533
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 534
    :goto_0
    invoke-static {p0, p1, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    if-eqz v8, :cond_20

    if-eqz v9, :cond_20

    .line 548
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 551
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 553
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v10

    .line 554
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const/4 v3, 0x2

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 557
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 559
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 560
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 561
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 562
    aget v6, v1, v5

    aget v7, v2, v5

    add-float/2addr v6, v7

    aget v1, v1, v4

    aget v2, v2, v4

    add-float/2addr v1, v2

    new-array v2, v3, [F

    aput v6, v2, v5

    aput v1, v2, v4

    invoke-static {v0, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 563
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 564
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 565
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 566
    aget-wide v6, v1, v5

    aget-wide v8, v2, v5

    add-double/2addr v6, v8

    aget-wide v8, v1, v4

    aget-wide v1, v2, v4

    add-double/2addr v8, v1

    new-array v1, v3, [D

    aput-wide v6, v1, v5

    aput-wide v8, v1, v4

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 568
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v6

    long-to-int v14, v6

    .line 572
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v15, 0x1

    if-eqz v1, :cond_a

    .line 573
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v7

    if-lt v14, v3, :cond_8

    .line 574
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v0, v14

    .line 579
    div-long v17, v10, v0

    .line 580
    new-array v6, v14, [Ljava/util/concurrent/Future;

    :goto_0
    if-ge v5, v14, :cond_7

    int-to-long v0, v5

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v5, v0, :cond_6

    move-wide v3, v10

    goto :goto_1

    :cond_6
    add-long v3, v1, v17

    .line 584
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$1;

    move-object/from16 v0, v19

    move/from16 v20, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$1;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v20

    add-int/lit8 v5, v20, 0x1

    move-object v7, v12

    move-object/from16 v6, v21

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v21, v6

    move-object v12, v7

    .line 596
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 599
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_2

    :cond_8
    :goto_3
    move-object v12, v7

    const-wide/16 v0, 0x0

    :goto_4
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 576
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_4

    :cond_9
    :goto_5
    move-object v7, v12

    goto/16 :goto_17

    .line 603
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 604
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    if-lt v14, v3, :cond_e

    .line 605
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v0, v14

    .line 610
    div-long v17, v10, v0

    .line 611
    new-array v13, v14, [Ljava/util/concurrent/Future;

    move v7, v5

    :goto_6
    if-ge v7, v14, :cond_d

    int-to-long v0, v7

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v7, v0, :cond_c

    move-wide v3, v10

    goto :goto_7

    :cond_c
    add-long v3, v1, v17

    .line 615
    :goto_7
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$2;

    move-object/from16 v0, v19

    move-object v5, v12

    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$2;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v20

    add-int/lit8 v7, v20, 0x1

    goto :goto_6

    .line 627
    :cond_d
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 v0, 0x0

    :goto_8
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 630
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_8

    :cond_e
    :goto_9
    const-wide/16 v0, 0x0

    :goto_a
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 607
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_a

    .line 634
    :cond_f
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_16

    .line 635
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 636
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 637
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    .line 638
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_b

    .line 639
    :cond_10
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    if-eq v0, v6, :cond_11

    move-object v7, v1

    goto :goto_b

    :cond_11
    move-object v7, v2

    .line 644
    :goto_b
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v14, v3, :cond_15

    .line 645
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v8

    cmp-long v6, v10, v8

    if-gez v6, :cond_12

    goto :goto_f

    :cond_12
    int-to-long v8, v14

    .line 655
    div-long v8, v10, v8

    .line 656
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v12, v5

    :goto_c
    if-ge v12, v14, :cond_14

    int-to-long v3, v12

    mul-long v23, v3, v8

    add-int/lit8 v3, v14, -0x1

    if-ne v12, v3, :cond_13

    move-wide/from16 v25, v10

    goto :goto_d

    :cond_13
    add-long v3, v23, v8

    move-wide/from16 v25, v3

    .line 660
    :goto_d
    new-instance v3, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;

    move-object/from16 v22, v3

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v0

    invoke-direct/range {v22 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_c

    .line 677
    :cond_14
    :try_start_2
    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_17

    :catch_2
    const-wide/16 v3, 0x0

    :goto_e
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 681
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 682
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    .line 683
    aget v9, v6, v5

    aget v12, v8, v5

    add-float/2addr v9, v12

    const/4 v12, 0x1

    .line 684
    aget v6, v6, v12

    aget v8, v8, v12

    add-float/2addr v6, v8

    const/4 v8, 0x2

    new-array v14, v8, [F

    aput v9, v14, v5

    aput v6, v14, v12

    .line 685
    invoke-virtual {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_e

    :cond_15
    :goto_f
    const-wide/16 v3, 0x0

    :goto_10
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 648
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 649
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    .line 650
    aget v9, v6, v5

    aget v12, v8, v5

    add-float/2addr v9, v12

    const/4 v12, 0x1

    .line 651
    aget v6, v6, v12

    aget v8, v8, v12

    add-float/2addr v6, v8

    const/4 v8, 0x2

    new-array v14, v8, [F

    aput v9, v14, v5

    aput v6, v14, v12

    .line 652
    invoke-virtual {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_10

    .line 689
    :cond_16
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1e

    .line 690
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 691
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 692
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    .line 693
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    .line 694
    :cond_17
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    if-eq v0, v3, :cond_18

    move-object v7, v1

    goto :goto_11

    :cond_18
    move-object v7, v2

    .line 699
    :goto_11
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v3, 0x2

    if-lt v14, v3, :cond_1c

    .line 700
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_19

    goto :goto_15

    :cond_19
    int-to-long v3, v14

    .line 710
    div-long v3, v10, v3

    .line 711
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v8, v5

    :goto_12
    if-ge v8, v14, :cond_1b

    move-object v12, v6

    int-to-long v5, v8

    mul-long v23, v5, v3

    add-int/lit8 v5, v14, -0x1

    if-ne v8, v5, :cond_1a

    move-wide/from16 v25, v10

    goto :goto_13

    :cond_1a
    add-long v5, v23, v3

    move-wide/from16 v25, v5

    .line 715
    :goto_13
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$4;

    move-object/from16 v22, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v0

    invoke-direct/range {v22 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$4;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v6, v12

    const/4 v5, 0x0

    goto :goto_12

    :cond_1b
    move-object v12, v6

    .line 732
    :try_start_3
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_17

    :catch_3
    const-wide/16 v3, 0x0

    :goto_14
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 736
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 737
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 738
    aget-wide v18, v5, v8

    aget-wide v20, v6, v8

    add-double v18, v18, v20

    const/4 v12, 0x1

    .line 739
    aget-wide v13, v5, v12

    aget-wide v5, v6, v12

    add-double/2addr v13, v5

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v18, v6, v8

    aput-wide v13, v6, v12

    .line 740
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_14

    :cond_1c
    :goto_15
    const-wide/16 v3, 0x0

    :goto_16
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 703
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 704
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 705
    aget-wide v18, v5, v8

    aget-wide v20, v6, v8

    add-double v18, v18, v20

    const/4 v9, 0x1

    .line 706
    aget-wide v12, v5, v9

    aget-wide v5, v6, v9

    add-double/2addr v12, v5

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v18, v6, v8

    aput-wide v12, v6, v9

    .line 707
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_16

    :cond_1d
    :goto_17
    return-object v7

    .line 745
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || b == null || a.length() != b.length() || !a.isNumeric() || !b.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asin(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 3235
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->asin(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static asin(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 3248
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3251
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3253
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 3255
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3257
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 3258
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3259
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3260
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 3261
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3262
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3264
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3256
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 3267
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 3268
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 3269
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    const-wide/16 v14, 0x1

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_9

    .line 3299
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_a

    .line 3300
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 3301
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 3302
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v3, v13

    .line 3308
    div-long v3, v8, v3

    .line 3309
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_1
    if-ge v1, v13, :cond_8

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3313
    :goto_2
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$50;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$50;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3326
    :cond_8
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    :goto_3
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3329
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3330
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3304
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3305
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_4

    .line 3334
    :cond_a
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_f

    .line 3335
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 3336
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 3337
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    goto :goto_8

    :cond_b
    int-to-long v3, v13

    .line 3343
    div-long v3, v8, v3

    .line 3344
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_5
    if-ge v1, v13, :cond_d

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_c

    move-wide/from16 v19, v8

    goto :goto_6

    :cond_c
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3348
    :goto_6
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$51;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$51;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3362
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_e

    :catch_1
    :goto_7
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3365
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3366
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_7

    :cond_e
    :goto_8
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3339
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3340
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAsin([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_8

    .line 3372
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    if-lt v13, v4, :cond_14

    .line 3270
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_11

    goto :goto_d

    :cond_11
    int-to-long v2, v13

    .line 3275
    div-long v16, v8, v2

    .line 3276
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v1

    :goto_a
    if-ge v5, v13, :cond_13

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_12

    move-wide v3, v8

    goto :goto_b

    :cond_12
    add-long v3, v1, v16

    .line 3280
    :goto_b
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$49;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$49;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_a

    :cond_13
    move-object/from16 v20, v6

    .line 3292
    :try_start_2
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    :goto_c
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3295
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_c

    :cond_14
    :goto_d
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3272
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_d

    :cond_15
    :goto_e
    return-object v12

    .line 3251
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3249
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static atan(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 3541
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 3542
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->atan(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static atan(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 3555
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3558
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3560
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 3561
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 3562
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3564
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 3565
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3566
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3567
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 3568
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3569
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3571
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3563
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 3574
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 3575
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 3576
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    const-wide/16 v14, 0x1

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_9

    .line 3606
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_a

    .line 3607
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 3608
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 3609
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v3, v13

    .line 3615
    div-long v3, v8, v3

    .line 3616
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_1
    if-ge v1, v13, :cond_8

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3620
    :goto_2
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$56;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$56;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3633
    :cond_8
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    :goto_3
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3636
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3637
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3611
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3612
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([F)[F

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_4

    .line 3641
    :cond_a
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_f

    .line 3642
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 3643
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 3644
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    goto :goto_8

    :cond_b
    int-to-long v3, v13

    .line 3650
    div-long v3, v8, v3

    .line 3651
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_5
    if-ge v1, v13, :cond_d

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_c

    move-wide/from16 v19, v8

    goto :goto_6

    :cond_c
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3655
    :goto_6
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$57;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$57;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3669
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_e

    :catch_1
    :goto_7
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3672
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3673
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_7

    :cond_e
    :goto_8
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3646
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3647
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexAtan([D)[D

    move-result-object v1

    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_8

    .line 3679
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    if-lt v13, v4, :cond_14

    .line 3577
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_11

    goto :goto_d

    :cond_11
    int-to-long v2, v13

    .line 3582
    div-long v16, v8, v2

    .line 3583
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v1

    :goto_a
    if-ge v5, v13, :cond_13

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_12

    move-wide v3, v8

    goto :goto_b

    :cond_12
    add-long v3, v1, v16

    .line 3587
    :goto_b
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$55;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$55;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_a

    :cond_13
    move-object/from16 v20, v6

    .line 3599
    :try_start_2
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    :goto_c
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3602
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_c

    :cond_14
    :goto_d
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3579
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_d

    :cond_15
    :goto_e
    return-object v12

    .line 3558
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3556
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static complexAbs([D)D
    .locals 4

    const/4 v0, 0x0

    .line 290
    aget-wide v0, p0, v0

    mul-double/2addr v0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static complexAbs([F)F
    .locals 2

    const/4 v0, 0x0

    .line 278
    aget v0, p0, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static complexAcos([D)[D
    .locals 10

    const/4 v0, 0x2

    .line 469
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    .line 470
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    .line 471
    invoke-static {p0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 472
    aget-wide v4, v2, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    aput-wide v4, v2, v3

    const/4 v4, 0x1

    .line 473
    aget-wide v8, v2, v4

    sub-double/2addr v6, v8

    aput-wide v6, v2, v4

    .line 474
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object v1

    .line 475
    aget-wide v5, v1, v3

    aget-wide v7, p0, v3

    add-double/2addr v5, v7

    aput-wide v5, v1, v3

    .line 476
    aget-wide v2, v1, v4

    aget-wide v5, p0, v4

    add-double/2addr v2, v5

    aput-wide v2, v1, v4

    .line 477
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([D)[D

    move-result-object p0

    .line 478
    invoke-static {v0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static complexAcos([F)[F
    .locals 7

    const/4 v0, 0x2

    .line 447
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 448
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 449
    invoke-static {p0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 450
    aget v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v4, 0x1

    .line 451
    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 452
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object v1

    .line 453
    aget v2, v1, v3

    aget v5, p0, v3

    add-float/2addr v2, v5

    aput v2, v1, v3

    .line 454
    aget v2, v1, v4

    aget p0, p0, v4

    add-float/2addr v2, p0

    aput v2, v1, v4

    .line 455
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([F)[F

    move-result-object p0

    .line 456
    invoke-static {v0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static complexAsin([D)[D
    .locals 10

    const/4 v0, 0x2

    .line 425
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    .line 426
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    .line 427
    invoke-static {p0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 428
    aget-wide v4, v2, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    aput-wide v4, v2, v3

    const/4 v4, 0x1

    .line 429
    aget-wide v8, v2, v4

    sub-double/2addr v6, v8

    aput-wide v6, v2, v4

    .line 430
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([D)[D

    move-result-object v2

    .line 431
    invoke-static {v1, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object p0

    .line 432
    aget-wide v5, v2, v3

    aget-wide v7, p0, v3

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    .line 433
    aget-wide v5, v2, v4

    aget-wide v7, p0, v4

    add-double/2addr v5, v7

    aput-wide v5, v2, v4

    .line 434
    invoke-static {v0, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static complexAsin([F)[F
    .locals 7

    const/4 v0, 0x2

    .line 403
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 404
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 405
    invoke-static {p0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 406
    aget v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v4, 0x1

    .line 407
    aget v6, v2, v4

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 408
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([F)[F

    move-result-object v2

    .line 409
    invoke-static {v1, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object p0

    .line 410
    aget v1, v2, v3

    aget v5, p0, v3

    add-float/2addr v1, v5

    aput v1, v2, v3

    .line 411
    aget v1, v2, v4

    aget p0, p0, v4

    add-float/2addr v1, p0

    aput v1, v2, v4

    .line 412
    invoke-static {v0, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static complexAtan([D)[D
    .locals 16

    const/4 v0, 0x2

    .line 513
    new-array v1, v0, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v5

    .line 514
    aget-wide v8, p0, v2

    add-double v10, v3, v8

    .line 515
    aget-wide v12, p0, v5

    add-double v14, v6, v12

    new-array v6, v0, [D

    aput-wide v10, v6, v2

    aput-wide v14, v6, v5

    sub-double/2addr v3, v8

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v12

    .line 517
    new-array v0, v0, [D

    aput-wide v3, v0, v2

    aput-wide v7, v0, v5

    .line 518
    invoke-static {v6, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([D[D)[D

    move-result-object v0

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([D)[D

    move-result-object v0

    .line 519
    aget-wide v2, v1, v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    aput-wide v2, v1, v5

    .line 520
    invoke-static {v1, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object v0

    return-object v0
.end method

.method public static complexAtan([F)[F
    .locals 10

    const/4 v0, 0x2

    .line 492
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, v4

    .line 493
    aget v6, p0, v2

    add-float v7, v3, v6

    .line 494
    aget p0, p0, v4

    add-float v8, v5, p0

    new-array v9, v0, [F

    aput v7, v9, v2

    aput v8, v9, v4

    sub-float/2addr v3, v6

    sub-float/2addr v5, p0

    .line 496
    new-array p0, v0, [F

    aput v3, p0, v2

    aput v5, p0, v4

    .line 497
    invoke-static {v9, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([F[F)[F

    move-result-object p0

    invoke-static {p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([F)[F

    move-result-object p0

    .line 498
    aget v0, v1, v4

    float-to-double v2, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v5

    double-to-float v0, v2

    aput v0, v1, v4

    .line 499
    invoke-static {v1, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static complexCos([D)[D
    .locals 8

    const/4 v0, 0x0

    .line 102
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    .line 103
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    aget-wide v6, p0, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    return-object p0
.end method

.method public static complexCos([F)[F
    .locals 8

    const/4 v0, 0x0

    .line 87
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget v4, p0, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    double-to-float v1, v1

    .line 88
    aget v2, p0, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    aget p0, p0, v3

    float-to-double v6, p0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float p0, v4

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    aput p0, v2, v3

    return-object v2
.end method

.method public static complexDiv([D[D)[D
    .locals 14

    const/4 v0, 0x0

    .line 194
    aget-wide v1, p1, v0

    mul-double v3, v1, v1

    const/4 v5, 0x1

    aget-wide v6, p1, v5

    mul-double v8, v6, v6

    add-double/2addr v3, v8

    .line 196
    aget-wide v8, p0, v0

    mul-double v10, v8, v1

    aget-wide v12, p0, v5

    mul-double p0, v12, v6

    add-double/2addr v10, p0

    div-double/2addr v10, v3

    mul-double/2addr v12, v1

    mul-double/2addr v8, v6

    sub-double/2addr v12, v8

    div-double/2addr v12, v3

    const/4 p0, 0x2

    .line 197
    new-array p0, p0, [D

    aput-wide v10, p0, v0

    aput-wide v12, p0, v5

    return-object p0
.end method

.method public static complexDiv([F[F)[F
    .locals 7

    const/4 v0, 0x0

    .line 177
    aget v1, p1, v0

    mul-float v2, v1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    mul-float v4, p1, p1

    add-float/2addr v2, v4

    .line 179
    aget v4, p0, v0

    mul-float v5, v4, v1

    aget p0, p0, v3

    mul-float v6, p0, p1

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    mul-float/2addr p0, v1

    mul-float/2addr v4, p1

    sub-float/2addr p0, v4

    div-float/2addr p0, v2

    const/4 p1, 0x2

    .line 180
    new-array p1, p1, [F

    aput v5, p1, v0

    aput p0, p1, v3

    return-object p1
.end method

.method public static complexExp([D)[D
    .locals 8

    const/4 v0, 0x0

    .line 388
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    .line 389
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    aget-wide v6, p0, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    return-object p0
.end method

.method public static complexExp([F)[F
    .locals 8

    const/4 v0, 0x0

    .line 373
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget v4, p0, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    double-to-float v1, v1

    .line 374
    aget v2, p0, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    aget p0, p0, v3

    float-to-double v6, p0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float p0, v4

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    aput p0, v2, v3

    return-object v2
.end method

.method public static complexLog([D)[D
    .locals 8

    const/4 v0, 0x0

    .line 320
    aget-wide v1, p0, v0

    mul-double/2addr v1, v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 321
    aget-wide v4, p0, v3

    aget-wide v6, p0, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    .line 322
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    const/4 p0, 0x2

    .line 323
    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    return-object p0
.end method

.method public static complexLog([F)[F
    .locals 9

    const/4 v0, 0x0

    .line 303
    aget v1, p0, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 304
    aget v1, p0, v2

    float-to-double v5, v1

    aget p0, p0, v0

    float-to-double v7, p0

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    .line 305
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    double-to-float p0, v3

    double-to-float v1, v5

    const/4 v3, 0x2

    .line 306
    new-array v3, v3, [F

    aput p0, v3, v0

    aput v1, v3, v2

    return-object v3
.end method

.method public static complexLog10([D)[D
    .locals 10

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 355
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 356
    aget-wide v3, p0, v2

    mul-double/2addr v3, v3

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    mul-double/2addr v6, v6

    add-double/2addr v3, v6

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 357
    aget-wide v6, p0, v5

    aget-wide v8, p0, v2

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v6

    div-double/2addr v6, v0

    .line 358
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    div-double/2addr v3, v0

    const/4 p0, 0x2

    .line 359
    new-array p0, p0, [D

    aput-wide v3, p0, v2

    aput-wide v6, p0, v5

    return-object p0
.end method

.method public static complexLog10([F)[F
    .locals 11

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 337
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const/4 v2, 0x0

    .line 338
    aget v3, p0, v2

    mul-float/2addr v3, v3

    const/4 v4, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 339
    aget v3, p0, v4

    float-to-double v7, v3

    aget p0, p0, v2

    float-to-double v9, p0

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    div-double/2addr v7, v0

    .line 340
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v0

    double-to-float p0, v5

    double-to-float v0, v7

    const/4 v1, 0x2

    .line 341
    new-array v1, v1, [F

    aput p0, v1, v2

    aput v0, v1, v4

    return-object v1
.end method

.method public static complexMult([D[D)[D
    .locals 12

    const/4 v0, 0x0

    .line 162
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double v5, v1, v3

    const/4 v7, 0x1

    aget-wide v8, p0, v7

    aget-wide p0, p1, v7

    mul-double v10, v8, p0

    sub-double/2addr v5, v10

    mul-double/2addr v8, v3

    mul-double/2addr v1, p0

    add-double/2addr v8, v1

    const/4 p0, 0x2

    .line 163
    new-array p0, p0, [D

    aput-wide v5, p0, v0

    aput-wide v8, p0, v7

    return-object p0
.end method

.method public static complexMult([F[F)[F
    .locals 6

    const/4 v0, 0x0

    .line 146
    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v3, v1, v2

    const/4 v4, 0x1

    aget p0, p0, v4

    aget p1, p1, v4

    mul-float v5, p0, p1

    sub-float/2addr v3, v5

    mul-float/2addr p0, v2

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    const/4 p1, 0x2

    .line 147
    new-array p1, p1, [F

    aput v3, p1, v0

    aput p0, p1, v4

    return-object p1
.end method

.method public static complexPow([DD)[D
    .locals 8

    const/4 v0, 0x0

    .line 230
    aget-wide v1, p0, v0

    mul-double/2addr v1, v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 231
    aget-wide v4, p0, v3

    aget-wide v6, p0, v0

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    mul-double/2addr p1, v4

    .line 232
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v1

    .line 233
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v4, p0, v0

    aput-wide v1, p0, v3

    return-object p0
.end method

.method public static complexPow([FD)[F
    .locals 9

    const/4 v0, 0x0

    .line 212
    aget v1, p0, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 213
    aget v1, p0, v2

    float-to-double v5, v1

    aget p0, p0, v0

    float-to-double v7, p0

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr p1, v5

    .line 214
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float p0, v5

    .line 215
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    mul-double/2addr v3, p1

    double-to-float p1, v3

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput p0, p2, v0

    aput p1, p2, v2

    return-object p2
.end method

.method public static complexSin([D)[D
    .locals 8

    const/4 v0, 0x0

    .line 72
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    .line 73
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aget-wide v6, p0, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    return-object p0
.end method

.method public static complexSin([F)[F
    .locals 8

    const/4 v0, 0x0

    .line 57
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    const/4 v3, 0x1

    aget v4, p0, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    double-to-float v1, v1

    .line 58
    aget v2, p0, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aget p0, p0, v3

    float-to-double v6, p0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float p0, v4

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    aput p0, v2, v3

    return-object v2
.end method

.method public static complexSqrt([D)[D
    .locals 12

    const/4 v0, 0x0

    .line 263
    aget-wide v1, p0, v0

    mul-double/2addr v1, v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 264
    aget-wide v4, p0, v0

    add-double/2addr v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 265
    aget-wide v8, p0, v3

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v8

    aget-wide v10, p0, v0

    neg-double v10, v10

    add-double/2addr v10, v1

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v8, v1

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v4, p0, v0

    aput-wide v8, p0, v3

    return-object p0
.end method

.method public static complexSqrt([F)[F
    .locals 11

    const/4 v0, 0x0

    .line 247
    aget v1, p0, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 248
    aget v1, p0, v0

    float-to-double v5, v1

    add-double/2addr v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 249
    aget v5, p0, v2

    invoke-static {v5}, Lorg/apache/commons/math3/util/FastMath;->signum(F)F

    move-result v5

    float-to-double v5, v5

    aget p0, p0, v0

    neg-float p0, p0

    float-to-double v9, p0

    add-double/2addr v9, v3

    div-double/2addr v9, v7

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    double-to-float p0, v5

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    aput p0, v3, v2

    return-object v3
.end method

.method public static complexTan([D)[D
    .locals 1

    .line 130
    invoke-static {p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([D)[D

    move-result-object v0

    .line 131
    invoke-static {p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([D)[D

    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([D[D)[D

    move-result-object p0

    return-object p0
.end method

.method public static complexTan([F)[F
    .locals 1

    .line 116
    invoke-static {p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([F)[F

    move-result-object v0

    .line 117
    invoke-static {p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([F)[F

    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static cos(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2896
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2897
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->cos(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static cos(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 2910
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2913
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2915
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2916
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2917
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2919
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 2920
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2921
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2922
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2923
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2924
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2926
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2918
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 2929
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 2930
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2931
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 2961
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v3, :cond_a

    .line 2962
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 2963
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 2964
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-gez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v6, v13

    .line 2973
    div-long v6, v8, v6

    .line 2974
    new-array v3, v13, [Ljava/util/concurrent/Future;

    move v10, v1

    :goto_1
    if-ge v10, v13, :cond_8

    int-to-long v14, v10

    mul-long v17, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v14, v17, v6

    move-wide/from16 v19, v14

    .line 2978
    :goto_2
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$44;

    move-object/from16 v16, v11

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$44;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2994
    :cond_8
    :try_start_0
    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 2998
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 2999
    aget v6, v3, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    aget v13, v3, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 3000
    aget v7, v3, v1

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    aget v3, v3, v5

    move-object/from16 p0, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    double-to-float v1, v13

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v6, v2, v3

    aput v1, v2, v5

    move-object/from16 v1, p0

    .line 3001
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    move-object v2, v1

    move v1, v3

    goto :goto_3

    :cond_9
    :goto_4
    move v3, v1

    move-object v1, v2

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2967
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 2968
    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    aget v13, v2, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 2969
    aget v7, v2, v3

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    aget v2, v2, v5

    move v7, v6

    float-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    double-to-float v2, v13

    new-array v5, v4, [F

    aput v7, v5, v3

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 2970
    invoke-virtual {v1, v10, v11, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_5

    .line 3005
    :cond_a
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_f

    .line 3006
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 3007
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 3008
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v2, v13

    .line 3017
    div-long v2, v8, v2

    .line 3018
    new-array v5, v13, [Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_d

    int-to-long v10, v6

    mul-long v24, v10, v2

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_c

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_c
    add-long v10, v24, v2

    move-wide/from16 v26, v10

    .line 3022
    :goto_7
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$45;

    move-object/from16 v23, v7

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    invoke-direct/range {v23 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$45;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3038
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 3042
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 3043
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 3044
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 3045
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 3011
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 3012
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 3013
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 3014
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_a

    .line 3050
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_b
    move v3, v1

    if-lt v13, v4, :cond_14

    .line 2932
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v0, v13

    .line 2937
    div-long v10, v8, v0

    .line 2938
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v3

    :goto_c
    if-ge v15, v13, :cond_13

    int-to-long v0, v15

    mul-long v1, v0, v10

    add-int/lit8 v0, v13, -0x1

    if-ne v15, v0, :cond_12

    move-wide v3, v8

    goto :goto_d

    :cond_12
    add-long v3, v1, v10

    .line 2942
    :goto_d
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$43;

    move-object/from16 v0, v16

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$43;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 2954
    :cond_13
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 2957
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2934
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 2913
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2911
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static diff(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 2

    .line 761
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 762
    :goto_0
    invoke-static {p0, p1, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->diff(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static diff(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    if-eqz v8, :cond_20

    if-eqz v9, :cond_20

    .line 776
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 779
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 781
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v10

    .line 782
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const/4 v3, 0x2

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 785
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 787
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 788
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 789
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 790
    aget v6, v1, v5

    aget v7, v2, v5

    sub-float/2addr v6, v7

    aget v1, v1, v4

    aget v2, v2, v4

    sub-float/2addr v1, v2

    new-array v2, v3, [F

    aput v6, v2, v5

    aput v1, v2, v4

    invoke-static {v0, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 791
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 792
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 793
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 794
    aget-wide v6, v1, v5

    aget-wide v8, v2, v5

    sub-double/2addr v6, v8

    aget-wide v8, v1, v4

    aget-wide v1, v2, v4

    sub-double/2addr v8, v1

    new-array v1, v3, [D

    aput-wide v6, v1, v5

    aput-wide v8, v1, v4

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 796
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v6

    long-to-int v14, v6

    .line 800
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v15, 0x1

    if-eqz v1, :cond_a

    .line 801
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v7

    if-lt v14, v3, :cond_8

    .line 802
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v0, v14

    .line 807
    div-long v17, v10, v0

    .line 808
    new-array v6, v14, [Ljava/util/concurrent/Future;

    :goto_0
    if-ge v5, v14, :cond_7

    int-to-long v0, v5

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v5, v0, :cond_6

    move-wide v3, v10

    goto :goto_1

    :cond_6
    add-long v3, v1, v17

    .line 812
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$5;

    move-object/from16 v0, v19

    move/from16 v20, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$5;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v20

    add-int/lit8 v5, v20, 0x1

    move-object v7, v12

    move-object/from16 v6, v21

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v21, v6

    move-object v12, v7

    .line 824
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 827
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_2

    :cond_8
    :goto_3
    move-object v12, v7

    const-wide/16 v0, 0x0

    :goto_4
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 804
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_4

    :cond_9
    :goto_5
    move-object v7, v12

    goto/16 :goto_17

    .line 831
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 832
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    if-lt v14, v3, :cond_e

    .line 833
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v0, v14

    .line 838
    div-long v17, v10, v0

    .line 839
    new-array v13, v14, [Ljava/util/concurrent/Future;

    move v7, v5

    :goto_6
    if-ge v7, v14, :cond_d

    int-to-long v0, v7

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v7, v0, :cond_c

    move-wide v3, v10

    goto :goto_7

    :cond_c
    add-long v3, v1, v17

    .line 843
    :goto_7
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$6;

    move-object/from16 v0, v19

    move-object v5, v12

    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$6;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v20

    add-int/lit8 v7, v20, 0x1

    goto :goto_6

    .line 855
    :cond_d
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 v0, 0x0

    :goto_8
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 858
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_8

    :cond_e
    :goto_9
    const-wide/16 v0, 0x0

    :goto_a
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 835
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_a

    .line 862
    :cond_f
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_16

    .line 863
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 864
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 865
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    .line 866
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_b

    .line 867
    :cond_10
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    if-eq v0, v6, :cond_11

    move-object v7, v1

    goto :goto_b

    :cond_11
    move-object v7, v2

    .line 872
    :goto_b
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v14, v3, :cond_15

    .line 873
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v8

    cmp-long v6, v10, v8

    if-gez v6, :cond_12

    goto :goto_f

    :cond_12
    int-to-long v8, v14

    .line 883
    div-long v8, v10, v8

    .line 884
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v12, v5

    :goto_c
    if-ge v12, v14, :cond_14

    int-to-long v3, v12

    mul-long v23, v3, v8

    add-int/lit8 v3, v14, -0x1

    if-ne v12, v3, :cond_13

    move-wide/from16 v25, v10

    goto :goto_d

    :cond_13
    add-long v3, v23, v8

    move-wide/from16 v25, v3

    .line 888
    :goto_d
    new-instance v3, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$7;

    move-object/from16 v22, v3

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v0

    invoke-direct/range {v22 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$7;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_c

    .line 905
    :cond_14
    :try_start_2
    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_17

    :catch_2
    const-wide/16 v3, 0x0

    :goto_e
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 909
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 910
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    .line 911
    aget v9, v6, v5

    aget v12, v8, v5

    sub-float/2addr v9, v12

    const/4 v12, 0x1

    .line 912
    aget v6, v6, v12

    aget v8, v8, v12

    sub-float/2addr v6, v8

    const/4 v8, 0x2

    new-array v14, v8, [F

    aput v9, v14, v5

    aput v6, v14, v12

    .line 913
    invoke-virtual {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_e

    :cond_15
    :goto_f
    const-wide/16 v3, 0x0

    :goto_10
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 876
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 877
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    .line 878
    aget v9, v6, v5

    aget v12, v8, v5

    sub-float/2addr v9, v12

    const/4 v12, 0x1

    .line 879
    aget v6, v6, v12

    aget v8, v8, v12

    sub-float/2addr v6, v8

    const/4 v8, 0x2

    new-array v14, v8, [F

    aput v9, v14, v5

    aput v6, v14, v12

    .line 880
    invoke-virtual {v0, v3, v4, v14}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_10

    .line 917
    :cond_16
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1e

    .line 918
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 919
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 920
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    .line 921
    invoke-static {v0, v10, v11, v5}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    .line 922
    :cond_17
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    if-eq v0, v3, :cond_18

    move-object v7, v1

    goto :goto_11

    :cond_18
    move-object v7, v2

    .line 927
    :goto_11
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v3, 0x2

    if-lt v14, v3, :cond_1c

    .line 928
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_19

    goto :goto_15

    :cond_19
    int-to-long v3, v14

    .line 938
    div-long v3, v10, v3

    .line 939
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v8, v5

    :goto_12
    if-ge v8, v14, :cond_1b

    move-object v12, v6

    int-to-long v5, v8

    mul-long v23, v5, v3

    add-int/lit8 v5, v14, -0x1

    if-ne v8, v5, :cond_1a

    move-wide/from16 v25, v10

    goto :goto_13

    :cond_1a
    add-long v5, v23, v3

    move-wide/from16 v25, v5

    .line 943
    :goto_13
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$8;

    move-object/from16 v22, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v0

    invoke-direct/range {v22 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$8;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v6, v12

    const/4 v5, 0x0

    goto :goto_12

    :cond_1b
    move-object v12, v6

    .line 960
    :try_start_3
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_17

    :catch_3
    const-wide/16 v3, 0x0

    :goto_14
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 964
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 965
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 966
    aget-wide v18, v5, v8

    aget-wide v20, v6, v8

    sub-double v18, v18, v20

    const/4 v12, 0x1

    .line 967
    aget-wide v13, v5, v12

    aget-wide v5, v6, v12

    sub-double/2addr v13, v5

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v18, v6, v8

    aput-wide v13, v6, v12

    .line 968
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_14

    :cond_1c
    :goto_15
    const-wide/16 v3, 0x0

    :goto_16
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 931
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 932
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 933
    aget-wide v18, v5, v8

    aget-wide v20, v6, v8

    sub-double v18, v18, v20

    const/4 v9, 0x1

    .line 934
    aget-wide v12, v5, v9

    aget-wide v5, v6, v9

    sub-double/2addr v12, v5

    const/4 v5, 0x2

    new-array v6, v5, [D

    aput-wide v18, v6, v8

    aput-wide v12, v6, v9

    .line 935
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_16

    :cond_1d
    :goto_17
    return-object v7

    .line 973
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || b == null || a.length() != b.length() || !a.isNumeric() || !b.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static div(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 2

    .line 1217
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 1218
    :goto_0
    invoke-static {p0, p1, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->div(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static div(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    if-eqz v8, :cond_20

    if-eqz v9, :cond_20

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1235
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v10

    .line 1238
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1239
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1241
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1242
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1243
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 1244
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 1245
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1246
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([F[F)[F

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1247
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 1248
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 1249
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1250
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([D[D)[D

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v14, v3

    .line 1256
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v15, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 1257
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v7

    if-lt v14, v3, :cond_8

    .line 1258
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v0, v14

    .line 1263
    div-long v17, v10, v0

    .line 1264
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v5, v4

    :goto_0
    if-ge v5, v14, :cond_7

    int-to-long v0, v5

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v5, v0, :cond_6

    move-wide v3, v10

    goto :goto_1

    :cond_6
    add-long v3, v1, v17

    .line 1268
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$13;

    move-object/from16 v0, v19

    move/from16 v20, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$13;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v20

    add-int/lit8 v5, v20, 0x1

    move-object v7, v12

    move-object/from16 v6, v21

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v21, v6

    move-object v12, v7

    .line 1280
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1283
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_2

    :cond_8
    :goto_3
    move-object v12, v7

    const-wide/16 v0, 0x0

    :goto_4
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1260
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_4

    :cond_9
    :goto_5
    move-object v7, v12

    goto/16 :goto_17

    .line 1287
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1288
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    if-lt v14, v3, :cond_e

    .line 1289
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v0, v14

    .line 1294
    div-long v17, v10, v0

    .line 1295
    new-array v13, v14, [Ljava/util/concurrent/Future;

    move v7, v4

    :goto_6
    if-ge v7, v14, :cond_d

    int-to-long v0, v7

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v7, v0, :cond_c

    move-wide v3, v10

    goto :goto_7

    :cond_c
    add-long v3, v1, v17

    .line 1299
    :goto_7
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$14;

    move-object/from16 v0, v19

    move-object v5, v12

    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$14;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v20

    add-int/lit8 v7, v20, 0x1

    goto :goto_6

    .line 1311
    :cond_d
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 v0, 0x0

    :goto_8
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1314
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_8

    :cond_e
    :goto_9
    const-wide/16 v0, 0x0

    :goto_a
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1291
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_a

    .line 1318
    :cond_f
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v1, :cond_16

    .line 1319
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1320
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1321
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    .line 1322
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_b

    .line 1323
    :cond_10
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    if-eq v0, v6, :cond_11

    move-object v7, v1

    goto :goto_b

    :cond_11
    move-object v7, v2

    .line 1328
    :goto_b
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v14, v3, :cond_15

    .line 1329
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v8

    cmp-long v6, v10, v8

    if-gez v6, :cond_12

    goto :goto_f

    :cond_12
    int-to-long v8, v14

    .line 1340
    div-long v8, v10, v8

    .line 1341
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v12, v4

    :goto_c
    if-ge v12, v14, :cond_14

    int-to-long v3, v12

    mul-long v25, v3, v8

    add-int/lit8 v3, v14, -0x1

    if-ne v12, v3, :cond_13

    move-wide/from16 v27, v10

    goto :goto_d

    :cond_13
    add-long v3, v25, v8

    move-wide/from16 v27, v3

    .line 1345
    :goto_d
    new-instance v3, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$15;

    move-object/from16 v24, v3

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v0

    invoke-direct/range {v24 .. v31}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$15;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto :goto_c

    .line 1363
    :cond_14
    :try_start_2
    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_17

    :catch_2
    const-wide/16 v3, 0x0

    :goto_e
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 1367
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 1368
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    const/4 v9, 0x0

    .line 1369
    aget v12, v8, v9

    mul-float v14, v12, v12

    aget v8, v8, v5

    mul-float v17, v8, v8

    add-float v14, v14, v17

    .line 1370
    aget v17, v6, v9

    mul-float v18, v17, v12

    aget v6, v6, v5

    mul-float v19, v6, v8

    add-float v18, v18, v19

    div-float v18, v18, v14

    mul-float/2addr v6, v12

    mul-float v17, v17, v8

    sub-float v6, v6, v17

    div-float/2addr v6, v14

    const/4 v8, 0x2

    .line 1371
    new-array v12, v8, [F

    aput v18, v12, v9

    aput v6, v12, v5

    .line 1372
    invoke-virtual {v0, v3, v4, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_e

    :cond_15
    :goto_f
    const-wide/16 v3, 0x0

    :goto_10
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 1332
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 1333
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    const/4 v9, 0x0

    .line 1334
    aget v12, v8, v9

    mul-float v14, v12, v12

    aget v8, v8, v5

    mul-float v17, v8, v8

    add-float v14, v14, v17

    .line 1335
    aget v17, v6, v9

    mul-float v18, v17, v12

    aget v6, v6, v5

    mul-float v19, v6, v8

    add-float v18, v18, v19

    div-float v18, v18, v14

    mul-float/2addr v6, v12

    mul-float v17, v17, v8

    sub-float v6, v6, v17

    div-float/2addr v6, v14

    const/4 v8, 0x2

    .line 1336
    new-array v12, v8, [F

    aput v18, v12, v9

    aput v6, v12, v5

    .line 1337
    invoke-virtual {v0, v3, v4, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_10

    .line 1376
    :cond_16
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1e

    .line 1377
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1378
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1379
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    .line 1380
    invoke-static {v0, v10, v11, v3}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    .line 1381
    :cond_17
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    if-eq v0, v3, :cond_18

    move-object v7, v1

    goto :goto_11

    :cond_18
    move-object v7, v2

    .line 1386
    :goto_11
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v3, 0x2

    if-lt v14, v3, :cond_1c

    .line 1387
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_19

    goto/16 :goto_15

    :cond_19
    int-to-long v3, v14

    .line 1398
    div-long v3, v10, v3

    .line 1399
    new-array v6, v14, [Ljava/util/concurrent/Future;

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v14, :cond_1b

    move-object v12, v6

    int-to-long v5, v8

    mul-long v25, v5, v3

    add-int/lit8 v5, v14, -0x1

    if-ne v8, v5, :cond_1a

    move-wide/from16 v27, v10

    goto :goto_13

    :cond_1a
    add-long v5, v25, v3

    move-wide/from16 v27, v5

    .line 1403
    :goto_13
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$16;

    move-object/from16 v24, v5

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v0

    invoke-direct/range {v24 .. v31}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$16;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v6, v12

    const/4 v5, 0x1

    goto :goto_12

    :cond_1b
    move-object v12, v6

    .line 1421
    :try_start_3
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_17

    :catch_3
    const-wide/16 v3, 0x0

    :goto_14
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 1425
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 1426
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 1427
    aget-wide v17, v6, v8

    mul-double v19, v17, v17

    const/4 v9, 0x1

    aget-wide v21, v6, v9

    mul-double v23, v21, v21

    add-double v19, v19, v23

    .line 1428
    aget-wide v23, v5, v8

    mul-double v25, v23, v17

    aget-wide v27, v5, v9

    mul-double v5, v27, v21

    add-double v25, v25, v5

    div-double v25, v25, v19

    mul-double v27, v27, v17

    mul-double v23, v23, v21

    sub-double v27, v27, v23

    div-double v27, v27, v19

    const/4 v5, 0x2

    .line 1429
    new-array v6, v5, [D

    aput-wide v25, v6, v8

    aput-wide v27, v6, v9

    .line 1430
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_14

    :cond_1c
    :goto_15
    const-wide/16 v3, 0x0

    :goto_16
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 1390
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 1391
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 1392
    aget-wide v17, v6, v8

    mul-double v19, v17, v17

    const/4 v9, 0x1

    aget-wide v21, v6, v9

    mul-double v23, v21, v21

    add-double v19, v19, v23

    .line 1393
    aget-wide v23, v5, v8

    mul-double v25, v23, v17

    aget-wide v27, v5, v9

    mul-double v5, v27, v21

    add-double v25, v25, v5

    div-double v25, v25, v19

    mul-double v27, v27, v17

    mul-double v23, v23, v21

    sub-double v27, v27, v23

    div-double v27, v27, v19

    const/4 v5, 0x2

    .line 1394
    new-array v6, v5, [D

    aput-wide v25, v6, v8

    aput-wide v27, v6, v9

    .line 1395
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_16

    :cond_1d
    :goto_17
    return-object v7

    .line 1435
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || b == null || a.length() != b.length() || !a.isNumeric() || !b.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static exp(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2375
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2376
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->exp(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static exp(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2392
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2394
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2396
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2398
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 2399
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2400
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexExp([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2401
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2402
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2403
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexExp([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2405
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2397
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 2408
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 2409
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2410
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 2440
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v3, :cond_a

    .line 2441
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 2442
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 2443
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-gez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v6, v13

    .line 2452
    div-long v6, v8, v6

    .line 2453
    new-array v3, v13, [Ljava/util/concurrent/Future;

    move v10, v1

    :goto_1
    if-ge v10, v13, :cond_8

    int-to-long v14, v10

    mul-long v17, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v14, v17, v6

    move-wide/from16 v19, v14

    .line 2457
    :goto_2
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$34;

    move-object/from16 v16, v11

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$34;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2473
    :cond_8
    :try_start_0
    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 2477
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 2478
    aget v6, v3, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    aget v13, v3, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 2479
    aget v7, v3, v1

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v13

    aget v3, v3, v5

    move-object/from16 p0, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    double-to-float v1, v13

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v6, v2, v3

    aput v1, v2, v5

    move-object/from16 v1, p0

    .line 2480
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    move-object v2, v1

    move v1, v3

    goto :goto_3

    :cond_9
    :goto_4
    move v3, v1

    move-object v1, v2

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2446
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 2447
    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v6

    aget v13, v2, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 2448
    aget v7, v2, v3

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v13

    aget v2, v2, v5

    move v7, v6

    float-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    double-to-float v2, v13

    new-array v5, v4, [F

    aput v7, v5, v3

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 2449
    invoke-virtual {v1, v10, v11, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_5

    .line 2484
    :cond_a
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_f

    .line 2485
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 2486
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 2487
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v2, v13

    .line 2496
    div-long v2, v8, v2

    .line 2497
    new-array v5, v13, [Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_d

    int-to-long v10, v6

    mul-long v24, v10, v2

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_c

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_c
    add-long v10, v24, v2

    move-wide/from16 v26, v10

    .line 2501
    :goto_7
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$35;

    move-object/from16 v23, v7

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    invoke-direct/range {v23 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$35;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2517
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2521
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 2522
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 2523
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 2524
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2490
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 2491
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 2492
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 2493
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_a

    .line 2529
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_b
    move v3, v1

    if-lt v13, v4, :cond_14

    .line 2411
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v0, v13

    .line 2416
    div-long v10, v8, v0

    .line 2417
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v3

    :goto_c
    if-ge v15, v13, :cond_13

    int-to-long v0, v15

    mul-long v1, v0, v10

    add-int/lit8 v0, v13, -0x1

    if-ne v15, v0, :cond_12

    move-wide v3, v8

    goto :goto_d

    :cond_12
    add-long v3, v1, v10

    .line 2421
    :goto_d
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$33;

    move-object/from16 v0, v16

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$33;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 2433
    :cond_13
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 2436
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2413
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 2392
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2390
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static log(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2009
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2010
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->log(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static log(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2026
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2031
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2033
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 2034
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2035
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2036
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2037
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2038
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2040
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2032
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 2043
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 2044
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2045
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 2075
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v3, :cond_a

    .line 2076
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 2077
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 2078
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-gez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v6, v13

    .line 2089
    div-long v6, v8, v6

    .line 2090
    new-array v3, v13, [Ljava/util/concurrent/Future;

    move v10, v1

    :goto_1
    if-ge v10, v13, :cond_8

    int-to-long v14, v10

    mul-long v17, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v14, v17, v6

    move-wide/from16 v19, v14

    .line 2094
    :goto_2
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$28;

    move-object/from16 v16, v11

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$28;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2112
    :cond_8
    :try_start_0
    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 2116
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 2117
    aget v6, v3, v1

    mul-float/2addr v6, v6

    aget v7, v3, v5

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 2118
    aget v13, v3, v5

    float-to-double v13, v13

    aget v3, v3, v1

    move-object/from16 p0, v2

    float-to-double v1, v3

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v1

    .line 2119
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    double-to-float v3, v6

    double-to-float v1, v1

    .line 2120
    new-array v2, v4, [F

    const/4 v6, 0x0

    aput v3, v2, v6

    aput v1, v2, v5

    move-object/from16 v1, p0

    .line 2121
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    move-object v2, v1

    move v1, v6

    goto :goto_3

    :cond_9
    :goto_4
    move v6, v1

    move-object v1, v2

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2081
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 2082
    aget v3, v2, v6

    mul-float/2addr v3, v3

    aget v7, v2, v5

    mul-float/2addr v7, v7

    add-float/2addr v3, v7

    float-to-double v13, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 2083
    aget v3, v2, v5

    float-to-double v4, v3

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    .line 2084
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    double-to-float v4, v4

    double-to-float v2, v2

    const/4 v3, 0x2

    .line 2085
    new-array v5, v3, [F

    aput v4, v5, v6

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 2086
    invoke-virtual {v1, v10, v11, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_5

    .line 2125
    :cond_a
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_f

    .line 2126
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 2127
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v2, 0x2

    if-lt v13, v2, :cond_e

    .line 2128
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v2, v13

    .line 2139
    div-long v2, v8, v2

    .line 2140
    new-array v4, v13, [Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_d

    int-to-long v10, v6

    mul-long v24, v10, v2

    add-int/lit8 v5, v13, -0x1

    if-ne v6, v5, :cond_c

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_c
    add-long v10, v24, v2

    move-wide/from16 v26, v10

    .line 2144
    :goto_7
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;

    move-object/from16 v23, v5

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    invoke-direct/range {v23 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2162
    :cond_d
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2166
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 2167
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    const/4 v6, 0x1

    aget-wide v13, v2, v6

    mul-double/2addr v13, v13

    add-double/2addr v4, v13

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 2168
    aget-wide v13, v2, v6

    aget-wide v6, v2, v3

    invoke-static {v13, v14, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v6

    .line 2169
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    const/4 v2, 0x2

    .line 2170
    new-array v13, v2, [D

    aput-wide v4, v13, v3

    const/4 v2, 0x1

    aput-wide v6, v13, v2

    .line 2171
    invoke-virtual {v1, v10, v11, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v4, 0x1

    add-long/2addr v10, v4

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2131
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 2132
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    const/4 v6, 0x1

    aget-wide v13, v2, v6

    mul-double/2addr v13, v13

    add-double/2addr v4, v13

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 2133
    aget-wide v13, v2, v6

    aget-wide v6, v2, v3

    invoke-static {v13, v14, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v6

    .line 2134
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    const/4 v2, 0x2

    .line 2135
    new-array v13, v2, [D

    aput-wide v4, v13, v3

    const/4 v2, 0x1

    aput-wide v6, v13, v2

    .line 2136
    invoke-virtual {v1, v10, v11, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v4, 0x1

    add-long/2addr v10, v4

    goto :goto_a

    .line 2176
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_b
    move v3, v1

    move v0, v4

    if-lt v13, v0, :cond_14

    .line 2046
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v0, v13

    .line 2051
    div-long v10, v8, v0

    .line 2052
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v3

    :goto_c
    if-ge v15, v13, :cond_13

    int-to-long v0, v15

    mul-long v1, v0, v10

    add-int/lit8 v0, v13, -0x1

    if-ne v15, v0, :cond_12

    move-wide v3, v8

    goto :goto_d

    :cond_12
    add-long v3, v1, v10

    .line 2056
    :goto_d
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$27;

    move-object/from16 v0, v16

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$27;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 2068
    :cond_13
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 2071
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2048
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 2026
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2024
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static log10(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2192
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->log10(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static log10(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 35

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 2206
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2209
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2213
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2215
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 2216
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2217
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog10([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2218
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2219
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2220
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexLog10([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2222
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2214
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 2225
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 2226
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2227
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v4

    move-wide/from16 v17, v8

    goto/16 :goto_b

    .line 2257
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const/16 v16, 0x1

    if-ne v0, v3, :cond_a

    .line 2258
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 2259
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 2260
    move-object v5, v12

    check-cast v5, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 2261
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-gez v6, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v6, v13

    .line 2272
    div-long v6, v8, v6

    .line 2273
    new-array v10, v13, [Ljava/util/concurrent/Future;

    move v11, v1

    :goto_1
    if-ge v11, v13, :cond_8

    int-to-long v14, v11

    mul-long v18, v14, v6

    add-int/lit8 v14, v13, -0x1

    if-ne v11, v14, :cond_7

    move-wide/from16 v20, v8

    goto :goto_2

    :cond_7
    add-long v14, v18, v6

    move-wide/from16 v20, v14

    .line 2277
    :goto_2
    new-instance v14, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;

    move-object/from16 v17, v14

    move-object/from16 v22, v0

    move-wide/from16 v23, v2

    move-object/from16 v25, v5

    invoke-direct/range {v17 .. v25}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;DLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v14

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2295
    :cond_8
    :try_start_0
    invoke-static {v10}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v6, v10, v8

    if-gez v6, :cond_15

    .line 2299
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 2300
    aget v7, v6, v1

    mul-float/2addr v7, v7

    aget v13, v6, v16

    mul-float/2addr v13, v13

    add-float/2addr v7, v13

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 2301
    aget v7, v6, v16

    move-object/from16 p0, v5

    float-to-double v4, v7

    aget v6, v6, v1

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v4

    div-double/2addr v4, v2

    .line 2302
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    double-to-float v6, v6

    double-to-float v4, v4

    const/4 v5, 0x2

    .line 2303
    new-array v7, v5, [F

    aput v6, v7, v1

    aput v4, v7, v16

    move-object/from16 v4, p0

    .line 2304
    invoke-virtual {v4, v10, v11, v7}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    move-object v5, v4

    const/4 v4, 0x2

    goto :goto_3

    :cond_9
    :goto_4
    move-object v4, v5

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v5, v10, v8

    if-gez v5, :cond_15

    .line 2264
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v5

    .line 2265
    aget v6, v5, v1

    mul-float/2addr v6, v6

    aget v7, v5, v16

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 2266
    aget v13, v5, v16

    float-to-double v13, v13

    aget v5, v5, v1

    move-wide/from16 v17, v8

    float-to-double v8, v5

    invoke-static {v13, v14, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v8

    div-double/2addr v8, v2

    .line 2267
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v2

    double-to-float v5, v5

    double-to-float v6, v8

    const/4 v7, 0x2

    .line 2268
    new-array v8, v7, [F

    aput v5, v8, v1

    aput v6, v8, v16

    .line 2269
    invoke-virtual {v4, v10, v11, v8}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    move-wide/from16 v8, v17

    goto :goto_5

    :cond_a
    move-wide/from16 v17, v8

    .line 2308
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_f

    .line 2309
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    .line 2310
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 2311
    move-object v4, v12

    check-cast v4, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v5, 0x2

    if-lt v13, v5, :cond_e

    .line 2312
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v5

    cmp-long v5, v17, v5

    if-gez v5, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v5, v13

    .line 2323
    div-long v8, v17, v5

    .line 2324
    new-array v5, v13, [Ljava/util/concurrent/Future;

    move v6, v1

    :goto_6
    if-ge v6, v13, :cond_d

    int-to-long v10, v6

    mul-long v27, v10, v8

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_c

    move-wide/from16 v29, v17

    goto :goto_7

    :cond_c
    add-long v10, v27, v8

    move-wide/from16 v29, v10

    .line 2328
    :goto_7
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$32;

    move-object/from16 v26, v7

    move-object/from16 v31, v0

    move-wide/from16 v32, v2

    move-object/from16 v34, v4

    invoke-direct/range {v26 .. v34}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$32;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;DLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2346
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v5, v10, v17

    if-gez v5, :cond_15

    .line 2350
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 2351
    aget-wide v6, v5, v1

    mul-double/2addr v6, v6

    aget-wide v8, v5, v16

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 2352
    aget-wide v8, v5, v16

    aget-wide v13, v5, v1

    invoke-static {v8, v9, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v8

    div-double/2addr v8, v2

    .line 2353
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v2

    const/4 v7, 0x2

    .line 2354
    new-array v13, v7, [D

    aput-wide v5, v13, v1

    aput-wide v8, v13, v16

    .line 2355
    invoke-virtual {v4, v10, v11, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_8

    :cond_e
    :goto_9
    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v5, v10, v17

    if-gez v5, :cond_15

    .line 2315
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 2316
    aget-wide v6, v5, v1

    mul-double/2addr v6, v6

    aget-wide v8, v5, v16

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 2317
    aget-wide v8, v5, v16

    aget-wide v13, v5, v1

    invoke-static {v8, v9, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v8

    div-double/2addr v8, v2

    .line 2318
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v2

    const/4 v7, 0x2

    .line 2319
    new-array v13, v7, [D

    aput-wide v5, v13, v1

    aput-wide v8, v13, v16

    .line 2320
    invoke-virtual {v4, v10, v11, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_a

    .line 2360
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-wide/from16 v17, v8

    move v0, v4

    :goto_b
    if-lt v13, v0, :cond_14

    .line 2228
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v17, v2

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v2, v13

    .line 2233
    div-long v8, v17, v2

    .line 2234
    new-array v10, v13, [Ljava/util/concurrent/Future;

    move v11, v1

    :goto_c
    if-ge v11, v13, :cond_13

    int-to-long v0, v11

    mul-long v1, v0, v8

    add-int/lit8 v0, v13, -0x1

    if-ne v11, v0, :cond_12

    move-wide/from16 v3, v17

    goto :goto_d

    :cond_12
    add-long v3, v1, v8

    .line 2238
    :goto_d
    new-instance v14, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$30;

    move-object v0, v14

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$30;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 2250
    :cond_13
    :try_start_2
    invoke-static {v10}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v17

    if-gez v0, :cond_15

    .line 2253
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v17

    if-gez v2, :cond_15

    .line 2230
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 2209
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2207
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mult(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 2

    .line 989
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 990
    :goto_0
    invoke-static {p0, p1, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->mult(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static mult(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    if-eqz v8, :cond_20

    if-eqz v9, :cond_20

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1007
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v10

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1011
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1013
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    invoke-virtual {v8, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v9, v12, v13}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 1016
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 1017
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1018
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([F[F)[F

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 1020
    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 1021
    move-object v2, v9

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1022
    invoke-static {v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexMult([D[D)[D

    move-result-object v1

    invoke-static {v0, v10, v11, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v14, v3

    .line 1028
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v15, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 1029
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v7

    if-lt v14, v3, :cond_8

    .line 1030
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v0, v14

    .line 1035
    div-long v17, v10, v0

    .line 1036
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v5, v4

    :goto_0
    if-ge v5, v14, :cond_7

    int-to-long v0, v5

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v5, v0, :cond_6

    move-wide v3, v10

    goto :goto_1

    :cond_6
    add-long v3, v1, v17

    .line 1040
    :goto_1
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$9;

    move-object/from16 v0, v19

    move/from16 v20, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move-object/from16 v6, p0

    move-object v12, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$9;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v20

    add-int/lit8 v5, v20, 0x1

    move-object v7, v12

    move-object/from16 v6, v21

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v21, v6

    move-object v12, v7

    .line 1052
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1055
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_2

    :cond_8
    :goto_3
    move-object v12, v7

    const-wide/16 v0, 0x0

    :goto_4
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1032
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v0, v15

    goto :goto_4

    :cond_9
    :goto_5
    move-object v7, v12

    goto/16 :goto_17

    .line 1059
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1060
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    if-lt v14, v3, :cond_e

    .line 1061
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v0, v14

    .line 1066
    div-long v17, v10, v0

    .line 1067
    new-array v13, v14, [Ljava/util/concurrent/Future;

    move v7, v4

    :goto_6
    if-ge v7, v14, :cond_d

    int-to-long v0, v7

    mul-long v1, v0, v17

    add-int/lit8 v0, v14, -0x1

    if-ne v7, v0, :cond_c

    move-wide v3, v10

    goto :goto_7

    :cond_c
    add-long v3, v1, v17

    .line 1071
    :goto_7
    new-instance v19, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$10;

    move-object/from16 v0, v19

    move-object v5, v12

    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$10;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v20

    add-int/lit8 v7, v20, 0x1

    goto :goto_6

    .line 1083
    :cond_d
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 v0, 0x0

    :goto_8
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1086
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_8

    :cond_e
    :goto_9
    const-wide/16 v0, 0x0

    :goto_a
    cmp-long v2, v0, v10

    if-gez v2, :cond_9

    .line 1063
    invoke-virtual {v8, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v0, v15

    goto :goto_a

    .line 1090
    :cond_f
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v1, :cond_16

    .line 1091
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1092
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1093
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v7

    if-ne v6, v7, :cond_10

    .line 1094
    invoke-static {v0, v10, v11, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_b

    .line 1095
    :cond_10
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v6

    if-eq v0, v6, :cond_11

    move-object v7, v1

    goto :goto_b

    :cond_11
    move-object v7, v2

    .line 1100
    :goto_b
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v14, v3, :cond_15

    .line 1101
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v8

    cmp-long v6, v10, v8

    if-gez v6, :cond_12

    goto :goto_f

    :cond_12
    int-to-long v8, v14

    .line 1111
    div-long v8, v10, v8

    .line 1112
    new-array v6, v14, [Ljava/util/concurrent/Future;

    move v12, v4

    :goto_c
    if-ge v12, v14, :cond_14

    int-to-long v3, v12

    mul-long v25, v3, v8

    add-int/lit8 v3, v14, -0x1

    if-ne v12, v3, :cond_13

    move-wide/from16 v27, v10

    goto :goto_d

    :cond_13
    add-long v3, v25, v8

    move-wide/from16 v27, v3

    .line 1116
    :goto_d
    new-instance v3, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$11;

    move-object/from16 v24, v3

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v0

    invoke-direct/range {v24 .. v31}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$11;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto :goto_c

    .line 1133
    :cond_14
    :try_start_2
    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_17

    :catch_2
    const-wide/16 v3, 0x0

    :goto_e
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 1137
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 1138
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    const/4 v9, 0x0

    .line 1139
    aget v12, v6, v9

    aget v14, v8, v9

    mul-float v17, v12, v14

    aget v6, v6, v5

    aget v8, v8, v5

    mul-float v18, v6, v8

    sub-float v17, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/4 v8, 0x2

    .line 1140
    new-array v12, v8, [F

    aput v17, v12, v9

    aput v6, v12, v5

    .line 1141
    invoke-virtual {v0, v3, v4, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_e

    :cond_15
    :goto_f
    const-wide/16 v3, 0x0

    :goto_10
    cmp-long v6, v3, v10

    if-gez v6, :cond_1d

    .line 1104
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v6

    .line 1105
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v8

    const/4 v9, 0x0

    .line 1106
    aget v12, v6, v9

    aget v14, v8, v9

    mul-float v17, v12, v14

    aget v6, v6, v5

    aget v8, v8, v5

    mul-float v18, v6, v8

    sub-float v17, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/4 v8, 0x2

    .line 1107
    new-array v12, v8, [F

    aput v17, v12, v9

    aput v6, v12, v5

    .line 1108
    invoke-virtual {v0, v3, v4, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v15

    goto :goto_10

    .line 1145
    :cond_16
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1e

    .line 1146
    invoke-static {v8, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1147
    invoke-static/range {p1 .. p2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1148
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    invoke-virtual {v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v4

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    .line 1149
    invoke-static {v0, v10, v11, v3}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    .line 1150
    :cond_17
    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    if-eq v0, v3, :cond_18

    move-object v7, v1

    goto :goto_11

    :cond_18
    move-object v7, v2

    .line 1155
    :goto_11
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v3, 0x2

    if-lt v14, v3, :cond_1c

    .line 1156
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_19

    goto :goto_15

    :cond_19
    int-to-long v3, v14

    .line 1166
    div-long v3, v10, v3

    .line 1167
    new-array v6, v14, [Ljava/util/concurrent/Future;

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v14, :cond_1b

    move-object v12, v6

    int-to-long v5, v8

    mul-long v25, v5, v3

    add-int/lit8 v5, v14, -0x1

    if-ne v8, v5, :cond_1a

    move-wide/from16 v27, v10

    goto :goto_13

    :cond_1a
    add-long v5, v25, v3

    move-wide/from16 v27, v5

    .line 1171
    :goto_13
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;

    move-object/from16 v24, v5

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v0

    invoke-direct/range {v24 .. v31}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v12, v8

    add-int/lit8 v8, v8, 0x1

    move-object v6, v12

    const/4 v5, 0x1

    goto :goto_12

    :cond_1b
    move-object v12, v6

    .line 1188
    :try_start_3
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_17

    :catch_3
    const-wide/16 v3, 0x0

    :goto_14
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 1192
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 1193
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 1194
    aget-wide v17, v5, v8

    aget-wide v19, v6, v8

    mul-double v21, v17, v19

    const/4 v9, 0x1

    aget-wide v23, v5, v9

    aget-wide v5, v6, v9

    mul-double v25, v23, v5

    sub-double v21, v21, v25

    mul-double v23, v23, v19

    mul-double v17, v17, v5

    add-double v23, v23, v17

    const/4 v5, 0x2

    .line 1195
    new-array v6, v5, [D

    aput-wide v21, v6, v8

    aput-wide v23, v6, v9

    .line 1196
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_14

    :cond_1c
    :goto_15
    const-wide/16 v3, 0x0

    :goto_16
    cmp-long v5, v3, v10

    if-gez v5, :cond_1d

    .line 1159
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    .line 1160
    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v6

    const/4 v8, 0x0

    .line 1161
    aget-wide v17, v5, v8

    aget-wide v19, v6, v8

    mul-double v21, v17, v19

    const/4 v9, 0x1

    aget-wide v23, v5, v9

    aget-wide v5, v6, v9

    mul-double v25, v23, v5

    sub-double v21, v21, v25

    mul-double v23, v23, v19

    mul-double v17, v17, v5

    add-double v23, v23, v17

    const/4 v5, 0x2

    .line 1162
    new-array v6, v5, [D

    aput-wide v21, v6, v8

    aput-wide v23, v6, v9

    .line 1163
    invoke-virtual {v0, v3, v4, v6}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v15

    goto :goto_16

    :cond_1d
    :goto_17
    return-object v7

    .line 1201
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || b == null || a.length() != b.length() || !a.isNumeric() || !b.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static neg(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 1634
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->neg(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static neg(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_1b

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1650
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const/4 v3, 0x2

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 1654
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1656
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    neg-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1658
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 1659
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 1660
    aget v2, v1, v4

    neg-float v2, v2

    aget v1, v1, v5

    neg-float v1, v1

    new-array v3, v3, [F

    aput v2, v3, v4

    aput v1, v3, v5

    invoke-static {v0, v8, v9, v3}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1661
    :cond_2
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_3

    .line 1662
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 1663
    aget-wide v6, v1, v4

    neg-double v6, v6

    aget-wide v10, v1, v5

    neg-double v1, v10

    new-array v3, v3, [D

    aput-wide v6, v3, v4

    aput-wide v1, v3, v5

    invoke-static {v0, v8, v9, v3}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1665
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_4
    invoke-static {v0, v8, v9, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 1669
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v13, v1

    invoke-static {v8, v9, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    .line 1670
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v14, 0x1

    if-eqz v1, :cond_9

    if-lt v13, v3, :cond_8

    .line 1671
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v0, v13

    .line 1676
    div-long v16, v8, v0

    .line 1677
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v4

    :goto_0
    if-ge v5, v13, :cond_7

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_6

    move-wide v3, v8

    goto :goto_1

    :cond_6
    add-long v3, v1, v16

    .line 1681
    :goto_1
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$20;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$20;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_0

    :cond_7
    move-object/from16 v20, v6

    .line 1693
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    :catch_0
    :goto_2
    cmp-long v0, v10, v8

    if-gez v0, :cond_18

    .line 1696
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v10, v14

    goto :goto_2

    :cond_8
    :goto_3
    cmp-long v0, v10, v8

    if-gez v0, :cond_18

    .line 1673
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v10, v14

    goto :goto_3

    .line 1700
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_e

    if-lt v13, v3, :cond_d

    .line 1701
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_a

    goto :goto_7

    :cond_a
    int-to-long v0, v13

    .line 1706
    div-long v16, v8, v0

    .line 1707
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v4

    :goto_4
    if-ge v5, v13, :cond_c

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_b

    move-wide v3, v8

    goto :goto_5

    :cond_b
    add-long v3, v1, v16

    .line 1711
    :goto_5
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$21;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$21;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_4

    :cond_c
    move-object/from16 v20, v6

    .line 1723
    :try_start_1
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_12

    :catch_1
    :goto_6
    cmp-long v0, v10, v8

    if-gez v0, :cond_18

    .line 1726
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_6

    :cond_d
    :goto_7
    cmp-long v0, v10, v8

    if-gez v0, :cond_18

    .line 1703
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_7

    .line 1730
    :cond_e
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_13

    .line 1731
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1732
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v3, :cond_12

    .line 1733
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-gez v2, :cond_f

    goto :goto_b

    :cond_f
    int-to-long v6, v13

    .line 1742
    div-long v6, v8, v6

    .line 1743
    new-array v2, v13, [Ljava/util/concurrent/Future;

    move v10, v4

    :goto_8
    if-ge v10, v13, :cond_11

    int-to-long v14, v10

    mul-long v17, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_10

    move-wide/from16 v19, v8

    goto :goto_9

    :cond_10
    add-long v14, v17, v6

    move-wide/from16 v19, v14

    .line 1747
    :goto_9
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$22;

    move-object/from16 v16, v11

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$22;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v14, 0x1

    goto :goto_8

    .line 1763
    :cond_11
    :try_start_2
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_12

    :catch_2
    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_18

    .line 1767
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1768
    aget v6, v2, v4

    neg-float v6, v6

    .line 1769
    aget v2, v2, v5

    neg-float v2, v2

    new-array v7, v3, [F

    aput v6, v7, v4

    aput v2, v7, v5

    .line 1770
    invoke-virtual {v1, v10, v11, v7}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_a

    :cond_12
    :goto_b
    const-wide/16 v10, 0x0

    :goto_c
    cmp-long v2, v10, v8

    if-gez v2, :cond_18

    .line 1736
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1737
    aget v6, v2, v4

    neg-float v6, v6

    .line 1738
    aget v2, v2, v5

    neg-float v2, v2

    new-array v7, v3, [F

    aput v6, v7, v4

    aput v2, v7, v5

    .line 1739
    invoke-virtual {v1, v10, v11, v7}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_c

    .line 1774
    :cond_13
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_19

    .line 1775
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1776
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v3, :cond_17

    .line 1777
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-gez v2, :cond_14

    goto :goto_10

    :cond_14
    int-to-long v6, v13

    .line 1786
    div-long v6, v8, v6

    .line 1787
    new-array v2, v13, [Ljava/util/concurrent/Future;

    move v10, v4

    :goto_d
    if-ge v10, v13, :cond_16

    int-to-long v14, v10

    mul-long v15, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_15

    move-wide/from16 v17, v8

    goto :goto_e

    :cond_15
    add-long v17, v15, v6

    .line 1791
    :goto_e
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;

    move-object v14, v11

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1807
    :cond_16
    :try_start_3
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_12

    :catch_3
    const-wide/16 v10, 0x0

    :goto_f
    cmp-long v2, v10, v8

    if-gez v2, :cond_18

    .line 1811
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1812
    aget-wide v6, v2, v4

    neg-double v6, v6

    .line 1813
    aget-wide v13, v2, v5

    neg-double v13, v13

    new-array v2, v3, [D

    aput-wide v6, v2, v4

    aput-wide v13, v2, v5

    .line 1814
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_f

    :cond_17
    :goto_10
    const-wide/16 v10, 0x0

    :goto_11
    cmp-long v2, v10, v8

    if-gez v2, :cond_18

    .line 1780
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1781
    aget-wide v6, v2, v4

    neg-double v6, v6

    .line 1782
    aget-wide v13, v2, v5

    neg-double v13, v13

    new-array v2, v3, [D

    aput-wide v6, v2, v4

    aput-wide v13, v2, v5

    .line 1783
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_11

    :cond_18
    :goto_12
    return-object v12

    .line 1819
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pow(Lpl/edu/icm/jlargearrays/LargeArray;D)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 1452
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->pow(Lpl/edu/icm/jlargearrays/LargeArray;DLpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static pow(Lpl/edu/icm/jlargearrays/LargeArray;DLpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 28

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v0, p3

    if-eqz v9, :cond_19

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1469
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v12

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v14, 0x0

    if-eqz v1, :cond_4

    .line 1473
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1475
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 1476
    move-object v1, v9

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 1477
    invoke-static {v1, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexPow([FD)[F

    move-result-object v1

    invoke-static {v0, v12, v13, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1478
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 1479
    move-object v1, v9

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 1480
    invoke-static {v1, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexPow([DD)[D

    move-result-object v1

    invoke-static {v0, v12, v13, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1482
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_3
    :goto_0
    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v12, v13, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v8, 0x0

    .line 1485
    invoke-static {v0, v12, v13, v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v6

    .line 1486
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v12, v13, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v7, v3

    .line 1487
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    const-wide/16 v16, 0x1

    const/4 v5, 0x2

    if-nez v1, :cond_12

    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v5

    move-object/from16 v19, v6

    move v15, v7

    move/from16 v21, v8

    goto/16 :goto_d

    .line 1517
    :cond_5
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/16 v18, 0x1

    if-ne v0, v1, :cond_c

    .line 1518
    check-cast v9, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1519
    move-object v3, v6

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v7, v5, :cond_9

    .line 1520
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v0, v7

    .line 1531
    div-long v19, v12, v0

    .line 1532
    new-array v4, v7, [Ljava/util/concurrent/Future;

    move v1, v8

    :goto_1
    if-ge v1, v7, :cond_8

    move-object/from16 v21, v6

    int-to-long v5, v1

    mul-long v5, v5, v19

    add-int/lit8 v0, v7, -0x1

    if-ne v1, v0, :cond_7

    move-wide/from16 v22, v12

    goto :goto_2

    :cond_7
    add-long v22, v5, v19

    .line 1536
    :goto_2
    new-instance v24, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$18;

    move-object/from16 v0, v24

    move/from16 v25, v1

    move-wide v1, v5

    move-object v6, v3

    move-object/from16 v26, v4

    move-wide/from16 v3, v22

    const/4 v14, 0x2

    move-object v5, v9

    move-object/from16 p0, v6

    move/from16 v27, v7

    move-object/from16 v15, v21

    move-wide/from16 v6, p1

    move/from16 v21, v8

    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$18;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;DLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v26, v25

    add-int/lit8 v1, v25, 0x1

    move-object/from16 v3, p0

    move v5, v14

    move-object v6, v15

    move/from16 v8, v21

    move-object/from16 v4, v26

    move/from16 v7, v27

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 p0, v3

    move-object/from16 v26, v4

    move v14, v5

    move-object v15, v6

    move/from16 v21, v8

    .line 1554
    :try_start_0
    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    const-wide/16 v0, 0x0

    :goto_3
    cmp-long v2, v0, v12

    if-gez v2, :cond_a

    .line 1558
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1559
    aget v3, v2, v21

    mul-float/2addr v3, v3

    aget v4, v2, v18

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 1560
    aget v5, v2, v18

    float-to-double v5, v5

    aget v2, v2, v21

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v10

    .line 1561
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v2, v7

    .line 1562
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    new-array v4, v14, [F

    aput v2, v4, v21

    aput v3, v4, v18

    move-object/from16 v6, p0

    .line 1563
    invoke-virtual {v6, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long v0, v0, v16

    goto :goto_3

    :cond_9
    :goto_4
    move v14, v5

    move-object v15, v6

    move/from16 v21, v8

    move-object v6, v3

    const-wide/16 v0, 0x0

    :goto_5
    cmp-long v2, v0, v12

    if-gez v2, :cond_a

    .line 1523
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 1524
    aget v3, v2, v21

    mul-float/2addr v3, v3

    aget v4, v2, v18

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 1525
    aget v5, v2, v18

    float-to-double v7, v5

    aget v2, v2, v21

    move-object/from16 v19, v15

    float-to-double v14, v2

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    mul-double/2addr v7, v10

    .line 1526
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v3

    double-to-float v2, v14

    .line 1527
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    double-to-float v3, v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v2, v5, v21

    aput v3, v5, v18

    .line 1528
    invoke-virtual {v6, v0, v1, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long v0, v0, v16

    move-object/from16 v15, v19

    const/4 v14, 0x2

    goto :goto_5

    :cond_a
    :goto_6
    move-object/from16 v19, v15

    :cond_b
    :goto_7
    move-object/from16 v2, v19

    goto/16 :goto_13

    :cond_c
    move-object/from16 v19, v6

    move/from16 v27, v7

    move/from16 v21, v8

    .line 1567
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_11

    .line 1568
    check-cast v9, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1569
    move-object/from16 v14, v19

    check-cast v14, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move/from16 v15, v27

    const/4 v0, 0x2

    if-lt v15, v0, :cond_10

    .line 1570
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_d

    goto/16 :goto_b

    :cond_d
    int-to-long v0, v15

    .line 1581
    div-long v24, v12, v0

    .line 1582
    new-array v8, v15, [Ljava/util/concurrent/Future;

    move/from16 v6, v21

    :goto_8
    if-ge v6, v15, :cond_f

    int-to-long v0, v6

    mul-long v1, v0, v24

    add-int/lit8 v7, v15, -0x1

    if-ne v6, v7, :cond_e

    move-wide v3, v12

    goto :goto_9

    :cond_e
    add-long v3, v1, v24

    .line 1586
    :goto_9
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$19;

    move-object/from16 v0, v20

    move-object v5, v9

    move/from16 v26, v6

    move-wide/from16 v6, p1

    move-object/from16 v27, v8

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$19;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;DLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v27, v26

    add-int/lit8 v6, v26, 0x1

    move-object/from16 v8, v27

    goto :goto_8

    :cond_f
    move-object/from16 v27, v8

    .line 1604
    :try_start_1
    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    const-wide/16 v0, 0x0

    :goto_a
    cmp-long v2, v0, v12

    if-gez v2, :cond_b

    .line 1608
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1609
    aget-wide v3, v2, v21

    mul-double/2addr v3, v3

    aget-wide v5, v2, v18

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 1610
    aget-wide v5, v2, v18

    aget-wide v7, v2, v21

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v10

    .line 1611
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 1612
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const/4 v2, 0x2

    new-array v5, v2, [D

    aput-wide v7, v5, v21

    aput-wide v3, v5, v18

    .line 1613
    invoke-virtual {v14, v0, v1, v5}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long v0, v0, v16

    goto :goto_a

    :cond_10
    :goto_b
    const-wide/16 v0, 0x0

    :goto_c
    cmp-long v2, v0, v12

    if-gez v2, :cond_b

    .line 1573
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1574
    aget-wide v3, v2, v21

    mul-double/2addr v3, v3

    aget-wide v5, v2, v18

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 1575
    aget-wide v5, v2, v18

    aget-wide v7, v2, v21

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v10

    .line 1576
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 1577
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const/4 v2, 0x2

    new-array v5, v2, [D

    aput-wide v7, v5, v21

    aput-wide v3, v5, v18

    .line 1578
    invoke-virtual {v14, v0, v1, v5}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long v0, v0, v16

    goto :goto_c

    .line 1618
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v19, v6

    move v15, v7

    move/from16 v21, v8

    move v0, v5

    :goto_d
    if-lt v15, v0, :cond_16

    .line 1488
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_13

    goto :goto_11

    :cond_13
    int-to-long v0, v15

    .line 1493
    div-long v24, v12, v0

    .line 1494
    new-array v14, v15, [Ljava/util/concurrent/Future;

    move/from16 v7, v21

    :goto_e
    if-ge v7, v15, :cond_15

    int-to-long v0, v7

    mul-long v1, v0, v24

    add-int/lit8 v0, v15, -0x1

    if-ne v7, v0, :cond_14

    move-wide v3, v12

    goto :goto_f

    :cond_14
    add-long v3, v1, v24

    .line 1498
    :goto_f
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$17;

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, p0

    move/from16 v21, v7

    move-wide/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$17;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v21

    add-int/lit8 v7, v21, 0x1

    goto :goto_e

    .line 1510
    :cond_15
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    const-wide/16 v14, 0x0

    :goto_10
    cmp-long v0, v14, v12

    if-gez v0, :cond_b

    .line 1513
    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    move-object/from16 v2, v19

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v14, v14, v16

    goto :goto_10

    :cond_16
    :goto_11
    move-object/from16 v2, v19

    const-wide/16 v14, 0x0

    :goto_12
    cmp-long v0, v14, v12

    if-gez v0, :cond_17

    .line 1490
    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v14, v14, v16

    goto :goto_12

    :cond_17
    :goto_13
    return-object v2

    .line 1469
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signum(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 3694
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 3695
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->signum(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static signum(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_7

    .line 3709
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-eq v1, v2, :cond_7

    .line 3712
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3714
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 3716
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_0

    .line 3717
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3719
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 3720
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v2

    long-to-int v13, v2

    const/4 v0, 0x2

    const-wide/16 v14, 0x1

    if-lt v13, v0, :cond_4

    .line 3721
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_1

    goto :goto_3

    :cond_1
    int-to-long v2, v13

    .line 3726
    div-long v16, v8, v2

    .line 3727
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v1

    :goto_0
    if-ge v5, v13, :cond_3

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_2

    move-wide v3, v8

    goto :goto_1

    :cond_2
    add-long v3, v1, v16

    .line 3731
    :goto_1
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_0

    :cond_3
    move-object/from16 v20, v6

    .line 3743
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :goto_2
    cmp-long v0, v10, v8

    if-gez v0, :cond_5

    .line 3746
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {v12, v10, v11, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long/2addr v10, v14

    goto :goto_2

    :cond_4
    :goto_3
    cmp-long v0, v10, v8

    if-gez v0, :cond_5

    .line 3723
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {v12, v10, v11, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long/2addr v10, v14

    goto :goto_3

    :cond_5
    :goto_4
    return-object v12

    .line 3712
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3710
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric() || a.getType() == LargeArrayType.COMPLEX_FLOAT || a.getType() == LargeArrayType.COMPLEX_DOUBLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sin(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2726
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 2727
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->sin(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static sin(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 2740
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2743
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2745
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 2747
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2749
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 2750
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 2751
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2752
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 2753
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 2754
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 2756
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2748
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 2759
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 2760
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2761
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 2791
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v5, 0x1

    if-ne v0, v3, :cond_a

    .line 2792
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 2793
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 2794
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-gez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v6, v13

    .line 2803
    div-long v6, v8, v6

    .line 2804
    new-array v3, v13, [Ljava/util/concurrent/Future;

    move v10, v1

    :goto_1
    if-ge v10, v13, :cond_8

    int-to-long v14, v10

    mul-long v17, v14, v6

    add-int/lit8 v11, v13, -0x1

    if-ne v10, v11, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v14, v17, v6

    move-wide/from16 v19, v14

    .line 2808
    :goto_2
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$41;

    move-object/from16 v16, v11

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$41;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v11

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2825
    :cond_8
    :try_start_0
    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 2829
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 2830
    aget v6, v3, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    aget v13, v3, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 2831
    aget v7, v3, v1

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    aget v3, v3, v5

    move-object/from16 p0, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    double-to-float v1, v13

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v6, v2, v3

    aput v1, v2, v5

    move-object/from16 v1, p0

    .line 2832
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    move-object v2, v1

    move v1, v3

    goto :goto_3

    :cond_9
    :goto_4
    move v3, v1

    move-object v1, v2

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2797
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 2798
    aget v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    aget v13, v2, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v6, v13

    double-to-float v6, v6

    .line 2799
    aget v7, v2, v3

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    aget v2, v2, v5

    move v7, v6

    float-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    double-to-float v2, v13

    new-array v5, v4, [F

    aput v7, v5, v3

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 2800
    invoke-virtual {v1, v10, v11, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_5

    .line 2836
    :cond_a
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_f

    .line 2837
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 2838
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 2839
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    goto :goto_9

    :cond_b
    int-to-long v2, v13

    .line 2848
    div-long v2, v8, v2

    .line 2849
    new-array v5, v13, [Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_d

    int-to-long v10, v6

    mul-long v24, v10, v2

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_c

    move-wide/from16 v26, v8

    goto :goto_7

    :cond_c
    add-long v10, v24, v2

    move-wide/from16 v26, v10

    .line 2853
    :goto_7
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$42;

    move-object/from16 v23, v7

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    invoke-direct/range {v23 .. v29}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$42;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2869
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2873
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 2874
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 2875
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 2876
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2842
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 2843
    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aget-wide v13, v2, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v13

    mul-double/2addr v5, v13

    .line 2844
    aget-wide v13, v2, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    aget-wide v15, v2, v7

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    new-array v2, v4, [D

    aput-wide v5, v2, v3

    aput-wide v13, v2, v7

    .line 2845
    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_a

    .line 2881
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_b
    move v3, v1

    if-lt v13, v4, :cond_14

    .line 2762
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v0, v13

    .line 2767
    div-long v10, v8, v0

    .line 2768
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v3

    :goto_c
    if-ge v15, v13, :cond_13

    int-to-long v0, v15

    mul-long v1, v0, v10

    add-int/lit8 v0, v13, -0x1

    if-ne v15, v0, :cond_12

    move-wide v3, v8

    goto :goto_d

    :cond_12
    add-long v3, v1, v10

    .line 2772
    :goto_d
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$40;

    move-object/from16 v0, v16

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$40;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 2784
    :cond_13
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 2787
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 2764
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 2743
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2741
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sqrt(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 1834
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 1835
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->sqrt(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static sqrt(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 1848
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1853
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 1854
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 1855
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1857
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 1858
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 1859
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSqrt([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 1861
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 1862
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSqrt([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 1864
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 1867
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 1868
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 1869
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_b

    .line 1899
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/16 v16, 0x1

    if-ne v0, v3, :cond_a

    .line 1900
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 1901
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 1902
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v17

    cmp-long v3, v8, v17

    if-gez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    int-to-long v10, v13

    .line 1912
    div-long v10, v8, v10

    .line 1913
    new-array v3, v13, [Ljava/util/concurrent/Future;

    move v7, v1

    :goto_1
    if-ge v7, v13, :cond_8

    int-to-long v14, v7

    mul-long v18, v14, v10

    add-int/lit8 v14, v13, -0x1

    if-ne v7, v14, :cond_7

    move-wide/from16 v20, v8

    goto :goto_2

    :cond_7
    add-long v14, v18, v10

    move-wide/from16 v20, v14

    .line 1917
    :goto_2
    new-instance v14, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$25;

    move-object/from16 v17, v14

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$25;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v14

    aput-object v14, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1934
    :cond_8
    :try_start_0
    invoke-static {v3}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :catch_0
    const-wide/16 v10, 0x0

    :goto_3
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 1938
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 1939
    aget v7, v3, v1

    mul-float/2addr v7, v7

    aget v13, v3, v16

    mul-float/2addr v13, v13

    add-float/2addr v7, v13

    float-to-double v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 1940
    aget v7, v3, v1

    move-object/from16 p0, v2

    float-to-double v1, v7

    add-double/2addr v1, v13

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1941
    aget v2, v3, v16

    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMath;->signum(F)F

    move-result v2

    float-to-double v4, v2

    const/4 v2, 0x0

    aget v3, v3, v2

    neg-float v3, v3

    float-to-double v6, v3

    add-double/2addr v6, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v1, v5, v2

    aput v3, v5, v16

    move-object/from16 v1, p0

    .line 1942
    invoke-virtual {v1, v10, v11, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v3, 0x1

    add-long/2addr v10, v3

    const/4 v4, 0x2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move/from16 v31, v2

    move-object v2, v1

    move/from16 v1, v31

    goto :goto_3

    :cond_9
    :goto_4
    move-object/from16 v31, v2

    move v2, v1

    move-object/from16 v1, v31

    const-wide/16 v10, 0x0

    :goto_5
    cmp-long v3, v10, v8

    if-gez v3, :cond_15

    .line 1905
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    .line 1906
    aget v4, v3, v2

    mul-float/2addr v4, v4

    aget v5, v3, v16

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 1907
    aget v6, v3, v2

    float-to-double v6, v6

    add-double/2addr v6, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 1908
    aget v7, v3, v16

    invoke-static {v7}, Lorg/apache/commons/math3/util/FastMath;->signum(F)F

    move-result v7

    float-to-double v13, v7

    aget v3, v3, v2

    neg-float v3, v3

    float-to-double v2, v3

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v13, v2

    double-to-float v2, v13

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v3, 0x0

    aput v6, v4, v3

    aput v2, v4, v16

    .line 1909
    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    const/4 v2, 0x0

    goto :goto_5

    .line 1946
    :cond_a
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_f

    .line 1947
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 1948
    move-object v1, v12

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    const/4 v2, 0x2

    if-lt v13, v2, :cond_e

    .line 1949
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_b

    goto/16 :goto_9

    :cond_b
    int-to-long v2, v13

    .line 1959
    div-long v2, v8, v2

    .line 1960
    new-array v4, v13, [Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v13, :cond_d

    int-to-long v6, v5

    mul-long v25, v6, v2

    add-int/lit8 v6, v13, -0x1

    if-ne v5, v6, :cond_c

    move-wide/from16 v27, v8

    goto :goto_7

    :cond_c
    add-long v6, v25, v2

    move-wide/from16 v27, v6

    .line 1964
    :goto_7
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;

    move-object/from16 v24, v6

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v30}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1981
    :cond_d
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_11

    :catch_1
    const-wide/16 v10, 0x0

    :goto_8
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 1985
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 1986
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    aget-wide v6, v2, v16

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 1987
    aget-wide v6, v2, v3

    add-double/2addr v6, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 1988
    aget-wide v18, v2, v16

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v20

    aget-wide v13, v2, v3

    neg-double v13, v13

    add-double/2addr v13, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double v20, v20, v4

    const/4 v2, 0x2

    new-array v4, v2, [D

    aput-wide v6, v4, v3

    aput-wide v20, v4, v16

    .line 1989
    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v4, 0x1

    add-long/2addr v10, v4

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    :goto_a
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 1952
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    .line 1953
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    aget-wide v6, v2, v16

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 1954
    aget-wide v6, v2, v3

    add-double/2addr v6, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 1955
    aget-wide v18, v2, v16

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v18

    aget-wide v13, v2, v3

    neg-double v13, v13

    add-double/2addr v13, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    mul-double v18, v18, v13

    const/4 v2, 0x2

    new-array v13, v2, [D

    aput-wide v6, v13, v3

    aput-wide v18, v13, v16

    .line 1956
    invoke-virtual {v1, v10, v11, v13}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_a

    .line 1994
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_b
    move v3, v1

    move v0, v4

    if-lt v13, v0, :cond_14

    .line 1870
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    int-to-long v0, v13

    .line 1875
    div-long v10, v8, v0

    .line 1876
    new-array v14, v13, [Ljava/util/concurrent/Future;

    move v15, v3

    :goto_c
    if-ge v15, v13, :cond_13

    int-to-long v0, v15

    mul-long v1, v0, v10

    add-int/lit8 v0, v13, -0x1

    if-ne v15, v0, :cond_12

    move-wide v3, v8

    goto :goto_d

    :cond_12
    add-long v3, v1, v10

    .line 1880
    :goto_d
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$24;

    move-object/from16 v0, v16

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$24;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1892
    :cond_13
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    const-wide/16 v10, 0x0

    :goto_e
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 1895
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_e

    :cond_14
    :goto_f
    const-wide/16 v0, 0x1

    const-wide/16 v10, 0x0

    :goto_10
    cmp-long v2, v10, v8

    if-gez v2, :cond_15

    .line 1872
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v0

    goto :goto_10

    :cond_15
    :goto_11
    return-object v12

    .line 1851
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1849
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tan(Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 3065
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    .line 3066
    :goto_0
    invoke-static {p0, v0}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->tan(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static tan(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    if-eqz v7, :cond_17

    .line 3079
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3082
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3084
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v8

    .line 3085
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v1

    const-string v2, "Invalid array type."

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_4

    .line 3086
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3088
    :cond_0
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_1

    .line 3089
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3090
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexTan([F)[F

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3091
    :cond_1
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_2

    .line 3092
    move-object v1, v7

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3093
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexTan([D)[D

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    .line 3095
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3087
    :cond_3
    :goto_0
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 3098
    invoke-static {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v12

    .line 3099
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v3

    long-to-int v13, v3

    .line 3100
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isIntegerNumericType()Z

    move-result v3

    const/4 v4, 0x2

    const-wide/16 v14, 0x1

    if-nez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isRealNumericType()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_9

    .line 3130
    :cond_5
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_a

    .line 3131
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    .line 3132
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    if-lt v13, v4, :cond_9

    .line 3133
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v3, v13

    .line 3142
    div-long v3, v8, v3

    .line 3143
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_1
    if-ge v1, v13, :cond_8

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_7

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_7
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3147
    :goto_2
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$47;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$47;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3163
    :cond_8
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    :goto_3
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3166
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3167
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([F)[F

    move-result-object v3

    .line 3168
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([F)[F

    move-result-object v1

    .line 3169
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([F[F)[F

    move-result-object v1

    .line 3170
    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3135
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    .line 3136
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([F)[F

    move-result-object v3

    .line 3137
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([F)[F

    move-result-object v1

    .line 3138
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([F[F)[F

    move-result-object v1

    .line 3139
    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v10, v14

    goto :goto_4

    .line 3174
    :cond_a
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_f

    .line 3175
    move-object v0, v7

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    .line 3176
    move-object v2, v12

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    if-lt v13, v4, :cond_e

    .line 3177
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    goto :goto_8

    :cond_b
    int-to-long v3, v13

    .line 3186
    div-long v3, v8, v3

    .line 3187
    new-array v5, v13, [Ljava/util/concurrent/Future;

    :goto_5
    if-ge v1, v13, :cond_d

    int-to-long v6, v1

    mul-long v17, v6, v3

    add-int/lit8 v6, v13, -0x1

    if-ne v1, v6, :cond_c

    move-wide/from16 v19, v8

    goto :goto_6

    :cond_c
    add-long v6, v17, v3

    move-wide/from16 v19, v6

    .line 3191
    :goto_6
    new-instance v6, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$48;

    move-object/from16 v16, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$48;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3207
    :cond_d
    :try_start_1
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_e

    :catch_1
    :goto_7
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3210
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3211
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([D)[D

    move-result-object v3

    .line 3212
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([D)[D

    move-result-object v1

    .line 3213
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([D[D)[D

    move-result-object v1

    .line 3214
    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_7

    :cond_e
    :goto_8
    cmp-long v1, v10, v8

    if-gez v1, :cond_15

    .line 3179
    invoke-virtual {v0, v10, v11}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    .line 3180
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexSin([D)[D

    move-result-object v3

    .line 3181
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexCos([D)[D

    move-result-object v1

    .line 3182
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->complexDiv([D[D)[D

    move-result-object v1

    .line 3183
    invoke-virtual {v2, v10, v11, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v10, v14

    goto :goto_8

    .line 3219
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_9
    if-lt v13, v4, :cond_14

    .line 3101
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-gez v0, :cond_11

    goto :goto_d

    :cond_11
    int-to-long v2, v13

    .line 3106
    div-long v16, v8, v2

    .line 3107
    new-array v6, v13, [Ljava/util/concurrent/Future;

    move v5, v1

    :goto_a
    if-ge v5, v13, :cond_13

    int-to-long v0, v5

    mul-long v1, v0, v16

    add-int/lit8 v0, v13, -0x1

    if-ne v5, v0, :cond_12

    move-wide v3, v8

    goto :goto_b

    :cond_12
    add-long v3, v1, v16

    .line 3111
    :goto_b
    new-instance v18, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$46;

    move-object/from16 v0, v18

    move/from16 v19, v5

    move-object v5, v12

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$46;-><init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v6, v20

    goto :goto_a

    :cond_13
    move-object/from16 v20, v6

    .line 3123
    :try_start_2
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    :goto_c
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3126
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_c

    :cond_14
    :goto_d
    cmp-long v0, v10, v8

    if-gez v0, :cond_15

    .line 3103
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v0

    invoke-virtual {v12, v10, v11, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v14

    goto :goto_d

    :cond_15
    :goto_e
    return-object v12

    .line 3082
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output type must be numeric."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3080
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a == null || !a.isNumeric()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
