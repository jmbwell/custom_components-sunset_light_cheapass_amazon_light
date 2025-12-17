.class public Lorg/apache/commons/math3/linear/ArrayRealVector;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "ArrayRealVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

.field private static final serialVersionUID:J = -0xf3cbe05aa2dda3bL


# instance fields
.field private data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lorg/apache/commons/math3/linear/RealVectorFormat;->getInstance()Lorg/apache/commons/math3/linear/RealVectorFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 65
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 75
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 76
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 210
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 211
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 212
    iget-object v1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 221
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 222
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 223
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 224
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 225
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v1, :cond_0

    .line 227
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    add-int v2, v0, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V
    .locals 0

    .line 201
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 202
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;[D)V
    .locals 4

    .line 251
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 252
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    .line 253
    array-length v1, p2

    add-int v2, v0, v1

    .line 254
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 255
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 179
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 180
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 7

    .line 236
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 237
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 238
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int v2, v0, v1

    .line 239
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 241
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 85
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 125
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 128
    new-array v0, p3, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v1, 0x0

    .line 129
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 126
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 123
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 264
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 265
    array-length v0, p1

    .line 266
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 267
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 268
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void

    .line 105
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 277
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 278
    array-length v0, p1

    .line 279
    array-length v1, p2

    add-int v2, v0, v1

    .line 280
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 281
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 4

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 138
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 139
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_2

    .line 159
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 162
    new-array p3, p3, [D

    iput-object p3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    move p3, p2

    :goto_0
    if-ge p3, v1, :cond_0

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, p3, p2

    aget-object v3, p1, p3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 160
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 157
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 295
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 296
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 297
    array-length v0, p1

    .line 298
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 299
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 300
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    add-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 306
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 308
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 309
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 311
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    aget-wide v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_1

    .line 313
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public addToEntry(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 673
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 675
    :catch_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p3, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayRealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1

    .line 629
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-object v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 635
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    .line 636
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    aput-wide p1, v1, v0

    .line 638
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 616
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 618
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v0
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 758
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 744
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    return-void
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 850
    instance-of v0, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 851
    check-cast p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p5, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 852
    array-length v0, p5

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 853
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 854
    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aget-wide v4, p5, v1

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 858
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 859
    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public copy()Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 2

    .line 288
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 455
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_1

    .line 456
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 457
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 459
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 460
    aget-wide v4, v3, v2

    aget-wide v6, p1, v2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 464
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 422
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 423
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 424
    array-length v0, p1

    .line 425
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 426
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 427
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 429
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    div-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 433
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 434
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v2, v1

    .line 435
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 436
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 398
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 399
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 400
    array-length v0, p1

    .line 401
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 402
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 403
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 405
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    mul-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 410
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v2, v1

    .line 411
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 412
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 807
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/RealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 811
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/RealVector;

    .line 812
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 816
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result p1

    return p1

    :cond_3
    move v1, v2

    .line 820
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 821
    aget-wide v4, v3, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getDataRef()[D
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 500
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 501
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 502
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 504
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 505
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    .line 510
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 512
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 513
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    :cond_2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 601
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 524
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 525
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 526
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 528
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 529
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    .line 530
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 534
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 536
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 537
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 538
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getL1Norm()D
    .locals 7

    .line 481
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    .line 482
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 548
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 549
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 550
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 552
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 553
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    .line 554
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 558
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 560
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 561
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 562
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getLInfNorm()D
    .locals 7

    .line 491
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    .line 492
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getNorm()D
    .locals 7

    .line 471
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    mul-double/2addr v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 648
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 650
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 653
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    :goto_0
    return-object v0

    .line 646
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 833
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    return v0

    .line 836
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v0

    return v0
.end method

.method public isInfinite()Z
    .locals 6

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v0, v3

    .line 792
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isNaN()Z
    .locals 6

    .line 770
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    .line 771
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 362
    aget-wide v2, v1, v0

    add-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 388
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 389
    aget-wide v2, v1, v0

    div-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 379
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 380
    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 371
    aget-wide v2, v1, v0

    sub-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 4

    const/4 v0, 0x0

    .line 352
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 353
    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 571
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 572
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 573
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 574
    array-length v2, p1

    .line 575
    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_0

    .line 578
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v7, v6, v4

    aget-wide v9, p1, v5

    mul-double/2addr v7, v9

    invoke-interface {v3, v4, v5, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    .line 583
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 584
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    .line 585
    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_4

    move v5, v1

    :goto_3
    if-ge v5, v2, :cond_3

    .line 588
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v7, v6, v4

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-interface {v3, v4, v5, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public set(D)V
    .locals 1

    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aput-wide p2, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 684
    instance-of v0, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_0

    .line 685
    check-cast p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setSubVector(I[D)V

    goto :goto_1

    :cond_0
    move v0, p1

    .line 688
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 689
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, v0, p1

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 693
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSubVector(I[D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 709
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 712
    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 321
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 322
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 323
    array-length v0, p1

    .line 324
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 325
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 326
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 328
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    sub-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 332
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 333
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 334
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 335
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 337
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    aget-wide v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_1

    .line 339
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[D
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 731
    sget-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->format(Lorg/apache/commons/math3/linear/RealVector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 5

    .line 913
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    .line 914
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 915
    aget-wide v3, v0, v2

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 917
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 926
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 928
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v1

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 930
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 5

    .line 868
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    .line 869
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 870
    aget-wide v3, v0, v2

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 880
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 881
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 883
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 885
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 2

    .line 940
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 952
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 2

    .line 895
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 907
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method
