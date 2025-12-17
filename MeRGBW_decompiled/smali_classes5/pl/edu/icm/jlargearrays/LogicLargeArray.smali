.class public Lpl/edu/icm/jlargearrays/LogicLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "LogicLargeArray.java"


# static fields
.field private static final serialVersionUID:J = 0x2b8338480beb2930L


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JB)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 90
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 91
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 95
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    .line 97
    :goto_0
    new-array p1, p1, [B

    aput-byte p3, p1, p2

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    return-void

    .line 93
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(JZ)V
    .locals 9

    .line 63
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 64
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 65
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 69
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    .line 70
    invoke-static {}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 71
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->zeroNativeMemory(J)V

    .line 75
    :cond_0
    new-instance p1, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 76
    iget-wide p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 78
    new-array p1, p1, [B

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    :goto_0
    return-void

    .line 67
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 106
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 107
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 108
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    .line 109
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const/4 v0, 0x0

    .line 110
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 111
    aget-byte v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The array contans values different than 0 and 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 5

    .line 124
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 125
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 126
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    .line 127
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    .line 128
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 v0, 0x0

    move v1, v0

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-boolean v3, p1, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public and(Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LogicLargeArray;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_5

    .line 855
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    iget-wide v2, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 859
    new-instance v10, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    .line 860
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-le v11, v0, :cond_3

    .line 861
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 866
    :cond_0
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    int-to-long v3, v11

    div-long v16, v0, v3

    .line 867
    new-array v7, v11, [Ljava/util/concurrent/Future;

    move v6, v2

    :goto_0
    if-ge v6, v11, :cond_2

    int-to-long v0, v6

    mul-long v2, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_1

    .line 870
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    goto :goto_1

    :cond_1
    add-long v0, v2, v16

    :goto_1
    move-wide v4, v0

    .line 871
    new-instance v18, Lpl/edu/icm/jlargearrays/LogicLargeArray$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v19, v6

    move-object v6, v10

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LogicLargeArray$1;-><init>(Lpl/edu/icm/jlargearrays/LogicLargeArray;JJLpl/edu/icm/jlargearrays/LogicLargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, v20

    goto :goto_0

    :cond_2
    move-object/from16 v20, v7

    .line 884
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 890
    :catch_0
    :goto_2
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 891
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_2

    .line 886
    :catch_1
    :goto_3
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 887
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_3

    .line 862
    :cond_3
    :goto_4
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 863
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_4

    :cond_4
    :goto_5
    return-object v10

    .line 856
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array == null || array.length() != length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->clone()Lpl/edu/icm/jlargearrays/LogicLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/LogicLargeArray;
    .locals 12

    .line 142
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JB)V

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    const-wide/16 v8, 0x0

    .line 146
    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/LogicLargeArray;JLpl/edu/icm/jlargearrays/LogicLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 154
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    .line 156
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final get(J)Ljava/lang/Byte;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->get(J)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 5

    .line 182
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p1

    invoke-virtual {v0, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 184
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 187
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public final getBooleanData()[Z
    .locals 11

    .line 316
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 318
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    int-to-long v4, v1

    .line 319
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 320
    sget-object v6, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v9, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v9, v4

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 321
    :goto_1
    aput-boolean v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_2
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    int-to-long v4, v3

    .line 325
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 326
    aput-boolean v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_3
    int-to-long v4, v1

    .line 329
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 330
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    aput-boolean v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a

    .line 272
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_a

    cmp-long v2, p4, v0

    if-ltz v2, :cond_9

    .line 275
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_9

    cmp-long v2, p4, p2

    if-ltz v2, :cond_9

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_8

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 282
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 287
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 290
    new-array p1, p1, [Z

    .line 293
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    cmp-long v3, p2, p4

    if-gez v3, :cond_7

    .line 295
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 296
    :goto_2
    aput-boolean v3, p1, v0

    add-long/2addr p2, p6

    move v0, v4

    goto :goto_1

    .line 298
    :cond_3
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    .line 301
    aput-boolean v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_4
    cmp-long v3, p2, p4

    if-gez v3, :cond_7

    .line 305
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v4, p2

    aget-byte v3, v3, v4

    add-int/lit8 v4, v0, 0x1

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_5

    :cond_6
    move v3, v1

    .line 306
    :goto_5
    aput-boolean v3, p1, v0

    add-long/2addr p2, p6

    move v0, v4

    goto :goto_4

    :cond_7
    return-object p1

    .line 279
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getByte(J)B
    .locals 4

    .line 194
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1

    .line 196
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    return p1

    .line 199
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    return p1
.end method

.method public final getByteData()[B
    .locals 9

    .line 347
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 349
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 350
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 351
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 355
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 356
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_2
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 367
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 370
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 377
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 382
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 385
    new-array p1, p1, [B

    .line 388
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 390
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 392
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 394
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    aput-byte v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 398
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 374
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    .line 340
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 4

    .line 260
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    int-to-double p1, p1

    return-wide p1

    .line 262
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getDoubleData()[D
    .locals 9

    .line 664
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 665
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 666
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 667
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 668
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-double v3, v1

    :goto_1
    int-to-long v5, v2

    .line 672
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 673
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 676
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 677
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 687
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 690
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 697
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 702
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 705
    new-array p1, p1, [D

    .line 708
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 710
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 712
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 714
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    int-to-double v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 718
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 694
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 4

    .line 248
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1

    .line 250
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getFloatData()[F
    .locals 9

    .line 600
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 602
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 603
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 604
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    :goto_1
    int-to-long v3, v2

    .line 608
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 609
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 612
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 613
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 623
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 626
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 633
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 638
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 641
    new-array p1, p1, [F

    .line 644
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 646
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    int-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 648
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 650
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    int-to-float v3, v3

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 654
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    int-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 630
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 624
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFromNative(J)Ljava/lang/Byte;
    .locals 3

    .line 176
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getFromNative(J)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 4

    .line 224
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1

    .line 226
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    return p1

    .line 229
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    return p1
.end method

.method public final getIntData()[I
    .locals 9

    .line 472
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 473
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 474
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 475
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 476
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 480
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 481
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 484
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 485
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 495
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 498
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 505
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 510
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 513
    new-array p1, p1, [I

    .line 516
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 518
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 520
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 522
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 526
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 502
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 4

    .line 236
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1

    .line 238
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getLongData()[J
    .locals 9

    .line 536
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 538
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 539
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 540
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 544
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-long v3, v1

    .line 545
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 548
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 549
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 559
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 562
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 569
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 574
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 577
    new-array p1, p1, [J

    .line 580
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 582
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 584
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 586
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    int-to-long v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 590
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 566
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 560
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShort(J)S
    .locals 4

    .line 212
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    int-to-short p1, p1

    return p1

    .line 214
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getShortData()[S
    .locals 9

    .line 408
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 409
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 410
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 411
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 412
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 416
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-short v3, v1

    .line 417
    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 420
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 421
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 431
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 434
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_6

    cmp-long v2, p4, p2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_5

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 441
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 446
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 449
    new-array p1, p1, [S

    .line 452
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 454
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 456
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 458
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    aget-byte v3, v3, v1

    int-to-short v3, v3

    aput-short v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 462
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 438
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 164
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public not()Lpl/edu/icm/jlargearrays/LogicLargeArray;
    .locals 20

    move-object/from16 v7, p0

    .line 1009
    new-instance v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    .line 1010
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v9, v0

    const/4 v0, 0x2

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x0

    if-le v9, v0, :cond_3

    .line 1011
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_4

    .line 1016
    :cond_0
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    int-to-long v3, v9

    div-long v14, v0, v3

    .line 1017
    new-array v6, v9, [Ljava/util/concurrent/Future;

    move v4, v2

    :goto_0
    if-ge v4, v9, :cond_2

    int-to-long v0, v4

    mul-long v2, v0, v14

    add-int/lit8 v0, v9, -0x1

    if-ne v4, v0, :cond_1

    .line 1020
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    goto :goto_1

    :cond_1
    add-long v0, v2, v14

    :goto_1
    move-wide/from16 v16, v0

    .line 1021
    new-instance v18, Lpl/edu/icm/jlargearrays/LogicLargeArray$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v19, v4

    move-wide/from16 v4, v16

    move-object/from16 v16, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lpl/edu/icm/jlargearrays/LogicLargeArray$4;-><init>(Lpl/edu/icm/jlargearrays/LogicLargeArray;JJLpl/edu/icm/jlargearrays/LogicLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v16, v19

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v6

    .line 1034
    :try_start_0
    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1040
    :catch_0
    :goto_2
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    .line 1041
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v8, v12, v13, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v12, v10

    goto :goto_2

    .line 1036
    :catch_1
    :goto_3
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    .line 1037
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v8, v12, v13, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v12, v10

    goto :goto_3

    .line 1012
    :cond_3
    :goto_4
    iget-wide v0, v7, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    .line 1013
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-virtual {v8, v12, v13, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v12, v10

    goto :goto_4

    :cond_4
    :goto_5
    return-object v8
.end method

.method public or(Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LogicLargeArray;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_5

    .line 907
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    iget-wide v2, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 911
    new-instance v10, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    .line 912
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-le v11, v0, :cond_3

    .line 913
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 918
    :cond_0
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    int-to-long v3, v11

    div-long v16, v0, v3

    .line 919
    new-array v7, v11, [Ljava/util/concurrent/Future;

    move v6, v2

    :goto_0
    if-ge v6, v11, :cond_2

    int-to-long v0, v6

    mul-long v2, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_1

    .line 922
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    goto :goto_1

    :cond_1
    add-long v0, v2, v16

    :goto_1
    move-wide v4, v0

    .line 923
    new-instance v18, Lpl/edu/icm/jlargearrays/LogicLargeArray$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v19, v6

    move-object v6, v10

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LogicLargeArray$2;-><init>(Lpl/edu/icm/jlargearrays/LogicLargeArray;JJLpl/edu/icm/jlargearrays/LogicLargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, v20

    goto :goto_0

    :cond_2
    move-object/from16 v20, v7

    .line 936
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 942
    :catch_0
    :goto_2
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 943
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_2

    .line 938
    :catch_1
    :goto_3
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 939
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_3

    .line 914
    :cond_3
    :goto_4
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 915
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_4

    :cond_4
    :goto_5
    return-object v10

    .line 908
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array == null || array.length() != length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setBoolean(JZ)V
    .locals 5

    .line 734
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 735
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v3, p1

    if-ne p3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v3, v4, v1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 737
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 740
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    if-ne p3, v2, :cond_2

    move v1, v2

    :cond_2
    aput-byte v1, v0, p1

    :goto_0
    return-void

    .line 738
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 4

    if-ltz p3, :cond_2

    const/4 v0, 0x1

    if-gt p3, v0, :cond_2

    .line 750
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 753
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    aput-byte p3, v0, p1

    :goto_0
    return-void

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 748
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_1
    :goto_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 837
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    double-to-int p1, p3

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_1

    .line 839
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 842
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    double-to-int p2, p3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_1
    return-void

    .line 840
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 4

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 820
    :cond_1
    :goto_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 821
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    float-to-int p1, p3

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_1

    .line 823
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 826
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    float-to-int p2, p3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_1
    return-void

    .line 824
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 4

    if-ltz p3, :cond_2

    const/4 v0, 0x1

    if-gt p3, v0, :cond_2

    .line 788
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    int-to-byte p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 791
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    int-to-byte p2, p3

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 792
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 786
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    .line 804
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    long-to-int p1, p3

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 807
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 810
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    long-to-int p2, p3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 808
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 802
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShort(JS)V
    .locals 4

    if-ltz p3, :cond_2

    const/4 v0, 0x1

    if-gt p3, v0, :cond_2

    .line 772
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 773
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    int-to-byte p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 775
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->data:[B

    long-to-int p1, p1

    int-to-byte p2, p3

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 776
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 770
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value has to be 0 or 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 3

    .line 728
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray;->ptr:J

    add-long/2addr v1, p1

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 763
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setShort(JS)V

    return-void
.end method

.method public xor(Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LogicLargeArray;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_5

    .line 959
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    iget-wide v2, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 963
    new-instance v10, Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v10, v0, v1, v2}, Lpl/edu/icm/jlargearrays/LogicLargeArray;-><init>(JZ)V

    .line 964
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    if-le v11, v0, :cond_3

    .line 965
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 970
    :cond_0
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    int-to-long v3, v11

    div-long v16, v0, v3

    .line 971
    new-array v7, v11, [Ljava/util/concurrent/Future;

    move v6, v2

    :goto_0
    if-ge v6, v11, :cond_2

    int-to-long v0, v6

    mul-long v2, v0, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v6, v0, :cond_1

    .line 974
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    goto :goto_1

    :cond_1
    add-long v0, v2, v16

    :goto_1
    move-wide v4, v0

    .line 975
    new-instance v18, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v19, v6

    move-object v6, v10

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;-><init>(Lpl/edu/icm/jlargearrays/LogicLargeArray;JJLpl/edu/icm/jlargearrays/LogicLargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v20, v19

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, v20

    goto :goto_0

    :cond_2
    move-object/from16 v20, v7

    .line 988
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 994
    :catch_0
    :goto_2
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 995
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_2

    .line 990
    :catch_1
    :goto_3
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 991
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_3

    .line 966
    :cond_3
    :goto_4
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LogicLargeArray;->length:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    .line 967
    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v0

    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {v10, v14, v15, v0}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    add-long/2addr v14, v12

    goto :goto_4

    :cond_4
    :goto_5
    return-object v10

    .line 960
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array == null || array.length() != length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
