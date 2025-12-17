.class public Lpl/edu/icm/jlargearrays/ObjectLargeArray;
.super Lpl/edu/icm/jlargearrays/LargeArray;
.source "ObjectLargeArray.java"


# static fields
.field private static final serialVersionUID:J = -0x38da9d0e875163caL


# instance fields
.field private byteArray:[B

.field private data:[Ljava/lang/Object;

.field private maxObjectLength:I

.field private objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

.field private size:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x400

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JIZ)V

    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 9

    .line 85
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 86
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->OBJECT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 87
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    if-lez p3, :cond_2

    .line 94
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    int-to-long v0, p3

    mul-long/2addr v0, p1

    .line 95
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->size:J

    .line 96
    iput p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    .line 97
    invoke-static {}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->getMaxSizeOf32bitArray()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 98
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->size:J

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    if-eqz p4, :cond_0

    .line 100
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->size:J

    invoke-virtual {p0, v0, v1}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->zeroNativeMemory(J)V

    .line 102
    :cond_0
    new-instance p4, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->size:J

    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    move-object v2, p4

    invoke-direct/range {v2 .. v8}, Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;-><init>(JJJ)V

    invoke-static {p0, p4}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    .line 103
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->size:J

    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lpl/edu/icm/jlargearrays/MemoryCounter;->increaseCounter(J)V

    .line 104
    new-instance p4, Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-direct {p4, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;-><init>(J)V

    iput-object p4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    .line 105
    new-array p1, p3, [B

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->byteArray:[B

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 107
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    :goto_0
    return-void

    .line 92
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

    .line 89
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

.method public constructor <init>(JLjava/lang/Object;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 119
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->OBJECT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 120
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 124
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant:Z

    .line 126
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    return-void

    .line 122
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

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lpl/edu/icm/jlargearrays/LargeArray;-><init>()V

    .line 136
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->OBJECT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-wide/16 v0, 0x1

    .line 137
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    .line 138
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    .line 139
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    return-void
.end method

.method private static fromByteArray([B)Ljava/lang/Object;
    .locals 2

    .line 490
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 493
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    .line 498
    :goto_0
    :try_start_3
    new-instance v0, Lcom/sun/xml/internal/ws/encoding/soap/SerializationException;

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/ws/encoding/soap/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_0

    .line 502
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 506
    :catch_3
    :cond_0
    throw p0
.end method

.method private static toByteArray(Ljava/lang/Object;)[B
    .locals 3

    .line 468
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 471
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 485
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 475
    :goto_0
    :try_start_3
    new-instance v0, Lcom/sun/xml/internal/ws/encoding/soap/SerializationException;

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/ws/encoding/soap/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_0

    .line 479
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 483
    :catch_3
    :cond_0
    throw p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->clone()Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lpl/edu/icm/jlargearrays/ObjectLargeArray;
    .locals 12

    .line 150
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JLjava/lang/Object;)V

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    const/4 v3, 0x1

    iget v4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;-><init>(JIZ)V

    const-wide/16 v8, 0x0

    .line 154
    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    const-wide/16 v5, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v11}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/ObjectLargeArray;JLpl/edu/icm/jlargearrays/ObjectLargeArray;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 162
    invoke-super {p0, p1}, Lpl/edu/icm/jlargearrays/LargeArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 163
    check-cast p1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;

    .line 164
    iget v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    iget v2, p1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    iget-object v2, p1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 165
    :goto_0
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v2, :cond_2

    iget-object v4, p1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v2, v4}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 167
    :cond_2
    iget-object p1, p1, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 10

    .line 187
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 192
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->byteArray:[B

    sget-object p2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    int-to-long v8, v1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p2

    aput-byte p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->byteArray:[B

    invoke-static {p1}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->fromByteArray([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 195
    :cond_2
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant:Z

    if-eqz v0, :cond_3

    .line 196
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    .line 198
    :cond_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    long-to-int p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getBoolean(J)Z
    .locals 0

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBooleanData()[Z
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBooleanData([ZJJJ)[Z
    .locals 0

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getByte(J)B
    .locals 0

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getByteData()[B
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getByteData([BJJJ)[B
    .locals 0

    .line 289
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->getData()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getData()[Ljava/lang/Object;
    .locals 1

    .line 265
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getDouble(J)D
    .locals 0

    .line 259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDoubleData()[D
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDoubleData([DJJJ)[D
    .locals 0

    .line 349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloat(J)F
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFloatData()[F
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFloatData([FJJJ)[F
    .locals 0

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFromNative(J)Ljava/lang/Object;
    .locals 10

    .line 205
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    invoke-virtual {v0, p1, p2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->getShort(J)S

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_0
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v1, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    int-to-long p1, p1

    mul-long/2addr v1, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 209
    iget-object p2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->byteArray:[B

    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    add-long/2addr v4, v1

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    int-to-long v8, p1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    aput-byte v3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->byteArray:[B

    invoke-static {p1}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->fromByteArray([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getInt(J)I
    .locals 0

    .line 241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getIntData()[I
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIntData([IJJJ)[I
    .locals 0

    .line 313
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLong(J)J
    .locals 0

    .line 247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getLongData()[J
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLongData([JJJJ)[J
    .locals 0

    .line 325
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxObjectLength()I
    .locals 1

    .line 518
    iget v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    return v0
.end method

.method public final getShort(J)S
    .locals 0

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getShortData()[S
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getShortData([SJJJ)[S
    .locals 0

    .line 301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnsignedByte(J)S
    .locals 0

    .line 229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 4

    .line 179
    invoke-super {p0}, Lpl/edu/icm/jlargearrays/LargeArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

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

    .line 180
    iget v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    ushr-int/lit8 v3, v1, 0x10

    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 181
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final set(JLjava/lang/Object;)V
    .locals 10

    .line 378
    const-string v0, "Constant arrays cannot be modified."

    const-wide/16 v1, 0x0

    if-nez p3, :cond_2

    .line 379
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    cmp-long p3, v3, v1

    if-eqz p3, :cond_0

    .line 380
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    goto/16 :goto_1

    .line 382
    :cond_0
    iget-boolean p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant:Z

    if-nez p3, :cond_1

    .line 385
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    long-to-int p1, p1

    const/4 p2, 0x0

    aput-object p2, p3, p1

    goto :goto_1

    .line 383
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_2
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    .line 388
    invoke-static {p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .line 389
    array-length v1, v0

    iget v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    const-string v3, " is too long."

    const-string v4, "Object  "

    if-gt v1, v2, :cond_4

    .line 392
    array-length v1, v0

    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_3

    .line 396
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    int-to-short v2, v1

    invoke-virtual {p3, p1, p2, v2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    .line 397
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_6

    .line 399
    sget-object p2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    int-to-long v8, p1

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aget-byte p3, v0, p1

    invoke-virtual {p2, v4, v5, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 394
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_5
    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->isConstant:Z

    if-nez v1, :cond_7

    .line 405
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->data:[Ljava/lang/Object;

    long-to-int p1, p1

    aput-object p3, v0, p1

    :cond_6
    :goto_1
    return-void

    .line 403
    :cond_7
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBoolean(JZ)V
    .locals 0

    .line 421
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setByte(JB)V
    .locals 0

    .line 427
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDouble(JD)V
    .locals 0

    .line 463
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFloat(JF)V
    .locals 0

    .line 457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInt(JI)V
    .locals 0

    .line 445
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLong(JJ)V
    .locals 0

    .line 451
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShort(JS)V
    .locals 0

    .line 439
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setToNative(JLjava/lang/Object;)V
    .locals 10

    if-nez p3, :cond_0

    .line 356
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    goto :goto_1

    .line 358
    :cond_0
    invoke-static {p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .line 359
    array-length v1, v0

    iget v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    const-string v3, " is too long."

    const-string v4, "Object  "

    if-gt v1, v2, :cond_3

    .line 362
    array-length v1, v0

    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_2

    .line 366
    iget-object p3, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->objectLengths:Lpl/edu/icm/jlargearrays/ShortLargeArray;

    int-to-short v2, v1

    invoke-virtual {p3, p1, p2, v2}, Lpl/edu/icm/jlargearrays/ShortLargeArray;->setShort(JS)V

    .line 367
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

    mul-long/2addr v2, p1

    iget p1, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->maxObjectLength:I

    int-to-long p1, p1

    mul-long/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    .line 369
    sget-object p2, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->ptr:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->sizeof:J

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

    .line 364
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUnsignedByte(JS)V
    .locals 0

    .line 433
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set_safe(JLjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 412
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 415
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/ObjectLargeArray;->set(JLjava/lang/Object;)V

    return-void

    .line 413
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
