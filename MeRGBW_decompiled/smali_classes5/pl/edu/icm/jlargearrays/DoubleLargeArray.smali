.class public Lpl/edu/icm/jlargearrays/DoubleLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "DoubleLargeArray.java"


# static fields
.field private static final serialVersionUID:J = 0x673357133684ed0dL


# instance fields
.field private data:[D


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JD)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 88
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 89
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 93
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    .line 95
    new-array p1, p1, [D

    const/4 p2, 0x0

    aput-wide p3, p1, p2

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    return-void

    .line 91
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(JZ)V
    .locals 9

    .line 61
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 62
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 63
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 67
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    .line 68
    invoke-static {}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 69
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->zeroNativeMemory(J)V

    .line 73
    :cond_0
    new-instance p1, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 74
    iget-wide p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 76
    new-array p1, p1, [D

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    :goto_0
    return-void

    .line 65
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

.method public constructor <init>([D)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 105
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 106
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    .line 107
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    .line 108
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->clone()Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 13

    .line 119
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JD)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v9, 0x0

    .line 123
    iget-wide v11, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-object v8, v0

    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 133
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final get(J)Ljava/lang/Double;
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->get(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 9

    .line 159
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    cmpl-double p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 161
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 162
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v5, p1, v4

    cmpl-double p1, v5, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    .line 164
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    cmpl-double p1, p1, v2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1
.end method

.method public final getBooleanData()[Z
    .locals 13

    .line 261
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 263
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    move v1, v5

    :goto_0
    int-to-long v6, v1

    .line 264
    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_6

    .line 265
    sget-object v8, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v9, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v11, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v6

    cmpl-double v6, v6, v2

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 266
    :goto_1
    aput-boolean v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v6, v1, v5

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    int-to-long v1, v5

    .line 270
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_6

    .line 271
    aput-boolean v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_3
    int-to-long v6, v1

    .line 274
    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 275
    iget-object v6, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v7, v6, v1

    cmpl-double v6, v7, v2

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    aput-boolean v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p6

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_a

    .line 285
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    cmp-long v6, p4, v4

    if-ltz v6, :cond_9

    .line 288
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v6, p4, v6

    if-gtz v6, :cond_9

    cmp-long v6, p4, p2

    if-ltz v6, :cond_9

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_8

    sub-long v6, p4, p2

    long-to-double v6, v6

    long-to-double v8, v2

    div-double/2addr v6, v8

    .line 295
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x40000000

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 300
    array-length v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v1, v6

    .line 303
    new-array v1, v1, [Z

    .line 306
    :goto_0
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v4, v6, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    move-wide/from16 v9, p2

    move v4, v7

    :goto_1
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    .line 308
    sget-object v11, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v12, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v14, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v14, v9

    add-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v11

    add-int/lit8 v13, v4, 0x1

    cmpl-double v11, v11, v5

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_2

    :cond_2
    move v11, v7

    .line 309
    :goto_2
    aput-boolean v11, v1, v4

    add-long/2addr v9, v2

    move v4, v13

    goto :goto_1

    .line 311
    :cond_3
    iget-boolean v4, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v4, :cond_5

    move-wide/from16 v9, p2

    move v4, v7

    :goto_3
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    add-int/lit8 v11, v4, 0x1

    .line 313
    iget-object v12, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v13, v12, v7

    cmpl-double v12, v13, v5

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    move v12, v7

    :goto_4
    aput-boolean v12, v1, v4

    add-long/2addr v9, v2

    move v4, v11

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p2

    move v4, v7

    :goto_5
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    .line 317
    iget-object v11, v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v12, v9

    aget-wide v12, v11, v12

    add-int/lit8 v11, v4, 0x1

    cmpl-double v12, v12, v5

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_6

    :cond_6
    move v12, v7

    .line 318
    :goto_6
    aput-boolean v12, v1, v4

    add-long/2addr v9, v2

    move v4, v11

    goto :goto_5

    :cond_7
    return-object v1

    .line 292
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "step < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "startPos < 0 || startPos >= length"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getByte(J)B
    .locals 5

    .line 171
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    :goto_1
    int-to-byte p1, p1

    return p1

    .line 173
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int p1, v0

    goto :goto_1

    .line 176
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public final getByteData()[B
    .locals 9

    .line 328
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 330
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 331
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 332
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 336
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    double-to-int v1, v3

    int-to-byte v1, v1

    .line 337
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 340
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 341
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    double-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 351
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 354
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 361
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

    .line 366
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 369
    new-array p1, p1, [B

    .line 372
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 374
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 376
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 378
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 382
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    double-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 358
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    return-object v0
.end method

.method public final getData()[D
    .locals 1

    .line 255
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 5

    .line 243
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    return-wide p1

    .line 245
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    return-wide v0

    .line 248
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final getDoubleData()[D
    .locals 9

    .line 648
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 650
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 651
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 652
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 656
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 657
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    :cond_2
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 668
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 671
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 678
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

    .line 683
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 686
    new-array p1, p1, [D

    .line 689
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 691
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 693
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 695
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    aput-wide v4, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 699
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    aput-wide v3, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 675
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 672
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 5

    .line 231
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    .line 233
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-float p1, v0

    return p1

    .line 236
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    double-to-float p1, p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 9

    .line 584
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 585
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 586
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 587
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 588
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 591
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 592
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    double-to-float v1, v3

    .line 593
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 596
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 597
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    double-to-float v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 607
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 610
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 617
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

    .line 622
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 625
    new-array p1, p1, [F

    .line 628
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 630
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 632
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 634
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    double-to-float v3, v4

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 638
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    double-to-float v2, v3

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 614
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 611
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 608
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFromNative(J)Ljava/lang/Double;
    .locals 5

    .line 153
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFromNative(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 5

    .line 207
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    double-to-int p1, p1

    return p1

    .line 209
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int p1, v0

    return p1

    .line 212
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    double-to-int p1, p1

    return p1
.end method

.method public final getIntData()[I
    .locals 9

    .line 456
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 457
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 458
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 459
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 460
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    double-to-int v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 464
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    double-to-int v1, v3

    .line 465
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 468
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 469
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    double-to-int v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 479
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 482
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 489
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

    .line 494
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 497
    new-array p1, p1, [I

    .line 500
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 502
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 504
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 506
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    double-to-int v3, v4

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 510
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    double-to-int v2, v3

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 486
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 5

    .line 219
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1

    .line 221
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-long p1, v0

    return-wide p1

    .line 224
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    double-to-long p1, p1

    return-wide p1
.end method

.method public final getLongData()[J
    .locals 9

    .line 520
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 521
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 522
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 523
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 524
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    double-to-long v3, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 528
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    double-to-long v5, v3

    .line 529
    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 532
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 533
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    double-to-long v3, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 543
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 546
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 553
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

    .line 558
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 561
    new-array p1, p1, [J

    .line 564
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 566
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    double-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 568
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 570
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    double-to-long v3, v4

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 574
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    double-to-long v2, v3

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 550
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 544
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShort(J)S
    .locals 5

    .line 195
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    :goto_1
    int-to-short p1, p1

    return p1

    .line 197
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int p1, v0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public final getShortData()[S
    .locals 9

    .line 392
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 393
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 394
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 395
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 396
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 400
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    double-to-int v1, v3

    int-to-short v1, v1

    .line 401
    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 404
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 405
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v3, v1, v2

    double-to-int v1, v3

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 415
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 418
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length:J

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

    .line 425
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

    .line 430
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 433
    new-array p1, p1, [S

    .line 436
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 438
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 440
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 442
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    aget-wide v4, v3, v1

    double-to-int v3, v4

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

    .line 446
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int v3, p2

    aget-wide v3, v2, v3

    double-to-int v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 422
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 5

    .line 183
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    :goto_1
    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1

    .line 185
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    double-to-int p1, v0

    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 141
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

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

.method public final setBoolean(JZ)V
    .locals 10

    .line 715
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 716
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v8, p1

    add-long/2addr v6, v8

    if-ne p3, v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-virtual {v0, v6, v7, v1, v2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_2

    .line 718
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 721
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    if-ne p3, v5, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    aput-wide v1, v0, p1

    :goto_2
    return-void

    .line 719
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 5

    .line 728
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-double p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 731
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    int-to-double p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 732
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 5

    .line 799
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 800
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p3, p4}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 802
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 805
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    aput-wide p3, v0, p1

    :goto_0
    return-void

    .line 803
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 5

    .line 786
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    float-to-double p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 789
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    float-to-double p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 790
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 5

    .line 760
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-double p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 763
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    int-to-double p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 764
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 5

    .line 773
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-double p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 776
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    long-to-double p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 777
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShort(JS)V
    .locals 5

    .line 747
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-double p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    goto :goto_0

    .line 750
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 753
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->data:[D

    long-to-int p1, p1

    int-to-double p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 751
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 5

    .line 709
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    return-void
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 741
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setShort(JS)V

    return-void
.end method
