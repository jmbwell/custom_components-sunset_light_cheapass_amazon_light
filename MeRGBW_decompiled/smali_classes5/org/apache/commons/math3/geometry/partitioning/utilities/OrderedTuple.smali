.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;
.super Ljava/lang/Object;
.source "OrderedTuple.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field private static final IMPLICIT_ONE:J = 0x10000000000000L

.field private static final MANTISSA_MASK:J = 0xfffffffffffffL

.field private static final SIGN_MASK:J = -0x8000000000000000L


# instance fields
.field private components:[D

.field private encoding:[J

.field private lsb:I

.field private nan:Z

.field private negInf:Z

.field private offset:I

.field private posInf:Z


# direct methods
.method public varargs constructor <init>([D)V
    .locals 10

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    const v0, 0x7fffffff

    .line 137
    iput v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 139
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 140
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    const/high16 v1, -0x80000000

    move v2, v0

    .line 141
    :goto_0
    array-length v3, p1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_4

    .line 142
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    aget-wide v3, p1, v2

    const-wide/16 v7, 0x0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_0

    .line 144
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    goto :goto_1

    .line 146
    :cond_0
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    goto :goto_1

    .line 148
    :cond_1
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    goto :goto_1

    .line 151
    :cond_2
    aget-wide v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 152
    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    .line 154
    invoke-static {v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result v3

    .line 155
    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeMSB(J)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 156
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->computeLSB(J)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_4
    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz p1, :cond_5

    .line 163
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    .line 164
    iput-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    .line 165
    iput-boolean v6, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    .line 168
    :cond_5
    iget p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    if-gt p1, v1, :cond_6

    add-int/lit8 v1, v1, 0x10

    .line 170
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    goto :goto_2

    .line 172
    :cond_6
    new-array p1, v6, [J

    aput-wide v4, p1, v0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    :goto_2
    return-void
.end method

.method private static computeLSB(J)I
    .locals 6

    const-wide v0, -0x100000000L

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    and-long v4, p0, v0

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    or-int/2addr v3, v2

    shr-long/2addr p0, v2

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    shr-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static computeMSB(J)I
    .locals 6

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    and-long v4, p0, v0

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    or-int/2addr v3, v2

    shr-long/2addr p0, v2

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    shr-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return v3
.end method

.method private encode(I)V
    .locals 11

    add-int/lit8 p1, p1, 0x1f

    .line 186
    iput p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 187
    rem-int/lit8 v0, p1, 0x20

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-wide v4, v0, v3

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 196
    iget v4, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    sub-int/2addr v0, v4

    const/16 v4, 0x3e

    add-int/2addr v0, v4

    .line 197
    div-int/lit8 v0, v0, 0x3f

    .line 198
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v5, v5

    mul-int/2addr v5, v0

    new-array v0, v5, [J

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    move-wide v6, v1

    move v0, v3

    move v5, v4

    .line 204
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v8, v8

    if-ge v0, v8, :cond_4

    move v8, v3

    .line 205
    :goto_1
    iget-object v9, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v9, v9

    if-ge v8, v9, :cond_3

    .line 206
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->getBit(II)I

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v5

    or-long/2addr v6, v9

    :cond_1
    add-int/lit8 v9, v5, -0x1

    if-nez v5, :cond_2

    .line 210
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    add-int/lit8 v9, v0, 0x1

    aput-wide v6, v5, v0

    move-wide v6, v1

    move v5, v4

    move v0, v9

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static exponent(J)I
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const/16 v0, 0x34

    shr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit16 p0, p0, -0x433

    return p0
.end method

.method private getBit(II)I
    .locals 7

    .line 417
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 418
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->exponent(J)I

    move-result p1

    const/4 v2, 0x0

    if-lt p2, p1, :cond_6

    .line 419
    iget v3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-le p2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-ne p2, v3, :cond_2

    .line 422
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide p1

    cmp-long p1, p1, v5

    if-nez p1, :cond_1

    move v2, v4

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, p1, 0x34

    if-le p2, v3, :cond_4

    .line 424
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide p1

    cmp-long p1, p1, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    return v2

    .line 426
    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->sign(J)J

    move-result-wide v2

    cmp-long v2, v2, v5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->mantissa(J)J

    move-result-wide v0

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    neg-long v0, v0

    :goto_1
    sub-int/2addr p2, p1

    shr-long p1, v0, p2

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    :cond_6
    :goto_2
    return v2
.end method

.method private static mantissa(J)J
    .locals 5

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v1, 0xfffffffffffffL

    if-nez v0, :cond_0

    and-long/2addr p0, v1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr p0, v1

    or-long/2addr p0, v3

    :goto_0
    return-wide p0
.end method

.method private static sign(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I
    .locals 10

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v1, v0

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    array-length v3, v2

    if-ne v1, v3, :cond_d

    .line 251
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    .line 255
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-eqz v0, :cond_2

    goto :goto_3

    .line 257
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 261
    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    iget v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    if-ge v0, v3, :cond_4

    .line 262
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    goto :goto_0

    :cond_4
    if-le v0, v3, :cond_5

    .line 264
    invoke-direct {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encode(I)V

    .line 267
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v0, v0

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v3, v3

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_8

    .line 269
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v6, v5, v4

    iget-object v5, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    aget-wide v8, v5, v4

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    return v2

    :cond_6
    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    return v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v4, v0

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->encoding:[J

    array-length v5, p1

    if-ge v4, v5, :cond_9

    return v2

    .line 278
    :cond_9
    array-length v0, v0

    array-length p1, p1

    if-le v0, p1, :cond_a

    return v1

    :cond_a
    return v3

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    return v2

    .line 287
    :cond_d
    array-length p1, v0

    array-length v0, v2

    sub-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 296
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 297
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->compareTo(Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getComponents()[D
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 314
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->components:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 315
    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 316
    iget v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->lsb:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 317
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->posInf:Z

    const/16 v2, 0x61

    const/16 v3, 0x47

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 318
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->negInf:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 319
    iget-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/OrderedTuple;->nan:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
