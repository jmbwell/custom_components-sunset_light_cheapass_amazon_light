.class public Lorg/apache/commons/math3/random/MersenneTwister;
.super Lorg/apache/commons/math3/random/BitsStreamGenerator;
.source "MersenneTwister.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final M:I = 0x18d

.field private static final MAG01:[I

.field private static final N:I = 0x270

.field private static final serialVersionUID:J = 0x7832beb90773fa2eL


# instance fields
.field private mt:[I

.field private mti:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const v1, -0x66f74f21

    .line 93
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 106
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 114
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 131
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/math3/random/BitsStreamGenerator;-><init>()V

    const/16 v0, 0x270

    .line 123
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 10

    .line 232
    iget v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v1, 0x270

    if-lt v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0xe3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-ge v2, v3, :cond_0

    .line 236
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v6, v2, 0x1

    aget v7, v3, v6

    and-int/2addr v0, v5

    and-int/2addr v4, v7

    or-int/2addr v0, v4

    add-int/lit16 v4, v2, 0x18d

    .line 238
    aget v4, v3, v4

    ushr-int/lit8 v5, v0, 0x1

    xor-int/2addr v4, v5

    sget-object v5, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    xor-int/2addr v0, v4

    aput v0, v3, v2

    move v2, v6

    move v0, v7

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x26f

    if-ge v3, v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    add-int/lit8 v6, v3, 0x1

    aget v7, v2, v6

    and-int/2addr v0, v5

    and-int v8, v7, v4

    or-int/2addr v0, v8

    add-int/lit16 v8, v3, -0xe3

    .line 244
    aget v8, v2, v8

    ushr-int/lit8 v9, v0, 0x1

    xor-int/2addr v8, v9

    sget-object v9, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    xor-int/2addr v0, v8

    aput v0, v2, v3

    move v3, v6

    move v0, v7

    goto :goto_1

    :cond_1
    and-int/2addr v0, v5

    .line 246
    iget-object v3, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v5, v3, v1

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    const/16 v4, 0x18c

    .line 247
    aget v4, v3, v4

    ushr-int/lit8 v5, v0, 0x1

    xor-int/2addr v4, v5

    sget-object v5, Lorg/apache/commons/math3/random/MersenneTwister;->MAG01:[I

    and-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    xor-int/2addr v0, v4

    aput v0, v3, v2

    .line 249
    iput v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    .line 252
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    iget v1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    aget v0, v0, v1

    ushr-int/lit8 v1, v0, 0xb

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    const v2, -0x62d3a980

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xf

    const/high16 v2, -0x103a0000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x12

    xor-int/2addr v0, v1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v0, p1

    return p1
.end method

.method public setSeed(I)V
    .locals 4

    int-to-long v0, p1

    .line 145
    iget-object p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/4 v2, 0x0

    long-to-int v3, v0

    aput v3, p1, v2

    const/4 p1, 0x1

    .line 146
    :goto_0
    iput p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    iget p1, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mti:I

    const/16 v2, 0x270

    if-ge p1, v2, :cond_0

    const/16 v2, 0x1e

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide/32 v2, 0x6c078965

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 150
    iget-object v2, p0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    long-to-int v3, v0

    aput v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    return-void
.end method

.method public setSeed(J)V
    .locals 3

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 215
    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed([I)V

    return-void
.end method

.method public setSeed([I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(J)V

    return-void

    :cond_0
    const v2, 0x12bd6aa

    .line 171
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/random/MersenneTwister;->setSeed(I)V

    .line 175
    array-length v2, v1

    const/16 v3, 0x270

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    const/4 v5, 0x1

    move v6, v5

    const/4 v7, 0x0

    :goto_0
    const-wide v8, 0xffffffffL

    const/16 v10, 0x1e

    const/16 v11, 0x26f

    const-wide/32 v16, 0x7fffffff

    if-eqz v2, :cond_5

    .line 176
    iget-object v12, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v13, v12, v6

    int-to-long v14, v13

    and-long v14, v14, v16

    if-gez v13, :cond_1

    const-wide v20, 0x80000000L

    goto :goto_1

    :cond_1
    const-wide/16 v20, 0x0

    :goto_1
    or-long v13, v14, v20

    add-int/lit8 v15, v6, -0x1

    .line 177
    aget v15, v12, v15

    int-to-long v3, v15

    and-long v3, v3, v16

    if-gez v15, :cond_2

    const-wide v18, 0x80000000L

    goto :goto_2

    :cond_2
    const-wide/16 v18, 0x0

    :goto_2
    or-long v3, v3, v18

    shr-long v15, v3, v10

    xor-long/2addr v3, v15

    const-wide/32 v15, 0x19660d

    mul-long/2addr v3, v15

    xor-long/2addr v3, v13

    .line 178
    aget v10, v1, v7

    int-to-long v13, v10

    add-long/2addr v3, v13

    int-to-long v13, v7

    add-long/2addr v3, v13

    and-long/2addr v3, v8

    long-to-int v3, v3

    .line 179
    aput v3, v12, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v5

    const/16 v3, 0x270

    if-lt v6, v3, :cond_3

    .line 182
    aget v3, v12, v11

    const/4 v4, 0x0

    aput v3, v12, v4

    move v6, v5

    .line 185
    :cond_3
    array-length v3, v1

    if-lt v7, v3, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x270

    goto :goto_0

    :cond_5
    move v1, v11

    :goto_3
    if-eqz v1, :cond_9

    .line 191
    iget-object v2, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    aget v3, v2, v6

    int-to-long v12, v3

    and-long v12, v12, v16

    if-gez v3, :cond_6

    const-wide v3, 0x80000000L

    goto :goto_4

    :cond_6
    const-wide/16 v3, 0x0

    :goto_4
    or-long/2addr v3, v12

    add-int/lit8 v7, v6, -0x1

    .line 192
    aget v7, v2, v7

    int-to-long v12, v7

    and-long v12, v12, v16

    if-gez v7, :cond_7

    const-wide v14, 0x80000000L

    goto :goto_5

    :cond_7
    const-wide/16 v14, 0x0

    :goto_5
    or-long/2addr v12, v14

    shr-long v14, v12, v10

    xor-long/2addr v12, v14

    const-wide/32 v14, 0x5d588b65

    mul-long/2addr v12, v14

    xor-long/2addr v3, v12

    int-to-long v12, v6

    sub-long/2addr v3, v12

    and-long/2addr v3, v8

    long-to-int v3, v3

    .line 194
    aput v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x270

    if-lt v6, v3, :cond_8

    .line 197
    aget v4, v2, v11

    const/4 v7, 0x0

    aput v4, v2, v7

    move v6, v5

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    .line 202
    iget-object v1, v0, Lorg/apache/commons/math3/random/MersenneTwister;->mt:[I

    const/high16 v2, -0x80000000

    aput v2, v1, v7

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/random/MersenneTwister;->clear()V

    return-void
.end method
