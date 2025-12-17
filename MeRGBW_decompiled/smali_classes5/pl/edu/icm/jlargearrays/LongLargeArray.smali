.class public Lpl/edu/icm/jlargearrays/LongLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "LongLargeArray.java"


# static fields
.field private static final serialVersionUID:J = -0x23cb696b0aa1a57dL


# instance fields
.field private data:[J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 89
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 90
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 94
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    .line 96
    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide p3, p1, p2

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    return-void

    .line 92
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

    .line 62
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 63
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 64
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 68
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    .line 69
    invoke-static {}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 70
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->zeroNativeMemory(J)V

    .line 74
    :cond_0
    new-instance p1, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 75
    iget-wide p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 77
    new-array p1, p1, [J

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    :goto_0
    return-void

    .line 66
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

.method public constructor <init>([J)V
    .locals 2

    .line 105
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 106
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x8

    .line 107
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    .line 108
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    .line 109
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LongLargeArray;->clone()Lpl/edu/icm/jlargearrays/LongLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/LongLargeArray;
    .locals 13

    .line 120
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JJ)V

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(JZ)V

    const-wide/16 v9, 0x0

    .line 124
    iget-wide v11, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-object v8, v0

    invoke-static/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 134
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final get(J)Ljava/lang/Long;
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->get(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 9

    .line 160
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 162
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 163
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v5, p1, v4

    cmp-long p1, v5, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    .line 165
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1
.end method

.method public final getBooleanData()[Z
    .locals 13

    .line 263
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 265
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    move v1, v5

    :goto_0
    int-to-long v6, v1

    .line 266
    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_6

    .line 267
    sget-object v8, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v9, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v11, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 268
    :goto_1
    aput-boolean v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 271
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v6, v1, v5

    cmp-long v1, v6, v3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    int-to-long v3, v5

    .line 272
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v6

    if-gez v1, :cond_6

    .line 273
    aput-boolean v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_3
    int-to-long v6, v1

    .line 276
    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 277
    iget-object v6, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v7, v6, v1

    cmp-long v6, v7, v3

    if-eqz v6, :cond_5

    move v6, v2

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

    .line 287
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    cmp-long v6, p4, v4

    if-ltz v6, :cond_9

    .line 290
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 297
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

    .line 302
    array-length v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v1, v6

    .line 305
    new-array v1, v1, [Z

    .line 308
    :goto_0
    iget-wide v6, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v6, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    move-wide/from16 v9, p2

    move v6, v7

    :goto_1
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    .line 310
    sget-object v11, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v12, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v14, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v14, v9

    add-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v11

    add-int/lit8 v13, v6, 0x1

    cmp-long v11, v11, v4

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_2

    :cond_2
    move v11, v7

    .line 311
    :goto_2
    aput-boolean v11, v1, v6

    add-long/2addr v9, v2

    move v6, v13

    goto :goto_1

    .line 313
    :cond_3
    iget-boolean v6, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v6, :cond_5

    move-wide/from16 v9, p2

    move v6, v7

    :goto_3
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    add-int/lit8 v11, v6, 0x1

    .line 315
    iget-object v12, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v13, v12, v7

    cmp-long v12, v13, v4

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    move v12, v7

    :goto_4
    aput-boolean v12, v1, v6

    add-long/2addr v9, v2

    move v6, v11

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p2

    move v6, v7

    :goto_5
    cmp-long v11, v9, p4

    if-gez v11, :cond_7

    .line 319
    iget-object v11, v0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v12, v9

    aget-wide v12, v11, v12

    add-int/lit8 v11, v6, 0x1

    cmp-long v12, v12, v4

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_6

    :cond_6
    move v12, v7

    .line 320
    :goto_6
    aput-boolean v12, v1, v6

    add-long/2addr v9, v2

    move v6, v11

    goto :goto_5

    :cond_7
    return-object v1

    .line 294
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "step < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "startPos < 0 || startPos >= length"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getByte(J)B
    .locals 5

    .line 172
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    :goto_0
    long-to-int p1, p1

    :goto_1
    int-to-byte p1, p1

    return p1

    .line 174
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-int p1, v0

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public final getByteData()[B
    .locals 9

    .line 330
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 332
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 333
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 334
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

    int-to-byte v1, v1

    :goto_1
    int-to-long v3, v2

    .line 338
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 339
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 342
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 343
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

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

    .line 353
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 356
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 363
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

    .line 368
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 371
    new-array p1, p1, [B

    .line 374
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 376
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 378
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 380
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v4, v3, v1

    long-to-int v3, v4

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

    .line 384
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    long-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 360
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getData()[J

    move-result-object v0

    return-object v0
.end method

.method public final getData()[J
    .locals 1

    .line 257
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 5

    .line 245
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1

    .line 247
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-double p1, v0

    return-wide p1

    .line 250
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public final getDoubleData()[D
    .locals 9

    .line 647
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 649
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 650
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 651
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-double v3, v3

    :goto_1
    int-to-long v5, v2

    .line 655
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 656
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 659
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 660
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-double v3, v3

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

    .line 670
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 673
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 680
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

    .line 685
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 688
    new-array p1, p1, [D

    .line 691
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 693
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    long-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 695
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 697
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v4, v3, v1

    long-to-double v3, v4

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 701
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    long-to-double v2, v3

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 677
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 671
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 5

    .line 233
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    long-to-float p1, p1

    return p1

    .line 235
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-float p1, v0

    return p1

    .line 238
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    long-to-float p1, p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 9

    .line 583
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 585
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 586
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 587
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    long-to-float v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-float v1, v3

    :goto_1
    int-to-long v3, v2

    .line 591
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 592
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 595
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 596
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-float v1, v3

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

    .line 606
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 609
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 629
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    long-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 631
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 633
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v4, v3, v1

    long-to-float v3, v4

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 637
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    long-to-float v2, v3

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

.method public final getFromNative(J)Ljava/lang/Long;
    .locals 5

    .line 154
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getFromNative(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 5

    .line 208
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    .line 210
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-int p1, v0

    return p1

    .line 214
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    long-to-int p1, p1

    return p1
.end method

.method public final getIntData()[I
    .locals 9

    .line 458
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 460
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 461
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 462
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    long-to-int v1, v3

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

    :goto_1
    int-to-long v3, v2

    .line 466
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 467
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 470
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 471
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

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

    .line 481
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 484
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 491
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

    .line 496
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 499
    new-array p1, p1, [I

    .line 502
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 504
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 506
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 508
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v4, v3, v1

    long-to-int v3, v4

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 512
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    long-to-int v2, v3

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 488
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 5

    .line 221
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    return-wide p1

    .line 223
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    return-wide v0

    .line 226
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final getLongData()[J
    .locals 9

    .line 522
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 524
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 525
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 526
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    :goto_1
    int-to-long v5, v2

    .line 530
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    .line 531
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    :cond_2
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 542
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 545
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 552
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

    .line 557
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 560
    new-array p1, p1, [J

    .line 563
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 565
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 567
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 569
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

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

    .line 573
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    aput-wide v3, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 549
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShort(J)S
    .locals 5

    .line 196
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    :goto_0
    long-to-int p1, p1

    :goto_1
    int-to-short p1, p1

    return p1

    .line 198
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    long-to-int p1, v0

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public final getShortData()[S
    .locals 9

    .line 394
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 396
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 397
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 398
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

    int-to-short v1, v1

    :goto_1
    int-to-long v3, v2

    .line 402
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 403
    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 406
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 407
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

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

    .line 417
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 420
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->length:J

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

    .line 427
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

    .line 432
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 435
    new-array p1, p1, [S

    .line 438
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 440
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 442
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 444
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    aget-wide v4, v3, v1

    long-to-int v3, v4

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

    .line 448
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int v3, p2

    aget-wide v3, v2, v3

    long-to-int v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 424
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 7

    .line 184
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v5, p1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    :goto_0
    and-long/2addr p1, v1

    :goto_1
    long-to-int p1, p1

    int-to-short p1, p1

    return p1

    .line 186
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    const/4 p2, 0x0

    aget-wide v3, p1, p2

    and-long p1, v3, v1

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 142
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

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

    .line 717
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 718
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v8, p1

    add-long/2addr v6, v8

    if-ne p3, v1, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-virtual {v0, v6, v7, v2, v3}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 720
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 723
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    if-ne p3, v1, :cond_2

    move-wide v2, v4

    :cond_2
    aput-wide v2, v0, p1

    :goto_0
    return-void

    .line 721
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 5

    .line 730
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 731
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-long p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 733
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 736
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    int-to-long p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 734
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 5

    .line 801
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 802
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    double-to-long p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 804
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 807
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    double-to-long p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 805
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 5

    .line 788
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    float-to-long p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 791
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    float-to-long p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 792
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 5

    .line 762
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-long p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 765
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    int-to-long p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 766
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 5

    .line 775
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 776
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 778
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    aput-wide p3, v0, p1

    :goto_0
    return-void

    .line 779
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShort(JS)V
    .locals 5

    .line 749
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 750
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    int-to-long p1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto :goto_0

    .line 752
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->data:[J

    long-to-int p1, p1

    int-to-long p2, p3

    aput-wide p2, v0, p1

    :goto_0
    return-void

    .line 753
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 5

    .line 711
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->ptr:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LongLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LongLargeArray;->setShort(JS)V

    return-void
.end method
