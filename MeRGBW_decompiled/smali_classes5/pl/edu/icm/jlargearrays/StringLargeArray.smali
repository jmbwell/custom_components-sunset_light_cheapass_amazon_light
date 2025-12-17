.class public Lpl/edu/icm/jlargearrays/StringLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "StringLargeArray.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CHARSET_SIZE:I = 0x4

.field private static final serialVersionUID:J = -0x38da9d0e875163caL


# instance fields
.field private byteArray:[B

.field private data:[Ljava/lang/String;

.field private maxStringLength:I

.field private size:J

.field private stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x64

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JIZ)V

    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 9

    .line 80
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 81
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->STRING:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 82
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    if-lez p3, :cond_2

    .line 89
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    int-to-long v0, p3

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    .line 90
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->size:J

    .line 91
    iput p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    .line 92
    invoke-static {}, Lpl/edu/icm/jlargearrays/StringLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 93
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->size:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    if-eqz p4, :cond_0

    .line 95
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->size:J

    invoke-virtual {p0, v0, v1}, Lpl/edu/icm/jlargearrays/StringLargeArray;->zeroNativeMemory(J)V

    .line 97
    :cond_0
    new-instance p4, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->size:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    move-object v2, p4

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p4}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 98
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->size:J

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    .line 99
    new-instance p4, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-direct {p4, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;-><init>(J)V

    iput-object p4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    mul-int/lit8 p3, p3, 0x4

    .line 100
    new-array p1, p3, [B

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->byteArray:[B

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 102
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    :goto_0
    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not a positive int value."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not a positive long value."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 114
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->STRING:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 115
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 119
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    .line 121
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    return-void

    .line 117
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

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 131
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->STRING:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 132
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    .line 133
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    .line 134
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/StringLargeArray;->clone()Lpl/edu/icm/jlargearrays/StringLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/StringLargeArray;
    .locals 12

    .line 145
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lpl/edu/icm/jlargearrays/StringLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JLjava/lang/String;)V

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/StringLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const/4 v3, 0x1

    iget v4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/StringLargeArray;-><init>(JIZ)V

    const-wide/16 v8, 0x0

    .line 149
    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 157
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 158
    check-cast p1, Lpl/edu/icm/jlargearrays/StringLargeArray;

    .line 159
    iget v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    iget v2, p1, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    iget-object v2, p1, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 160
    :goto_0
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v2, :cond_2

    iget-object v4, p1, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v2, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 162
    :cond_2
    iget-object p1, p1, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public bridge synthetic get(J)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get(J)Ljava/lang/String;
    .locals 12

    .line 182
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return-object v2

    .line 185
    :cond_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v3, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    int-to-long p1, p1

    mul-long/2addr v3, p1

    const-wide/16 p1, 0x4

    mul-long/2addr v3, p1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 187
    iget-object p2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->byteArray:[B

    sget-object v5, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    add-long/2addr v6, v3

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    int-to-long v10, p1

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v5

    aput-byte v5, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->byteArray:[B

    const-string v3, "UTF-8"

    invoke-direct {p1, p2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    .line 194
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object p1, p1, v1

    return-object p1

    .line 197
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 0

    .line 220
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public final getBooleanData()[Z
    .locals 8

    .line 283
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [Z

    .line 285
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    int-to-long v4, v1

    .line 286
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 287
    iget-object v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 288
    :goto_1
    aput-boolean v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_2
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_4

    .line 291
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    int-to-long v4, v3

    .line 292
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 293
    aput-boolean v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_3
    int-to-long v4, v1

    .line 296
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 297
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

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

    if-ltz v2, :cond_b

    .line 307
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_b

    cmp-long v2, p4, v0

    if-ltz v2, :cond_a

    .line 310
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_a

    cmp-long v2, p4, p2

    if-ltz v2, :cond_a

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_9

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 317
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

    .line 322
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 325
    new-array p1, p1, [Z

    .line 328
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    cmp-long v3, p2, p4

    if-gez v3, :cond_8

    .line 330
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v3, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 331
    :goto_2
    aput-boolean v3, p1, v0

    add-long/2addr p2, p6

    move v0, v4

    goto :goto_1

    .line 333
    :cond_3
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    cmp-long v0, p2, p4

    if-gez v0, :cond_8

    add-int/lit8 v0, v2, 0x1

    .line 336
    aput-boolean v1, p1, v2

    add-long/2addr p2, p6

    move v2, v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_4
    cmp-long v3, p2, p4

    if-gez v3, :cond_8

    .line 340
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    add-int/lit8 v4, v0, 0x1

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move v3, v2

    .line 341
    :goto_6
    aput-boolean v3, p1, v0

    add-long/2addr p2, p6

    move v0, v4

    goto :goto_4

    :cond_8
    return-object p1

    .line 314
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getByte(J)B
    .locals 0

    .line 227
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-byte p1, p1

    return p1
.end method

.method public final getByteData()[B
    .locals 7

    .line 351
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 353
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 354
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 355
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-byte v1, v1

    :goto_2
    int-to-long v3, v2

    .line 359
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 360
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_3
    int-to-long v3, v1

    .line 363
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 364
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 374
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 377
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 384
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

    .line 389
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 392
    new-array p1, p1, [B

    .line 395
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 397
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 399
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 401
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 405
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 381
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/StringLargeArray;->getData()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getData()[Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 0

    .line 270
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-double p1, p1

    return-wide p1
.end method

.method public final getDoubleData()[D
    .locals 7

    .line 673
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 674
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [D

    .line 675
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 676
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 677
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    int-to-double v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 680
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-long v3, v2

    .line 681
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    int-to-double v3, v1

    .line 682
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    int-to-long v3, v2

    .line 685
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 686
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v3, v1

    goto :goto_3

    :cond_4
    const-wide/16 v3, 0x0

    :goto_3
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 696
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 699
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 706
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

    .line 711
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 714
    new-array p1, p1, [D

    .line 717
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 719
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 721
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 723
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x0

    :goto_3
    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 727
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    int-to-double v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 703
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 697
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 0

    .line 262
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    return p1
.end method

.method public final getFloatData()[F
    .locals 7

    .line 609
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [F

    .line 611
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 612
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 613
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 616
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-long v3, v2

    .line 617
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    int-to-float v3, v1

    .line 618
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    int-to-long v3, v2

    .line 621
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 622
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 632
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 635
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 642
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

    .line 647
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 650
    new-array p1, p1, [F

    .line 653
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 655
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    int-to-float v2, v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 657
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 659
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 663
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    int-to-float v3, v3

    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 639
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 636
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getFromNative(J)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->getFromNative(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getFromNative(J)Ljava/lang/String;
    .locals 12

    .line 204
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    const-wide/16 p1, 0x4

    mul-long/2addr v2, p1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v0, :cond_1

    .line 208
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->byteArray:[B

    sget-object v5, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    add-long/2addr v6, v2

    iget-wide v8, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    int-to-long v10, p2

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v5

    aput-byte v5, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->byteArray:[B

    const-string v3, "UTF-8"

    invoke-direct {p2, v2, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v1
.end method

.method public final getInt(J)I
    .locals 0

    .line 248
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getIntData()[I
    .locals 7

    .line 479
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 481
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 482
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 483
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 486
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-long v3, v2

    .line 487
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 488
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    int-to-long v3, v1

    .line 491
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 492
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 502
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 505
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 512
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

    .line 517
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 520
    new-array p1, p1, [I

    .line 523
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 525
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    aput v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 527
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 529
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 534
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    aput v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 509
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 0

    .line 255
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    return-wide p1
.end method

.method public final getLongData()[J
    .locals 9

    .line 544
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [J

    .line 546
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 547
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 548
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    int-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 551
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-long v3, v2

    .line 552
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    int-to-long v3, v1

    .line 553
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    int-to-long v5, v2

    .line 556
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_5

    .line 557
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v5, v1

    goto :goto_3

    :cond_4
    move-wide v5, v3

    :goto_3
    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 567
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 570
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 577
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

    .line 582
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 585
    new-array p1, p1, [J

    .line 588
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 590
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    int-to-long v2, v2

    aput-wide v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 592
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 594
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    int-to-long v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 599
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    int-to-long v3, v3

    aput-wide v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 574
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 568
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 875
    iget v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    return v0
.end method

.method public final getShort(J)S
    .locals 0

    .line 241
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-short p1, p1

    return p1
.end method

.method public final getShortData()[S
    .locals 7

    .line 415
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    const-wide/32 v2, 0x40000000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    long-to-int v0, v0

    new-array v0, v0, [S

    .line 417
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    int-to-long v3, v2

    .line 418
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 419
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v1

    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_1
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    int-to-short v1, v1

    :goto_2
    int-to-long v3, v2

    .line 423
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 424
    aput-short v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_3
    int-to-long v3, v1

    .line 427
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 428
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    int-to-short v3, v3

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 438
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    cmp-long v2, p4, v0

    if-ltz v2, :cond_8

    .line 441
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v2, p4, v2

    if-gtz v2, :cond_8

    cmp-long v2, p4, p2

    if-ltz v2, :cond_8

    const-wide/16 v2, 0x1

    cmp-long v2, p6, v2

    if-ltz v2, :cond_7

    sub-long v2, p4, p2

    long-to-double v2, v2

    long-to-double v4, p6

    div-double/2addr v2, v4

    .line 448
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

    .line 453
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    .line 456
    new-array p1, p1, [S

    .line 459
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    cmp-long v0, p2, p4

    if-gez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 461
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v2, p2, p3}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v2

    aput-short v2, p1, v1

    add-long/2addr p2, p6

    move v1, v0

    goto :goto_1

    .line 463
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 465
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    int-to-short v3, v3

    aput-short v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_4
    cmp-long v2, p2, p4

    if-gez v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 469
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int v4, p2

    aget-object v3, v3, v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    int-to-short v3, v3

    aput-short v3, p1, v0

    add-long/2addr p2, p6

    move v0, v2

    goto :goto_4

    :cond_6
    return-object p1

    .line 445
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "endPos < 0 || endPos > length || endPos < startPos"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "startPos < 0 || startPos >= length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 0

    .line 234
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-short p1, p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 174
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 175
    iget v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    ushr-int/lit8 v3, v1, 0x10

    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 176
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final set(JLjava/lang/Object;)V
    .locals 10

    .line 768
    const-string v0, "Constant arrays cannot be modified."

    const-wide/16 v1, 0x0

    if-nez p3, :cond_2

    .line 769
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long p3, v3, v1

    if-eqz p3, :cond_0

    .line 770
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    goto/16 :goto_1

    .line 772
    :cond_0
    iget-boolean p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-nez p3, :cond_1

    .line 775
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int p1, p1

    const/4 p2, 0x0

    aput-object p2, p3, p1

    goto/16 :goto_1

    .line 773
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 778
    :cond_2
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 781
    check-cast p3, Ljava/lang/String;

    .line 782
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    .line 783
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    const-string v2, " is too long."

    const-string v3, "String  "

    if-gt v0, v1, :cond_4

    .line 788
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    array-length v1, v0

    const/16 v4, 0x7fff

    if-gt v1, v4, :cond_3

    .line 796
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    int-to-short v2, v1

    invoke-virtual {p3, p1, p2, v2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    .line 797
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    const-wide/16 p1, 0x4

    mul-long/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_6

    .line 799
    sget-object p2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    int-to-long v8, p1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte p3, v0, p1

    invoke-virtual {p2, v4, v5, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 794
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    return-void

    .line 784
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 802
    :cond_5
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->isConstant:Z

    if-nez v1, :cond_7

    .line 805
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->data:[Ljava/lang/String;

    long-to-int p1, p1

    aput-object p3, v0, p1

    :cond_6
    :goto_1
    return-void

    .line 803
    :cond_7
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a string."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBoolean(JZ)V
    .locals 0

    .line 822
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setByte(JB)V
    .locals 0

    .line 828
    invoke-static {p3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setDouble(JD)V
    .locals 0

    .line 864
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setFloat(JF)V
    .locals 0

    .line 858
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setInt(JI)V
    .locals 0

    .line 846
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setLong(JJ)V
    .locals 0

    .line 852
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setShort(JS)V
    .locals 0

    .line 840
    invoke-static {p3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 10

    if-nez p3, :cond_0

    .line 738
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    goto :goto_1

    .line 740
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 743
    check-cast p3, Ljava/lang/String;

    .line 744
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    const-string v2, " is too long."

    const-string v3, "String  "

    if-gt v0, v1, :cond_3

    .line 749
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    array-length v1, v0

    const/16 v4, 0x7fff

    if-gt v1, v4, :cond_2

    .line 757
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->stringLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    int-to-short v2, v1

    invoke-virtual {p3, p1, p2, v2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    .line 758
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->maxStringLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    const-wide/16 p1, 0x4

    mul-long/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    .line 760
    sget-object p2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->ptr:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->sizeof:J

    int-to-long v8, p1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte p3, v0, p1

    invoke-virtual {p2, v4, v5, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 755
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    return-void

    .line 745
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a string."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 834
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->setShort(JS)V

    return-void
.end method

.method public final set_safe(JLjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 813
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/StringLargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 816
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    return-void

    .line 814
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
