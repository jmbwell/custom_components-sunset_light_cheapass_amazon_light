.class public abstract Lpl/edu/icm/jlargearrays/LargeArray;
.super Ljava/lang/Object;
.source "LargeArray.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/edu/icm/jlargearrays/LargeArray$Deallocator;
    }
.end annotation


# static fields
.field public static final LARGEST_SUBARRAY:I = 0x40000000

.field private static maxSizeOf32bitArray:I = 0x40000000

.field private static final serialVersionUID:J = 0x6def2396809fd521L


# instance fields
.field protected isConstant:Z

.field protected length:J

.field protected parent:Ljava/lang/Object;

.field protected ptr:J

.field protected sizeof:J

.field protected type:Lpl/edu/icm/jlargearrays/LargeArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JLpl/edu/icm/jlargearrays/LargeArrayType;J)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    .line 90
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    .line 91
    iput-wide p2, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    .line 92
    iput-object p4, p0, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 93
    invoke-virtual {p4}, Lpl/edu/icm/jlargearrays/LargeArrayType;->sizeOf()J

    move-result-wide p1

    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_0

    .line 97
    iput-wide p5, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " is not a positive long value"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMaxSizeOf32bitArray()I
    .locals 1

    .line 877
    sget v0, Lpl/edu/icm/jlargearrays/LargeArray;->maxSizeOf32bitArray:I

    return v0
.end method

.method public static setMaxSizeOf32bitArray(I)V
    .locals 1

    if-ltz p0, :cond_0

    .line 867
    sput p0, Lpl/edu/icm/jlargearrays/LargeArray;->maxSizeOf32bitArray:I

    return-void

    .line 865
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index cannot be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 884
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 886
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 893
    instance-of v1, p1, Lpl/edu/icm/jlargearrays/LargeArray;

    if-nez v1, :cond_0

    goto :goto_1

    .line 895
    :cond_0
    check-cast p1, Lpl/edu/icm/jlargearrays/LargeArray;

    .line 896
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iget-object v2, p1, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    iget-wide v4, p1, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    iget-wide v4, p1, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    iget-boolean v2, p1, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    iget-wide v4, p1, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 897
    :goto_0
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v4, p1, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    .line 898
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 899
    iget-object p1, p1, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public abstract get(J)Ljava/lang/Object;
.end method

.method public abstract getBoolean(J)Z
.end method

.method public abstract getBooleanData()[Z
.end method

.method public abstract getBooleanData([ZJJJ)[Z
.end method

.method public getBoolean_safe(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 186
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 189
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getBoolean(J)Z

    move-result p1

    return p1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getByteData()[B
.end method

.method public abstract getByteData([BJJJ)[B
.end method

.method public getByte_safe(J)B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 211
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result p1

    return p1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getData()Ljava/lang/Object;
.end method

.method public abstract getDouble(J)D
.end method

.method public abstract getDoubleData()[D
.end method

.method public abstract getDoubleData([DJJJ)[D
.end method

.method public getDouble_safe(J)D
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 361
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 364
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide p1

    return-wide p1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getFloat(J)F
.end method

.method public abstract getFloatData()[F
.end method

.method public abstract getFloatData([FJJJ)[F
.end method

.method public getFloat_safe(J)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 336
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 339
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result p1

    return p1

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getFromNative(J)Ljava/lang/Object;
.end method

.method public abstract getInt(J)I
.end method

.method public abstract getIntData()[I
.end method

.method public abstract getIntData([IJJJ)[I
.end method

.method public getInt_safe(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 286
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 289
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result p1

    return p1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getLong(J)J
.end method

.method public abstract getLongData()[J
.end method

.method public abstract getLongData([JJJJ)[J
.end method

.method public getLong_safe(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 311
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide p1

    return-wide p1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getShort(J)S
.end method

.method public abstract getShortData()[S
.end method

.method public abstract getShortData([SJJJ)[S
.end method

.method public getShort_safe(J)S
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 261
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 264
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result p1

    return p1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lpl/edu/icm/jlargearrays/LargeArrayType;
    .locals 1

    .line 127
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    return-object v0
.end method

.method public abstract getUnsignedByte(J)S
.end method

.method public getUnsignedByte_safe(J)S
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 236
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result p1

    return p1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get_safe(J)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 149
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 7

    .line 911
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0xcb

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1d

    .line 912
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1d

    .line 913
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1d

    .line 914
    iget-boolean v3, p0, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1d

    .line 915
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArray;->parent:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1d

    .line 916
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    ushr-long v0, v3, v0

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    return v2
.end method

.method public isConstant()Z
    .locals 1

    .line 852
    iget-boolean v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->isConstant:Z

    return v0
.end method

.method public isLarge()Z
    .locals 4

    .line 831
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 841
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArrayType;->isNumericType()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    return-wide v0
.end method

.method public nativePointer()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    return-wide v0
.end method

.method public set(JLjava/lang/Object;)V
    .locals 2

    .line 580
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 581
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setBoolean(JZ)V

    goto :goto_0

    .line 582
    :cond_0
    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 583
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    goto :goto_0

    .line 584
    :cond_1
    instance-of v0, p3, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 585
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    goto :goto_0

    .line 586
    :cond_2
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 587
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    goto :goto_0

    .line 588
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 589
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    goto :goto_0

    .line 590
    :cond_4
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 591
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    goto :goto_0

    .line 592
    :cond_5
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 593
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    :goto_0
    return-void

    .line 595
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setBoolean(JZ)V
.end method

.method public setBoolean_safe(JZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 656
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 659
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setBoolean(JZ)V

    return-void

    .line 657
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setByte(JB)V
.end method

.method public setByte_safe(JB)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 679
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 682
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    return-void

    .line 680
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setDouble(JD)V
.end method

.method public setDouble_safe(JD)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 817
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 820
    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    return-void

    .line 818
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setFloat(JF)V
.end method

.method public setFloat_safe(JF)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 794
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 797
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    return-void

    .line 795
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setInt(JI)V
.end method

.method public setInt_safe(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 748
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 751
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    return-void

    .line 749
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setLong(JJ)V
.end method

.method public setLong_safe(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 771
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 774
    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    return-void

    .line 772
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setShort(JS)V
.end method

.method public setShort_safe(JS)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 725
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 728
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    return-void

    .line 726
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract setToNative(JLjava/lang/Object;)V
.end method

.method public abstract setUnsignedByte(JS)V
.end method

.method public setUnsignedByte_safe(JB)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 702
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    int-to-short p3, p3

    .line 705
    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setUnsignedByte(JS)V

    return-void

    .line 703
    :cond_0
    new-instance p3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public set_safe(JLjava/lang/Object;)V
    .locals 2

    .line 620
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 621
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setBoolean_safe(JZ)V

    goto :goto_0

    .line 622
    :cond_0
    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 623
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte_safe(JB)V

    goto :goto_0

    .line 624
    :cond_1
    instance-of v0, p3, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 625
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort_safe(JS)V

    goto :goto_0

    .line 626
    :cond_2
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 627
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt_safe(JI)V

    goto :goto_0

    .line 628
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 629
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong_safe(JJ)V

    goto :goto_0

    .line 630
    :cond_4
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 631
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat_safe(JF)V

    goto :goto_0

    .line 632
    :cond_5
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 633
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble_safe(JD)V

    :goto_0
    return-void

    .line 635
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected zeroNativeMemory(J)V
    .locals 21

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    .line 957
    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 958
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    const/4 v0, 0x2

    if-le v11, v0, :cond_3

    .line 959
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getConcurrentThreshold()J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    int-to-long v0, v11

    .line 962
    div-long v12, v9, v0

    .line 963
    new-array v14, v11, [Ljava/util/concurrent/Future;

    .line 964
    iget-wide v6, v8, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v11, :cond_2

    int-to-long v0, v15

    mul-long v2, v0, v12

    add-int/lit8 v0, v11, -0x1

    if-ne v15, v0, :cond_1

    move-wide v4, v9

    goto :goto_1

    :cond_1
    add-long v0, v2, v12

    move-wide v4, v0

    .line 968
    :goto_1
    new-instance v16, Lpl/edu/icm/jlargearrays/LargeArray$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v17, v6

    invoke-direct/range {v0 .. v7}, Lpl/edu/icm/jlargearrays/LargeArray$1;-><init>(Lpl/edu/icm/jlargearrays/LargeArray;JJJ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1015
    :cond_2
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1019
    :catch_0
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, v8, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    iget-wide v3, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v3, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    goto :goto_3

    .line 1017
    :catch_1
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, v8, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    iget-wide v3, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long v12, v9, v3

    const/4 v14, 0x0

    move-object v9, v0

    move-wide v10, v1

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->setMemory(JJB)V

    goto :goto_3

    .line 960
    :cond_3
    :goto_2
    sget-object v15, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v0, v8, Lpl/edu/icm/jlargearrays/LargeArray;->ptr:J

    iget-wide v2, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long v18, v9, v2

    const/16 v20, 0x0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->setMemory(JJB)V

    :cond_4
    :goto_3
    return-void
.end method
