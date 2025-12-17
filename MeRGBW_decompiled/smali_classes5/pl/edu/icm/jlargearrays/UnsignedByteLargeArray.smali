.class public Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "UnsignedByteLargeArray.java"


# static fields
.field private static final serialVersionUID:J = 0x2b833848019beca8L


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JS)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 88
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 89
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 93
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-ltz p3, :cond_0

    const/16 p2, 0xff

    if-gt p3, p2, :cond_0

    int-to-byte p2, p3

    .line 98
    new-array p1, p1, [B

    const/4 p3, 0x0

    aput-byte p2, p1, p3

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value cannot be smaller than 0 or greater than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
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

    .line 61
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 62
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 63
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 67
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    .line 68
    invoke-static {}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 69
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->zeroNativeMemory(J)V

    .line 73
    :cond_0
    new-instance p1, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 74
    iget-wide p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 76
    new-array p1, p1, [B

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

.method public constructor <init>([B)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 108
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 109
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    .line 110
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    .line 111
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    return-void
.end method

.method public constructor <init>([S)V
    .locals 5

    .line 120
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 121
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 122
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->sizeof:J

    .line 123
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    .line 124
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 125
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 126
    aget-short v1, p1, v0

    if-ltz v1, :cond_0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 130
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The value cannot be smaller than 0 or greater than 255"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->clone()Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;
    .locals 12

    .line 142
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getByte(J)B

    move-result v3

    int-to-short v3, v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JS)V

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;-><init>(JZ)V

    const-wide/16 v8, 0x0

    .line 146
    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JLpl/edu/icm/jlargearrays/UnsignedByteLargeArray;JJ)V

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
    check-cast p1, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;

    .line 156
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    iget-object p1, p1, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->get(J)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public final get(J)Ljava/lang/Short;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getUnsignedByte(J)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 5

    .line 182
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

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
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 187
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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
    .locals 9

    .line 316
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 318
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    int-to-long v4, v1

    .line 319
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 320
    sget-object v6, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v7, v4

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
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    int-to-long v4, v3

    .line 325
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 330
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_a

    cmp-long v2, p4, v0

    if-ltz v2, :cond_9

    .line 275
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

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

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-eqz v3, :cond_2

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
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1

    .line 196
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    return p1

    .line 199
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    return p1
.end method

.method public final getByteData()[B
    .locals 7

    .line 346
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 348
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 349
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 350
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 354
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 355
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_2
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 366
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 369
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 376
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

    .line 381
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 384
    new-array p1, p1, [B

    .line 387
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 389
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 391
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 393
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 397
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 373
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    .line 340
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 4

    .line 260
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-double p1, p1

    return-wide p1

    .line 262
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getDoubleData()[D
    .locals 7

    .line 663
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 664
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 665
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 666
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 667
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 670
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 671
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-double v3, v1

    .line 672
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 675
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 676
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 686
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 689
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 696
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

    .line 701
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 704
    new-array p1, p1, [D

    .line 707
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 709
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 711
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 713
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

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

    .line 717
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 693
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 687
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 4

    .line 248
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    return p1

    .line 250
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getFloatData()[F
    .locals 7

    .line 599
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 601
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 602
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 603
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 607
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-float v3, v1

    .line 608
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 611
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 612
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 622
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 625
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 632
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

    .line 637
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 640
    new-array p1, p1, [F

    .line 643
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 645
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 647
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 649
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

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

    .line 653
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 629
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
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

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getFromNative(J)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 4

    .line 224
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    return p1

    .line 226
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getIntData()[I
    .locals 7

    .line 471
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 473
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 474
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 475
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 479
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 480
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 483
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 484
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 494
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 497
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 504
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

    .line 509
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 512
    new-array p1, p1, [I

    .line 515
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 517
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 519
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 521
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 525
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 501
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 4

    .line 236
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    return-wide p1

    .line 238
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public final getLongData()[J
    .locals 7

    .line 535
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 536
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 537
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 538
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 539
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    :goto_1
    int-to-long v3, v2

    .line 543
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-long v3, v1

    .line 544
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 547
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 548
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 558
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 561
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 568
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

    .line 573
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 576
    new-array p1, p1, [J

    .line 579
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 581
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 583
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 585
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

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

    .line 589
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 565
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShort(J)S
    .locals 0

    .line 218
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->getUnsignedByte(J)S

    move-result p1

    return p1
.end method

.method public final getShortData()[S
    .locals 7

    .line 407
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 408
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 409
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 410
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 411
    sget-object v1, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v1, v1, v2

    int-to-short v1, v1

    :goto_1
    int-to-long v3, v2

    .line 415
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 416
    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    int-to-long v3, v2

    .line 419
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    .line 420
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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

    .line 430
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    cmp-long v2, p4, v0

    if-ltz v2, :cond_6

    .line 433
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->length:J

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

    .line 440
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

    .line 445
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 448
    new-array p1, p1, [S

    .line 451
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 453
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 455
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 457
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

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

    .line 461
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int v3, p2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_3

    :cond_4
    return-object p1

    .line 437
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 4

    .line 206
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    :goto_0
    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1

    .line 208
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aget-byte p1, v0, p1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

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
    .locals 5

    .line 733
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 734
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p1

    if-ne p3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v3, v4, v1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 736
    :cond_1
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_3

    .line 739
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    if-ne p3, v2, :cond_2

    move v1, v2

    :cond_2
    aput-byte v1, v0, p1

    :goto_0
    return-void

    .line 737
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 4

    .line 746
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 749
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    aput-byte p3, v0, p1

    :goto_0
    return-void

    .line 750
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 5

    .line 828
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 829
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p1

    double-to-long p1, p3

    and-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, v3, v4, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 831
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 834
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    double-to-long p2, p3

    and-long/2addr p2, v1

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 832
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 4

    .line 815
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    float-to-int p1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 818
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 821
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    float-to-int p2, p3

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 819
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 4

    .line 789
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 790
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 792
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 793
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 5

    .line 802
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 803
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v3, p1

    and-long p1, p3, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, v3, v4, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 805
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    and-long p2, p3, v1

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 806
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShort(JS)V
    .locals 4

    .line 776
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 777
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 779
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 780
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 3

    .line 727
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public final setUnsignedByte(JS)V
    .locals 4

    if-ltz p3, :cond_2

    const/16 v0, 0xff

    if-gt p3, v0, :cond_2

    .line 763
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->ptr:J

    add-long/2addr v1, p1

    int-to-byte p1, p3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    goto :goto_0

    .line 766
    :cond_0
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->isConstant:Z

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/UnsignedByteLargeArray;->data:[B

    long-to-int p1, p1

    int-to-byte p2, p3

    aput-byte p2, v0, p1

    :goto_0
    return-void

    .line 767
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Constant arrays cannot be modified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 761
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The value cannot be smaller than 0 or greater than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
