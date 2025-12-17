.class public Lpl/edu/icm/jlargearrays/LargeArrayUtils;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"


# static fields
.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 56
    :try_start_0
    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 71
    :goto_0
    check-cast v0, Lsun/misc/Unsafe;

    sput-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Could not obtain access to sun.misc.Unsafe"

    invoke-direct {v0, v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arraycopy(Ljava/lang/Object;JLpl/edu/icm/jlargearrays/LargeArray;JJ)V
    .locals 7

    .line 149
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual {p3}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid array type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 159
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 160
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([BILpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V

    goto/16 :goto_0

    .line 163
    :cond_0
    check-cast p0, [S

    move-object v0, p0

    check-cast v0, [S

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([SILpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V

    goto/16 :goto_0

    .line 192
    :pswitch_1
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([Ljava/lang/Object;ILpl/edu/icm/jlargearrays/ObjectLargeArray;JJ)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/StringLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([Ljava/lang/String;ILpl/edu/icm/jlargearrays/StringLargeArray;JJ)V

    goto/16 :goto_0

    .line 186
    :pswitch_3
    check-cast p0, [D

    move-object v0, p0

    check-cast v0, [D

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([DILpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JJ)V

    goto/16 :goto_0

    .line 183
    :pswitch_4
    check-cast p0, [F

    move-object v0, p0

    check-cast v0, [F

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([FILpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V

    goto/16 :goto_0

    .line 180
    :pswitch_5
    check-cast p0, [D

    move-object v0, p0

    check-cast v0, [D

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([DILpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    goto :goto_0

    .line 177
    :pswitch_6
    check-cast p0, [F

    move-object v0, p0

    check-cast v0, [F

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([FILpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_0

    .line 174
    :pswitch_7
    check-cast p0, [J

    move-object v0, p0

    check-cast v0, [J

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/LongLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([JILpl/edu/icm/jlargearrays/LongLargeArray;JJ)V

    goto :goto_0

    .line 171
    :pswitch_8
    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/IntLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([IILpl/edu/icm/jlargearrays/IntLargeArray;JJ)V

    goto :goto_0

    .line 168
    :pswitch_9
    check-cast p0, [S

    move-object v0, p0

    check-cast v0, [S

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([SILpl/edu/icm/jlargearrays/ShortLargeArray;JJ)V

    goto :goto_0

    .line 154
    :pswitch_a
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([BILpl/edu/icm/jlargearrays/ByteLargeArray;JJ)V

    goto :goto_0

    .line 151
    :pswitch_b
    check-cast p0, [Z

    move-object v0, p0

    check-cast v0, [Z

    long-to-int v1, p1

    move-object v2, p3

    check-cast v2, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([ZILpl/edu/icm/jlargearrays/LogicLargeArray;JJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/ByteLargeArray;JLpl/edu/icm/jlargearrays/ByteLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 337
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 340
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 346
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 349
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 350
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 355
    div-long v18, v13, v0

    .line 356
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 360
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$3;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$3;-><init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;JLpl/edu/icm/jlargearrays/ByteLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 373
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 380
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 376
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 352
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 347
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1411
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1414
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1420
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1423
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1424
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1429
    div-long v18, v13, v0

    .line 1430
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1434
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$20;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$20;-><init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1447
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1454
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1450
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1426
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1421
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1272
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1278
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1281
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1282
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1287
    div-long v18, v13, v0

    .line 1288
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1292
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$18;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$18;-><init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1304
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1311
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1307
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1284
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1279
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1149
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1155
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1158
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1159
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1164
    div-long v18, v13, v0

    .line 1165
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1169
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$16;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$16;-><init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1181
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1188
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1184
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1161
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1156
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1026
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1032
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1035
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1036
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1041
    div-long v18, v13, v0

    .line 1042
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1046
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$14;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$14;-><init>(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1058
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1065
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1061
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1038
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1033
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/IntLargeArray;JLpl/edu/icm/jlargearrays/IntLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 776
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/IntLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 779
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 785
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 788
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 789
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 794
    div-long v18, v13, v0

    .line 795
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 799
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;-><init>(JJLpl/edu/icm/jlargearrays/IntLargeArray;JLpl/edu/icm/jlargearrays/IntLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 811
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 818
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->getInt(J)I

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 814
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->getInt(J)I

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 791
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->getInt(J)I

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 786
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/LargeArray;JLpl/edu/icm/jlargearrays/LargeArray;JJ)V
    .locals 17

    .line 94
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 97
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid array type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    move-object/from16 v1, p0

    check-cast v1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    move-object/from16 v4, p3

    check-cast v4, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    move-wide/from16 v2, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ObjectLargeArray;JLpl/edu/icm/jlargearrays/ObjectLargeArray;JJ)V

    goto/16 :goto_0

    .line 126
    :pswitch_1
    move-object/from16 v5, p0

    check-cast v5, Lpl/edu/icm/jlargearrays/StringLargeArray;

    move-object/from16 v8, p3

    check-cast v8, Lpl/edu/icm/jlargearrays/StringLargeArray;

    move-wide/from16 v6, p1

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;JJ)V

    goto/16 :goto_0

    .line 123
    :pswitch_2
    move-object/from16 v9, p0

    check-cast v9, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-object/from16 v12, p3

    check-cast v12, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-wide/from16 v10, p1

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-static/range {v9 .. v16}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JJ)V

    goto/16 :goto_0

    .line 120
    :pswitch_3
    move-object/from16 v0, p0

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-object/from16 v3, p3

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-wide/from16 v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V

    goto/16 :goto_0

    .line 117
    :pswitch_4
    move-object/from16 v4, p0

    check-cast v4, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v7, p3

    check-cast v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v5, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    goto/16 :goto_0

    .line 114
    :pswitch_5
    move-object/from16 v8, p0

    check-cast v8, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v11, p3

    check-cast v11, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v9, p1

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    invoke-static/range {v8 .. v15}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    goto :goto_0

    .line 111
    :pswitch_6
    move-object/from16 v0, p0

    check-cast v0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    move-object/from16 v3, p3

    check-cast v3, Lpl/edu/icm/jlargearrays/LongLargeArray;

    move-wide/from16 v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JJ)V

    goto :goto_0

    .line 108
    :pswitch_7
    move-object/from16 v4, p0

    check-cast v4, Lpl/edu/icm/jlargearrays/IntLargeArray;

    move-object/from16 v7, p3

    check-cast v7, Lpl/edu/icm/jlargearrays/IntLargeArray;

    move-wide/from16 v5, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/IntLargeArray;JLpl/edu/icm/jlargearrays/IntLargeArray;JJ)V

    goto :goto_0

    .line 105
    :pswitch_8
    move-object/from16 v8, p0

    check-cast v8, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    move-object/from16 v11, p3

    check-cast v11, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    move-wide/from16 v9, p1

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    invoke-static/range {v8 .. v15}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ShortLargeArray;JLpl/edu/icm/jlargearrays/ShortLargeArray;JJ)V

    goto :goto_0

    .line 102
    :pswitch_9
    move-object/from16 v0, p0

    check-cast v0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    move-object/from16 v3, p3

    check-cast v3, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    move-wide/from16 v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V

    goto :goto_0

    .line 99
    :pswitch_a
    move-object/from16 v4, p0

    check-cast v4, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    move-object/from16 v7, p3

    check-cast v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    move-wide/from16 v5, p1

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/LogicLargeArray;JLpl/edu/icm/jlargearrays/LogicLargeArray;JJ)V

    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of source array is different than the type of destimation array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/LogicLargeArray;JLpl/edu/icm/jlargearrays/LogicLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 212
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 215
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 221
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 225
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 230
    div-long v18, v13, v0

    .line 231
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 235
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$1;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$1;-><init>(JJLpl/edu/icm/jlargearrays/LogicLargeArray;JLpl/edu/icm/jlargearrays/LogicLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 247
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 254
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 250
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 227
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 900
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LongLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 903
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 909
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 912
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 913
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 918
    div-long v18, v13, v0

    .line 919
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 923
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$12;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$12;-><init>(JJLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 935
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 942
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 938
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 915
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v4

    invoke-virtual {v12, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 910
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/ObjectLargeArray;JLpl/edu/icm/jlargearrays/ObjectLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1677
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1680
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1686
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1689
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1690
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1695
    div-long v18, v13, v0

    .line 1696
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1700
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$24;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$24;-><init>(JJLpl/edu/icm/jlargearrays/ObjectLargeArray;JLpl/edu/icm/jlargearrays/ObjectLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1712
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1719
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1715
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1692
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1687
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1684
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1681
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/ShortLargeArray;JLpl/edu/icm/jlargearrays/ShortLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 651
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 654
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 660
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 664
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 665
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 670
    div-long v18, v13, v0

    .line 671
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 675
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$8;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$8;-><init>(JJLpl/edu/icm/jlargearrays/ShortLargeArray;JLpl/edu/icm/jlargearrays/ShortLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 688
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 695
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 691
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 667
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 661
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/StringLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 1557
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1563
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1566
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1567
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1572
    div-long v18, v13, v0

    .line 1573
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1577
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;-><init>(JJLpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 1589
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1596
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1592
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 1569
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1564
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy(Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-wide/from16 v13, p6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 463
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_8

    cmp-long v2, p4, v0

    if-ltz v2, :cond_7

    .line 466
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 472
    invoke-virtual/range {p3 .. p3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 475
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 476
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 481
    div-long v18, v13, v0

    .line 482
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_2

    int-to-long v0, v10

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v10, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 486
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$5;

    move-object/from16 v0, v20

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-wide/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$5;-><init>(JJLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;J)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v21, v22

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v9, v21

    goto :goto_0

    :cond_2
    move-object/from16 v21, v9

    .line 499
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_2
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 506
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_3
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 502
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v2, p1

    move-wide/from16 v0, p4

    :goto_5
    add-long v4, p1, v13

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 478
    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getByte(J)B

    move-result v4

    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v2, v2, v16

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([BILpl/edu/icm/jlargearrays/ByteLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 399
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 402
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 408
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 413
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 418
    div-long v18, v13, v0

    .line 419
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 423
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$4;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$4;-><init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;J[BI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 436
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 443
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 439
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 415
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 409
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([BILpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 525
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 528
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 534
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 538
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 539
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 544
    div-long v18, v13, v0

    .line 545
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 549
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$6;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$6;-><init>(JJLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;J[BI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 562
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 569
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 565
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 541
    aget-byte v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setByte(JB)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 535
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([DILpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;JJ)V
    .locals 26

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    .line 1473
    array-length v0, v10

    const/4 v15, 0x2

    rem-int/2addr v0, v15

    if-nez v0, :cond_9

    if-ltz v11, :cond_8

    .line 1477
    array-length v0, v10

    div-int/2addr v0, v15

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1480
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1486
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1490
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-lt v8, v15, :cond_3

    .line 1491
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v8

    .line 1500
    div-long v20, v13, v0

    .line 1501
    new-array v9, v8, [Ljava/util/concurrent/Future;

    move/from16 v7, v18

    :goto_0
    if-ge v7, v8, :cond_2

    int-to-long v0, v7

    mul-long v1, v0, v20

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v20

    .line 1505
    :goto_1
    new-instance v22, Lpl/edu/icm/jlargearrays/LargeArrayUtils$21;

    move-object/from16 v0, v22

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v23, v7

    move-object/from16 v7, p2

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$21;-><init>(JJ[DILpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;J)V

    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v25, v23

    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move-object/from16 v9, v25

    goto :goto_0

    :cond_2
    move-object/from16 v25, v9

    .line 1520
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1532
    aget-wide v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1533
    aget-wide v5, v10, v2

    new-array v2, v15, [D

    aput-wide v3, v2, v18

    aput-wide v5, v2, v19

    .line 1534
    invoke-virtual {v12, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1524
    aget-wide v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1525
    aget-wide v5, v10, v2

    new-array v2, v15, [D

    aput-wide v3, v2, v18

    aput-wide v5, v2, v19

    .line 1526
    invoke-virtual {v12, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1494
    aget-wide v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1495
    aget-wide v5, v10, v2

    new-array v2, v15, [D

    aput-wide v3, v2, v18

    aput-wide v5, v2, v19

    .line 1496
    invoke-virtual {v12, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1487
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length / 2"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the source array must be even."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([DILpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 1207
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1210
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1216
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1220
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1221
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1226
    div-long v18, v13, v0

    .line 1227
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1231
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$17;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$17;-><init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J[DI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 1243
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1250
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1246
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1223
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1217
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([FILpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V
    .locals 26

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    .line 1330
    array-length v0, v10

    const/4 v15, 0x2

    rem-int/2addr v0, v15

    if-nez v0, :cond_9

    if-ltz v11, :cond_8

    .line 1334
    array-length v0, v10

    div-int/2addr v0, v15

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1337
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1347
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v8, v0

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-lt v8, v15, :cond_3

    .line 1348
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v8

    .line 1357
    div-long v20, v13, v0

    .line 1358
    new-array v9, v8, [Ljava/util/concurrent/Future;

    move/from16 v7, v18

    :goto_0
    if-ge v7, v8, :cond_2

    int-to-long v0, v7

    mul-long v1, v0, v20

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v20

    .line 1362
    :goto_1
    new-instance v22, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;

    move-object/from16 v0, v22

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v23, v7

    move-object/from16 v7, p2

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;-><init>(JJ[FILpl/edu/icm/jlargearrays/ComplexFloatLargeArray;J)V

    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v25, v23

    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move-object/from16 v9, v25

    goto :goto_0

    :cond_2
    move-object/from16 v25, v9

    .line 1377
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1389
    aget v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1390
    aget v2, v10, v2

    new-array v4, v15, [F

    aput v3, v4, v18

    aput v2, v4, v19

    .line 1391
    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1381
    aget v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1382
    aget v2, v10, v2

    new-array v4, v15, [F

    aput v3, v4, v18

    aput v2, v4, v19

    .line 1383
    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    mul-int/lit8 v2, v11, 0x2

    .line 1351
    aget v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    .line 1352
    aget v2, v10, v2

    new-array v4, v15, [F

    aput v3, v4, v18

    aput v2, v4, v19

    .line 1353
    invoke-virtual {v12, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    add-int/lit8 v11, v11, 0x1

    add-long v0, v0, v16

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1344
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length / 2"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the source array must be even."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([FILpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 1084
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1087
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1093
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1097
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1098
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1103
    div-long v18, v13, v0

    .line 1104
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1108
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$15;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$15;-><init>(JJLpl/edu/icm/jlargearrays/FloatLargeArray;J[FI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 1120
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1127
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1123
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1100
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1094
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([IILpl/edu/icm/jlargearrays/IntLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 837
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 840
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/IntLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 846
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/IntLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 850
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 851
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 856
    div-long v18, v13, v0

    .line 857
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 861
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$11;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$11;-><init>(JJLpl/edu/icm/jlargearrays/IntLargeArray;J[II)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 874
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 881
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 877
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 853
    aget v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 847
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([JILpl/edu/icm/jlargearrays/LongLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 961
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 964
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 970
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 974
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 975
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 980
    div-long v18, v13, v0

    .line 981
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 985
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$13;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$13;-><init>(JJLpl/edu/icm/jlargearrays/LongLargeArray;J[JI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 997
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1004
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1000
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 977
    aget-wide v3, v10, v11

    invoke-virtual {v12, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setLong(JJ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 971
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([Ljava/lang/Object;ILpl/edu/icm/jlargearrays/ObjectLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 1738
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1741
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1747
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1751
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1752
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1757
    div-long v18, v13, v0

    .line 1758
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1762
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$25;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$25;-><init>(JJLpl/edu/icm/jlargearrays/ObjectLargeArray;J[Ljava/lang/Object;I)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 1774
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1781
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1777
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1754
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1748
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1742
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([Ljava/lang/String;ILpl/edu/icm/jlargearrays/StringLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 1615
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 1618
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 1624
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1628
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 1629
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 1634
    div-long v18, v13, v0

    .line 1635
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 1639
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$23;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$23;-><init>(JJLpl/edu/icm/jlargearrays/StringLargeArray;J[Ljava/lang/String;I)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 1651
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1658
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1654
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 1631
    aget-object v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 1625
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1622
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([SILpl/edu/icm/jlargearrays/ShortLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 714
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 717
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 723
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 727
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 728
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 733
    div-long v18, v13, v0

    .line 734
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 738
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$9;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$9;-><init>(JJLpl/edu/icm/jlargearrays/ShortLargeArray;J[SI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 750
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 757
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 753
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 730
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 724
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([SILpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 588
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 591
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 597
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 601
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 602
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 607
    div-long v18, v13, v0

    .line 608
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 612
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$7;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$7;-><init>(JJLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;J[SI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 625
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 632
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setUnsignedByte(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 628
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setUnsignedByte(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 604
    aget-short v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->setUnsignedByte(JS)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 598
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([ZILpl/edu/icm/jlargearrays/LogicLargeArray;JJ)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-wide/from16 v13, p5

    if-ltz v11, :cond_8

    .line 273
    array-length v0, v10

    if-ge v11, v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_7

    .line 276
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    cmp-long v0, v13, v0

    if-ltz v0, :cond_6

    .line 282
    invoke-virtual/range {p2 .. p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v13, v14, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v15, v0

    const/4 v0, 0x2

    const-wide/16 v16, 0x1

    if-lt v15, v0, :cond_3

    .line 288
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    int-to-long v0, v15

    .line 293
    div-long v18, v13, v0

    .line 294
    new-array v9, v15, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_2

    int-to-long v0, v8

    mul-long v1, v0, v18

    add-int/lit8 v0, v15, -0x1

    if-ne v8, v0, :cond_1

    move-wide v3, v13

    goto :goto_1

    :cond_1
    add-long v3, v1, v18

    .line 298
    :goto_1
    new-instance v20, Lpl/edu/icm/jlargearrays/LargeArrayUtils$2;

    move-object/from16 v0, v20

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v21, v8

    move-object/from16 v8, p0

    move-object/from16 v22, v9

    move/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$2;-><init>(JJLpl/edu/icm/jlargearrays/LogicLargeArray;J[ZI)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v22, v21

    add-int/lit8 v8, v21, 0x1

    move-object/from16 v9, v22

    goto :goto_0

    :cond_2
    move-object/from16 v22, v9

    .line 310
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-wide/from16 v0, p3

    :goto_2
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 317
    aget-boolean v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setBoolean(JZ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_2

    :catch_1
    move-wide/from16 v0, p3

    :goto_3
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 313
    aget-boolean v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setBoolean(JZ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_3

    :cond_3
    :goto_4
    move-wide/from16 v0, p3

    :goto_5
    add-long v2, p3, v13

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    add-int/lit8 v2, v11, 0x1

    .line 290
    aget-boolean v3, v10, v11

    invoke-virtual {v12, v0, v1, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setBoolean(JZ)V

    add-long v0, v0, v16

    move v11, v2

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    .line 283
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constant arrays cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destPos < 0 || destPos >= dest.length()"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "srcPos < 0 || srcPos >= src.length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    if-ne v0, v9, :cond_0

    return-object v8

    .line 2183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant()Z

    move-result v0

    const-string v10, "Invalid array type."

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_1

    .line 2184
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2190
    :pswitch_0
    new-instance v0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JS)V

    return-object v0

    .line 2208
    :pswitch_1
    new-instance v0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JLjava/lang/Object;)V

    return-object v0

    .line 2206
    :pswitch_2
    new-instance v0, Lpl/edu/icm/jlargearrays/StringLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JLjava/lang/String;)V

    return-object v0

    .line 2204
    :pswitch_3
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    move-object v3, v8

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v3, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(J[D)V

    return-object v0

    .line 2202
    :pswitch_4
    new-instance v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    move-object v3, v8

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v3, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(J[F)V

    return-object v0

    .line 2200
    :pswitch_5
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    return-object v0

    .line 2198
    :pswitch_6
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    return-object v0

    .line 2196
    :pswitch_7
    new-instance v0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JJ)V

    return-object v0

    .line 2194
    :pswitch_8
    new-instance v0, Lpl/edu/icm/jlargearrays/IntLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/IntLargeArray;-><init>(JI)V

    return-object v0

    .line 2192
    :pswitch_9
    new-instance v0, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;-><init>(JS)V

    return-object v0

    .line 2188
    :pswitch_a
    new-instance v0, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(JB)V

    return-object v0

    .line 2186
    :pswitch_b
    new-instance v0, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->length()J

    move-result-wide v1

    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JB)V

    return-object v0

    .line 2213
    :cond_1
    iget-wide v13, v8, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    const/4 v0, 0x0

    .line 2214
    invoke-static {v9, v13, v14, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v15

    .line 2215
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v1

    long-to-int v7, v1

    const/4 v1, 0x2

    const-wide/16 v16, 0x1

    if-lt v7, v1, :cond_9

    .line 2216
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v1

    cmp-long v1, v13, v1

    if-gez v1, :cond_2

    goto/16 :goto_1c

    :cond_2
    int-to-long v1, v7

    .line 2290
    div-long v18, v13, v1

    .line 2291
    new-array v6, v7, [Ljava/util/concurrent/Future;

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_4

    int-to-long v0, v4

    mul-long v2, v0, v18

    add-int/lit8 v0, v7, -0x1

    if-ne v4, v0, :cond_3

    move-wide/from16 v20, v13

    goto :goto_1

    :cond_3
    add-long v0, v2, v18

    move-wide/from16 v20, v0

    .line 2295
    :goto_1
    new-instance v22, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v23, v4

    move-wide/from16 v4, v20

    move-object/from16 v20, v6

    move-object v6, v15

    move/from16 v21, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;-><init>(Lpl/edu/icm/jlargearrays/LargeArrayType;JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V

    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v23

    add-int/lit8 v4, v23, 0x1

    move-object/from16 v6, v20

    move/from16 v7, v21

    goto :goto_0

    :cond_4
    move-object/from16 v20, v6

    .line 2376
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2a

    .line 2451
    :catch_0
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 2521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    :pswitch_c
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2460
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setUnsignedByte(JS)V

    add-long v11, v11, v16

    goto :goto_2

    :goto_3
    :pswitch_d
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2517
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_3

    :goto_4
    :pswitch_e
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2512
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_4

    .line 2500
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_5

    :goto_5
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2502
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexFloat(J[F)V

    add-long v11, v11, v16

    goto :goto_5

    :cond_5
    :goto_6
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2506
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_6

    .line 2489
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_6

    :goto_7
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2491
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexDouble(J[D)V

    add-long v11, v11, v16

    goto :goto_7

    :cond_6
    :goto_8
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2495
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_8

    :goto_9
    :pswitch_11
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2485
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_9

    :goto_a
    :pswitch_12
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2480
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_a

    :goto_b
    :pswitch_13
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2475
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long v11, v11, v16

    goto :goto_b

    :goto_c
    :pswitch_14
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2470
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    add-long v11, v11, v16

    goto :goto_c

    :goto_d
    :pswitch_15
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2465
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    add-long v11, v11, v16

    goto :goto_d

    :goto_e
    :pswitch_16
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2455
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long v11, v11, v16

    goto :goto_e

    .line 2378
    :catch_1
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 2448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_f
    :pswitch_17
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2387
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setUnsignedByte(JS)V

    add-long v11, v11, v16

    goto :goto_f

    :goto_10
    :pswitch_18
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2444
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_10

    :goto_11
    :pswitch_19
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2439
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_11

    .line 2427
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_7

    :goto_12
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2429
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexFloat(J[F)V

    add-long v11, v11, v16

    goto :goto_12

    :cond_7
    :goto_13
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2433
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_13

    .line 2416
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_8

    :goto_14
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2418
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexDouble(J[D)V

    add-long v11, v11, v16

    goto :goto_14

    :cond_8
    :goto_15
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2422
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_15

    :goto_16
    :pswitch_1c
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2412
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_16

    :goto_17
    :pswitch_1d
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2407
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_17

    :goto_18
    :pswitch_1e
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2402
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long v11, v11, v16

    goto :goto_18

    :goto_19
    :pswitch_1f
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2397
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    add-long v11, v11, v16

    goto :goto_19

    :goto_1a
    :pswitch_20
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2392
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    add-long v11, v11, v16

    goto :goto_1a

    :goto_1b
    :pswitch_21
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2382
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long v11, v11, v16

    goto :goto_1b

    .line 2217
    :cond_9
    :goto_1c
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 2287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1d
    :pswitch_22
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2226
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setUnsignedByte(JS)V

    add-long v11, v11, v16

    goto :goto_1d

    :goto_1e
    :pswitch_23
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2283
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_1e

    :goto_1f
    :pswitch_24
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2278
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long v11, v11, v16

    goto :goto_1f

    .line 2266
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_a

    :goto_20
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2268
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexFloat(J[F)V

    add-long v11, v11, v16

    goto :goto_20

    :cond_a
    :goto_21
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2272
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_21

    .line 2255
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v1, :cond_b

    :goto_22
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2257
    move-object v0, v15

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    move-object v1, v8

    check-cast v1, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexDouble(J[D)V

    add-long v11, v11, v16

    goto :goto_22

    :cond_b
    :goto_23
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2261
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_23

    :goto_24
    :pswitch_27
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2251
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long v11, v11, v16

    goto :goto_24

    :goto_25
    :pswitch_28
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2246
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long v11, v11, v16

    goto :goto_25

    :goto_26
    :pswitch_29
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2241
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long v11, v11, v16

    goto :goto_26

    :goto_27
    :pswitch_2a
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2236
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    add-long v11, v11, v16

    goto :goto_27

    :goto_28
    :pswitch_2b
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2231
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    add-long v11, v11, v16

    goto :goto_28

    :goto_29
    :pswitch_2c
    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    .line 2221
    invoke-virtual {v8, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v15, v11, v12, v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long v11, v11, v16

    goto :goto_29

    :cond_c
    :goto_2a
    return-object v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method public static create(Lpl/edu/icm/jlargearrays/LargeArrayType;J)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    const/4 v0, 0x1

    .line 2014
    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 1

    .line 2028
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x64

    packed-switch p0, :pswitch_data_0

    .line 2054
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid array type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2034
    :pswitch_0
    new-instance p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JZ)V

    return-object p0

    .line 2052
    :pswitch_1
    new-instance p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    invoke-direct {p0, p1, p2, v0, p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JIZ)V

    return-object p0

    .line 2050
    :pswitch_2
    new-instance p0, Lpl/edu/icm/jlargearrays/StringLargeArray;

    invoke-direct {p0, p1, p2, v0, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JIZ)V

    return-object p0

    .line 2048
    :pswitch_3
    new-instance p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(JZ)V

    return-object p0

    .line 2046
    :pswitch_4
    new-instance p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(JZ)V

    return-object p0

    .line 2044
    :pswitch_5
    new-instance p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    return-object p0

    .line 2042
    :pswitch_6
    new-instance p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    return-object p0

    .line 2040
    :pswitch_7
    new-instance p0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JZ)V

    return-object p0

    .line 2038
    :pswitch_8
    new-instance p0, Lpl/edu/icm/jlargearrays/IntLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/IntLargeArray;-><init>(JZ)V

    return-object p0

    .line 2036
    :pswitch_9
    new-instance p0, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;-><init>(JZ)V

    return-object p0

    .line 2032
    :pswitch_a
    new-instance p0, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(JZ)V

    return-object p0

    .line 2030
    :pswitch_b
    new-instance p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createConstant(Lpl/edu/icm/jlargearrays/LargeArrayType;JLjava/lang/Object;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 3

    .line 1798
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const-string v1, "Invalid value type."

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 2000
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid array type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1843
    :pswitch_0
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 1844
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_6

    move v0, v2

    goto :goto_0

    .line 1845
    :cond_0
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    .line 1846
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->shortValue()S

    move-result v0

    goto :goto_0

    .line 1847
    :cond_1
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_2

    .line 1848
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0

    .line 1849
    :cond_2
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 1850
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    goto :goto_0

    .line 1851
    :cond_3
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_4

    .line 1852
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->shortValue()S

    move-result v0

    goto :goto_0

    .line 1853
    :cond_4
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_5

    .line 1854
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->shortValue()S

    move-result v0

    goto :goto_0

    .line 1855
    :cond_5
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_7

    .line 1856
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->shortValue()S

    move-result v0

    .line 1860
    :cond_6
    :goto_0
    new-instance p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JS)V

    return-object p0

    .line 1858
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1998
    :pswitch_1
    new-instance p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JLjava/lang/Object;)V

    return-object p0

    .line 1991
    :pswitch_2
    instance-of p0, p3, Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 1992
    check-cast p3, Ljava/lang/String;

    .line 1996
    new-instance p0, Lpl/edu/icm/jlargearrays/StringLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JLjava/lang/String;)V

    return-object p0

    .line 1994
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1979
    :pswitch_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1980
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 1982
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 1983
    check-cast p3, [D

    check-cast p3, [D

    .line 1987
    new-instance p0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;-><init>(J[D)V

    return-object p0

    .line 1985
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1968
    :pswitch_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1969
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 1971
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 1972
    check-cast p3, [F

    check-cast p3, [F

    .line 1976
    new-instance p0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-direct {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;-><init>(J[F)V

    return-object p0

    .line 1974
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1948
    :pswitch_5
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    .line 1949
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1950
    :cond_c
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_d

    .line 1951
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 1952
    :cond_d
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_e

    .line 1953
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 1954
    :cond_e
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_f

    .line 1955
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 1956
    :cond_f
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_10

    .line 1957
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 1958
    :cond_10
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_11

    .line 1959
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 1960
    :cond_11
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_12

    .line 1961
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1965
    :goto_1
    new-instance p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    return-object p0

    .line 1963
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1927
    :pswitch_6
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    .line 1928
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_13

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_13
    const/4 p0, 0x0

    goto :goto_2

    .line 1929
    :cond_14
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_15

    .line 1930
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->floatValue()F

    move-result p0

    goto :goto_2

    .line 1931
    :cond_15
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_16

    .line 1932
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->floatValue()F

    move-result p0

    goto :goto_2

    .line 1933
    :cond_16
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_17

    .line 1934
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    goto :goto_2

    .line 1935
    :cond_17
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_18

    .line 1936
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->floatValue()F

    move-result p0

    goto :goto_2

    .line 1937
    :cond_18
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_19

    .line 1938
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_2

    .line 1939
    :cond_19
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_1a

    .line 1940
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p0

    .line 1944
    :goto_2
    new-instance p3, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p3, p1, p2, p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    return-object p3

    .line 1942
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1906
    :pswitch_7
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_1c

    .line 1907
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_1b

    const-wide/16 v0, 0x1

    goto :goto_3

    :cond_1b
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 1908
    :cond_1c
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_1d

    .line 1909
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1910
    :cond_1d
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_1e

    .line 1911
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1912
    :cond_1e
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_1f

    .line 1913
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1914
    :cond_1f
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_20

    .line 1915
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1916
    :cond_20
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_21

    .line 1917
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1918
    :cond_21
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_22

    .line 1919
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 1923
    :goto_3
    new-instance p0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JJ)V

    return-object p0

    .line 1921
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1885
    :pswitch_8
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_23

    .line 1886
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_29

    move v0, v2

    goto :goto_4

    .line 1887
    :cond_23
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_24

    .line 1888
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->intValue()I

    move-result v0

    goto :goto_4

    .line 1889
    :cond_24
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_25

    .line 1890
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->intValue()I

    move-result v0

    goto :goto_4

    .line 1891
    :cond_25
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_26

    .line 1892
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 1893
    :cond_26
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_27

    .line 1894
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_4

    .line 1895
    :cond_27
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_28

    .line 1896
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result v0

    goto :goto_4

    .line 1897
    :cond_28
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_2a

    .line 1898
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1902
    :cond_29
    :goto_4
    new-instance p0, Lpl/edu/icm/jlargearrays/IntLargeArray;

    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/IntLargeArray;-><init>(JI)V

    return-object p0

    .line 1900
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1864
    :pswitch_9
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_2b

    .line 1865
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_31

    move v0, v2

    goto :goto_5

    .line 1866
    :cond_2b
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_2c

    .line 1867
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->shortValue()S

    move-result v0

    goto :goto_5

    .line 1868
    :cond_2c
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_2d

    .line 1869
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_5

    .line 1870
    :cond_2d
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_2e

    .line 1871
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    goto :goto_5

    .line 1872
    :cond_2e
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_2f

    .line 1873
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->shortValue()S

    move-result v0

    goto :goto_5

    .line 1874
    :cond_2f
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_30

    .line 1875
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->shortValue()S

    move-result v0

    goto :goto_5

    .line 1876
    :cond_30
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_32

    .line 1877
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->shortValue()S

    move-result v0

    .line 1881
    :cond_31
    :goto_5
    new-instance p0, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;-><init>(JS)V

    return-object p0

    .line 1879
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1822
    :pswitch_a
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_33

    .line 1823
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_39

    move v0, v2

    goto :goto_6

    .line 1824
    :cond_33
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_34

    .line 1825
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_6

    .line 1826
    :cond_34
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_35

    .line 1827
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->byteValue()B

    move-result v0

    goto :goto_6

    .line 1828
    :cond_35
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_36

    .line 1829
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    goto :goto_6

    .line 1830
    :cond_36
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_37

    .line 1831
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->byteValue()B

    move-result v0

    goto :goto_6

    .line 1832
    :cond_37
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_38

    .line 1833
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->byteValue()B

    move-result v0

    goto :goto_6

    .line 1834
    :cond_38
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_3a

    .line 1835
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->byteValue()B

    move-result v0

    .line 1839
    :cond_39
    :goto_6
    new-instance p0, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(JB)V

    return-object p0

    .line 1837
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1801
    :pswitch_b
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_3b

    .line 1802
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v2, :cond_41

    move v0, v2

    goto :goto_7

    .line 1803
    :cond_3b
    instance-of p0, p3, Ljava/lang/Byte;

    if-eqz p0, :cond_3c

    .line 1804
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_7

    .line 1805
    :cond_3c
    instance-of p0, p3, Ljava/lang/Short;

    if-eqz p0, :cond_3d

    .line 1806
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->byteValue()B

    move-result v0

    goto :goto_7

    .line 1807
    :cond_3d
    instance-of p0, p3, Ljava/lang/Integer;

    if-eqz p0, :cond_3e

    .line 1808
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    goto :goto_7

    .line 1809
    :cond_3e
    instance-of p0, p3, Ljava/lang/Long;

    if-eqz p0, :cond_3f

    .line 1810
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->byteValue()B

    move-result v0

    goto :goto_7

    .line 1811
    :cond_3f
    instance-of p0, p3, Ljava/lang/Float;

    if-eqz p0, :cond_40

    .line 1812
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->byteValue()B

    move-result v0

    goto :goto_7

    .line 1813
    :cond_40
    instance-of p0, p3, Ljava/lang/Double;

    if-eqz p0, :cond_42

    .line 1814
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->byteValue()B

    move-result v0

    .line 1818
    :cond_41
    :goto_7
    new-instance p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JB)V

    return-object p0

    .line 1816
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static generateRandom(Lpl/edu/icm/jlargearrays/LargeArrayType;J)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 16

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 2068
    invoke-static {v3, v0, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v4

    .line 2069
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 2070
    sget-object v6, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v3

    aget v3, v6, v3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid array type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    :pswitch_0
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2160
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long/2addr v10, v12

    goto :goto_0

    :goto_1
    :pswitch_1
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2154
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {v4, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long/2addr v10, v12

    goto :goto_1

    .line 2143
    :pswitch_2
    move-object v3, v4

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    :goto_2
    cmp-long v8, v10, v0

    if-gez v8, :cond_2

    .line 2146
    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    .line 2147
    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    new-array v12, v7, [D

    aput-wide v8, v12, v2

    aput-wide v14, v12, v6

    .line 2148
    invoke-virtual {v3, v10, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v8, 0x1

    add-long/2addr v10, v8

    move-wide v12, v8

    goto :goto_2

    .line 2133
    :pswitch_3
    move-object v3, v4

    check-cast v3, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    :goto_3
    cmp-long v8, v10, v0

    if-gez v8, :cond_2

    .line 2136
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v8

    .line 2137
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v9

    new-array v12, v7, [F

    aput v8, v12, v2

    aput v9, v12, v6

    .line 2138
    invoke-virtual {v3, v10, v11, v12}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v8, 0x1

    add-long/2addr v10, v8

    goto :goto_3

    :pswitch_4
    move-wide v8, v12

    :goto_4
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2128
    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    invoke-virtual {v4, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v10, v8

    goto :goto_4

    :pswitch_5
    move-wide v8, v12

    :goto_5
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2122
    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {v4, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long/2addr v10, v8

    goto :goto_5

    :pswitch_6
    move-wide v8, v12

    :goto_6
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2116
    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v4, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v10, v8

    goto :goto_6

    :pswitch_7
    move-wide v8, v12

    :goto_7
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2110
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v4, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    add-long/2addr v10, v8

    goto :goto_7

    .line 2097
    :goto_8
    :pswitch_8
    div-long v2, v0, v8

    cmp-long v2, v10, v2

    if-gez v2, :cond_0

    .line 2098
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-short v3, v2

    .line 2099
    invoke-virtual {v4, v10, v11, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    const-wide/16 v6, 0x1

    add-long v12, v10, v6

    shr-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    .line 2100
    invoke-virtual {v4, v12, v13, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    add-long/2addr v10, v8

    goto :goto_8

    .line 2102
    :cond_0
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v2

    :goto_9
    cmp-long v3, v10, v0

    if-gez v3, :cond_2

    shr-int/lit8 v2, v2, 0x10

    int-to-short v3, v2

    .line 2104
    invoke-virtual {v4, v10, v11, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    const-wide/16 v5, 0x1

    add-long/2addr v10, v5

    goto :goto_9

    :goto_a
    :pswitch_9
    const-wide/16 v2, 0x4

    .line 2081
    div-long v6, v0, v2

    cmp-long v6, v10, v6

    if-gez v6, :cond_1

    .line 2082
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v6

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    .line 2083
    invoke-virtual {v4, v10, v11, v7}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    const-wide/16 v12, 0x1

    add-long v14, v10, v12

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    .line 2084
    invoke-virtual {v4, v14, v15, v7}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long v12, v10, v8

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v7, v6

    .line 2085
    invoke-virtual {v4, v12, v13, v7}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    const-wide/16 v12, 0x3

    add-long/2addr v12, v10

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    .line 2086
    invoke-virtual {v4, v12, v13, v6}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long/2addr v10, v2

    goto :goto_a

    .line 2088
    :cond_1
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v2

    :goto_b
    cmp-long v3, v10, v0

    if-gez v3, :cond_2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v3, v2

    .line 2090
    invoke-virtual {v4, v10, v11, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_b

    :pswitch_a
    move-wide v6, v12

    :goto_c
    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 2073
    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    invoke-virtual {v4, v10, v11, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->setBoolean(JZ)V

    add-long/2addr v10, v6

    goto :goto_c

    :cond_2
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static select(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2539
    iget-wide v1, v0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    iget-wide v3, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 2542
    iget-wide v8, v0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    .line 2544
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v8, v9, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v1

    long-to-int v10, v1

    int-to-long v1, v10

    .line 2545
    div-long v11, v8, v1

    .line 2546
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    .line 2547
    new-array v14, v10, [Ljava/util/concurrent/Future;

    const/4 v15, 0x0

    move v6, v15

    :goto_0
    if-ge v6, v10, :cond_1

    int-to-long v1, v6

    mul-long v2, v1, v11

    add-int/lit8 v1, v10, -0x1

    if-ne v6, v1, :cond_0

    move-wide v4, v8

    goto :goto_1

    :cond_0
    add-long v4, v2, v11

    .line 2551
    :goto_1
    new-instance v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;

    move-object/from16 v16, v1

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;-><init>(JJLpl/edu/icm/jlargearrays/LogicLargeArray;)V

    invoke-interface {v13, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v4, v1

    move v3, v15

    :goto_2
    const-wide/16 v11, 0x1

    const/4 v6, 0x1

    if-ge v3, v10, :cond_3

    .line 2566
    :try_start_0
    aget-object v13, v14, v3

    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-wide v13, v1

    :goto_3
    cmp-long v3, v13, v8

    if-gez v3, :cond_3

    .line 2570
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v3

    if-ne v3, v6, :cond_2

    add-long/2addr v4, v11

    :cond_2
    add-long/2addr v13, v11

    goto :goto_3

    :cond_3
    cmp-long v3, v4, v1

    if-gtz v3, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2576
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v3

    invoke-static {v3, v4, v5, v15}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->create(Lpl/edu/icm/jlargearrays/LargeArrayType;JZ)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v3

    move-wide v4, v1

    :goto_4
    cmp-long v10, v1, v8

    if-gez v10, :cond_6

    .line 2579
    invoke-virtual {v7, v1, v2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v10

    if-ne v10, v6, :cond_5

    add-long v13, v4, v11

    .line 2580
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v4, v5, v10}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    move-wide v4, v13

    :cond_5
    add-long/2addr v1, v11

    goto :goto_4

    :cond_6
    return-object v3

    .line 2540
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src.length != mask.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
