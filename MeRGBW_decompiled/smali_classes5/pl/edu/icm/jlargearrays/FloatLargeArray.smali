.class public Lpl/edu/icm/jlargearrays/FloatLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "FloatLargeArray.java"


# static fields
.field private static final serialVersionUID:J = -0x73c65d7ee4e7c558L


# instance fields
.field private data:[F


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JF)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 88
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 89
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 93
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    .line 95
    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p3, p1, p2

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    return-void

    .line 91
    :cond_0
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

    .line 61
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 62
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 63
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 67
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    .line 68
    invoke-static {}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 69
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->zeroNativeMemory(J)V

    .line 73
    :cond_0
    new-instance p1, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 74
    iget-wide p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 76
    new-array p1, p1, [F

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

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

.method public constructor <init>([F)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 105
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x4

    .line 106
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    .line 107
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    .line 108
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->clone()Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 12

    .line 119
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JF)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v8, 0x0

    .line 123
    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

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
    check-cast p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 133
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final get(J)Ljava/lang/Float;
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->get(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 8

    .line 159
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 161
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 162
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget p1, p1, v3

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    .line 164
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    return v1
.end method

.method public final getBooleanData()[Z
    .locals 12

    .line 261
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 263
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v1, v4

    :goto_0
    int-to-long v5, v1

    .line 264
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_6

    .line 265
    sget-object v7, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v10, v5

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 266
    :goto_1
    aput-boolean v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    int-to-long v1, v4

    .line 270
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_6

    .line 271
    aput-boolean v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_3
    int-to-long v5, v1

    .line 274
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 275
    iget-object v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    aput-boolean v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p6

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_a

    .line 285
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    cmp-long v6, p4, v4

    if-ltz v6, :cond_9

    .line 288
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v4, v6, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    move-wide/from16 v8, p2

    move v4, v6

    :goto_1
    cmp-long v10, v8, p4

    if-gez v10, :cond_7

    .line 308
    sget-object v10, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v11, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v13, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v10

    add-int/lit8 v11, v4, 0x1

    cmpl-float v10, v10, v5

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v6

    .line 309
    :goto_2
    aput-boolean v10, v1, v4

    add-long/2addr v8, v2

    move v4, v11

    goto :goto_1

    .line 311
    :cond_3
    iget-boolean v4, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v4, :cond_5

    move-wide/from16 v8, p2

    move v4, v6

    :goto_3
    cmp-long v10, v8, p4

    if-gez v10, :cond_7

    add-int/lit8 v10, v4, 0x1

    .line 313
    iget-object v11, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v11, v11, v6

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_4

    move v11, v7

    goto :goto_4

    :cond_4
    move v11, v6

    :goto_4
    aput-boolean v11, v1, v4

    add-long/2addr v8, v2

    move v4, v10

    goto :goto_3

    :cond_5
    move-wide/from16 v8, p2

    move v4, v6

    :goto_5
    cmp-long v10, v8, p4

    if-gez v10, :cond_7

    .line 317
    iget-object v10, v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v11, v8

    aget v10, v10, v11

    add-int/lit8 v11, v4, 0x1

    cmpl-float v10, v10, v5

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_6

    :cond_6
    move v10, v6

    .line 318
    :goto_6
    aput-boolean v10, v1, v4

    add-long/2addr v8, v2

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
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    int-to-byte p1, p1

    return p1

    .line 173
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public final getByteData()[B
    .locals 9

    .line 328
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 330
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 331
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 332
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    float-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 336
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    float-to-int v3, v1

    int-to-byte v3, v3

    .line 337
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 340
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 341
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-int v1, v1

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 354
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 374
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 376
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 378
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

    float-to-int v3, v3

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
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    float-to-int v2, v2

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
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    return-object v0
.end method

.method public final getData()[F
    .locals 1

    .line 255
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 5

    .line 243
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-double p1, p1

    return-wide p1

    .line 245
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public final getDoubleData()[D
    .locals 9

    .line 648
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 650
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 651
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 652
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    float-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-double v3, v1

    :goto_1
    int-to-long v5, v2

    .line 656
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 657
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 660
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 661
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 671
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 674
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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

    .line 681
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

    .line 686
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 689
    new-array p1, p1, [D

    .line 692
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 694
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 696
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 698
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 702
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    float-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 678
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 672
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 5

    .line 231
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    return p1

    .line 233
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 236
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 9

    .line 586
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 587
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 588
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 589
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 590
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 594
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 595
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 598
    :cond_2
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 606
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 609
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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

    .line 616
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

    .line 621
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 624
    new-array p1, p1, [F

    .line 627
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 629
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 631
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 633
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

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
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 613
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFromNative(J)Ljava/lang/Float;
    .locals 5

    .line 153
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFromNative(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 5

    .line 207
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    return p1

    .line 209
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public final getIntData()[I
    .locals 9

    .line 456
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 457
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 458
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 459
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 460
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 464
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    float-to-int v3, v1

    .line 465
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 468
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 469
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-int v1, v1

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 482
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 502
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    float-to-int v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 504
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 506
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

    float-to-int v3, v3

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 511
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    float-to-int v2, v2

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
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-long p1, p1

    return-wide p1

    .line 221
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public final getLongData()[J
    .locals 9

    .line 521
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 523
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 524
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 525
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    float-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 529
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    float-to-long v3, v1

    .line 530
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 533
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 534
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-long v3, v1

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

    .line 544
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 547
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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

    .line 554
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

    .line 559
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 562
    new-array p1, p1, [J

    .line 565
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 567
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    float-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 569
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 571
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

    float-to-long v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 576
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    float-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 551
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 548
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShort(J)S
    .locals 5

    .line 195
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    int-to-short p1, p1

    return p1

    .line 197
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public final getShortData()[S
    .locals 9

    .line 392
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 393
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 394
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 395
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 396
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 400
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    float-to-int v3, v1

    int-to-short v3, v3

    .line 401
    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 404
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 405
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v1, v1, v2

    float-to-int v1, v1

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 418
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length:J

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 438
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 440
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 442
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    aget v3, v3, v1

    float-to-int v3, v3

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
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int v3, p2

    aget v2, v2, v3

    float-to-int v2, v2

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
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1

    .line 185
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    const/4 p2, 0x0

    aget p1, p1, p2

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aget p1, v0, p1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 141
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

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
    .locals 8

    .line 718
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 719
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v5, v1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_2

    .line 721
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 724
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    if-ne p3, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    aput v1, v0, p1

    :goto_2
    return-void

    .line 722
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 5

    .line 731
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-float p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 734
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    int-to-float p2, p3

    aput p2, v0, p1

    :goto_0
    return-void

    .line 735
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 5

    .line 802
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 803
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    double-to-float p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 805
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    double-to-float p2, p3

    aput p2, v0, p1

    :goto_0
    return-void

    .line 806
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 5

    .line 789
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 790
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p3}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 792
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    aput p3, v0, p1

    :goto_0
    return-void

    .line 793
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 5

    .line 763
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-float p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 766
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    int-to-float p2, p3

    aput p2, v0, p1

    :goto_0
    return-void

    .line 767
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 5

    .line 776
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 777
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-float p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 779
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    long-to-float p2, p3

    aput p2, v0, p1

    :goto_0
    return-void

    .line 780
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShort(JS)V
    .locals 5

    .line 750
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-float p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    goto :goto_0

    .line 753
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->data:[F

    long-to-int p1, p1

    int-to-float p2, p3

    aput p2, v0, p1

    :goto_0
    return-void

    .line 754
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 5

    .line 712
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/FloatLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    return-void
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 744
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setShort(JS)V

    return-void
.end method
