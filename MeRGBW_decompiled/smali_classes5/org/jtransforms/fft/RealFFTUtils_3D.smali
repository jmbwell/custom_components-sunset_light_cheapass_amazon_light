.class public Lorg/jtransforms/fft/RealFFTUtils_3D;
.super Ljava/lang/Object;
.source "RealFFTUtils_3D.java"


# static fields
.field private static final ONE:I = 0x1

.field private static final ONEL:J = 0x1L

.field private static final TWO:I = 0x2

.field private static final TWOL:J = 0x2L

.field private static final ZERO:I

.field private static final ZEROL:J


# instance fields
.field private final columns:I

.field private final columnsl:J

.field private final rowStride:I

.field private final rowStridel:J

.field private final rows:I

.field private final rowsl:J

.field private final sliceStride:I

.field private final sliceStridel:J

.field private final slices:I

.field private final slicesl:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-int v0, p1

    .line 194
    iput v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    long-to-int v0, p3

    .line 195
    iput v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rows:I

    long-to-int v1, p5

    .line 196
    iput v1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->columns:I

    .line 197
    iput v1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v0, v1

    .line 198
    iput v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    .line 199
    iput-wide p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    .line 200
    iput-wide p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowsl:J

    .line 201
    iput-wide p5, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->columnsl:J

    .line 202
    iput-wide p5, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long/2addr p3, p5

    .line 203
    iput-wide p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    return-void
.end method


# virtual methods
.method public getIndex(III)I
    .locals 9

    and-int/lit8 v0, p3, 0x1

    shl-int/lit8 v1, p2, 0x1

    shl-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    .line 237
    :cond_0
    iget v4, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    sub-int/2addr v4, p1

    :goto_0
    if-nez p2, :cond_1

    move v5, v3

    goto :goto_1

    .line 238
    :cond_1
    iget v5, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rows:I

    sub-int/2addr v5, p2

    :goto_1
    const/high16 v6, -0x80000000

    const/4 v7, 0x1

    if-gt p3, v7, :cond_12

    if-nez p2, :cond_8

    if-nez p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    return v3

    .line 243
    :cond_3
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v2, p2, :cond_4

    .line 244
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p2

    :goto_3
    add-int/2addr p1, p3

    return p1

    :cond_4
    if-le v2, p2, :cond_6

    .line 246
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    :goto_4
    return v4

    :cond_6
    if-nez v0, :cond_7

    .line 249
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int v6, p1, p2

    :cond_7
    return v6

    .line 251
    :cond_8
    iget v3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-ge v1, v3, :cond_9

    .line 252
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    :goto_5
    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    goto :goto_3

    :cond_9
    if-le v1, v3, :cond_b

    .line 254
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    :goto_6
    return v4

    :cond_b
    if-nez p1, :cond_d

    if-nez v0, :cond_c

    .line 257
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int v6, p2, p1

    :cond_c
    return v6

    .line 258
    :cond_d
    iget v1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v2, v1, :cond_e

    .line 259
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    goto :goto_5

    :cond_e
    if-le v2, v1, :cond_10

    .line 261
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p1

    add-int/2addr v4, p2

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    :goto_7
    return v4

    .line 264
    :cond_10
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p3

    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    if-nez v0, :cond_11

    move v6, p1

    :cond_11
    return v6

    .line 267
    :cond_12
    iget v3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->columns:I

    if-ge p3, v3, :cond_13

    .line 268
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    goto :goto_5

    :cond_13
    add-int/lit8 v8, v3, 0x1

    if-le p3, v8, :cond_15

    shl-int/lit8 p1, v3, 0x1

    sub-int/2addr p1, p3

    .line 271
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p2

    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v5, p2

    add-int/2addr v4, v5

    add-int/2addr v4, p1

    if-nez v0, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    :goto_8
    return v4

    :cond_15
    if-nez p2, :cond_1d

    if-nez p1, :cond_17

    if-nez v0, :cond_16

    move v6, v7

    :cond_16
    return v6

    .line 276
    :cond_17
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v2, p2, :cond_19

    .line 277
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    if-nez v0, :cond_18

    add-int/2addr v4, v7

    goto :goto_9

    :cond_18
    neg-int v4, v4

    :goto_9
    return v4

    :cond_19
    if-le v2, p2, :cond_1b

    .line 280
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p2

    if-nez v0, :cond_1a

    add-int/lit8 p1, p1, 0x1

    :cond_1a
    return p1

    .line 283
    :cond_1b
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p2

    if-nez v0, :cond_1c

    add-int/lit8 v6, p1, 0x1

    :cond_1c
    return v6

    .line 286
    :cond_1d
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-ge v1, p3, :cond_1f

    .line 287
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    if-nez v0, :cond_1e

    add-int/2addr v4, v7

    goto :goto_a

    :cond_1e
    neg-int v4, v4

    :goto_a
    return v4

    :cond_1f
    if-le v1, p3, :cond_21

    .line 290
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p3

    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    if-nez v0, :cond_20

    add-int/lit8 p1, p1, 0x1

    :cond_20
    return p1

    :cond_21
    if-nez p1, :cond_23

    .line 293
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p1

    add-int/2addr p2, v7

    if-nez v0, :cond_22

    move v6, p2

    :cond_22
    return v6

    .line 295
    :cond_23
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v2, p3, :cond_25

    .line 296
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v4, p1

    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p1

    add-int/2addr v4, p2

    if-nez v0, :cond_24

    add-int/2addr v4, v7

    goto :goto_b

    :cond_24
    neg-int v4, v4

    :goto_b
    return v4

    :cond_25
    if-le v2, p3, :cond_27

    .line 299
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p3

    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    if-nez v0, :cond_26

    add-int/lit8 p1, p1, 0x1

    :cond_26
    return p1

    .line 302
    :cond_27
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr p1, p3

    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    if-nez v0, :cond_28

    add-int/lit8 v6, p1, 0x1

    :cond_28
    return v6
.end method

.method public getIndex(JJJ)J
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    and-long v3, p5, v1

    const/4 v5, 0x1

    shl-long v6, p3, v5

    shl-long v8, p1, v5

    const-wide/16 v10, 0x0

    cmp-long v12, p1, v10

    if-nez v12, :cond_0

    move-wide v13, v10

    goto :goto_0

    .line 338
    :cond_0
    iget-wide v13, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    sub-long v13, v13, p1

    :goto_0
    cmp-long v15, p3, v10

    move-wide/from16 v16, v6

    if-nez v15, :cond_1

    move-wide v5, v10

    goto :goto_1

    .line 339
    :cond_1
    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowsl:J

    sub-long v5, v5, p3

    :goto_1
    cmp-long v7, p5, v1

    const-wide/high16 v18, -0x8000000000000000L

    if-gtz v7, :cond_12

    if-nez v15, :cond_8

    if-nez v12, :cond_3

    cmp-long v1, p5, v10

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v10, v18

    :goto_2
    return-wide v10

    .line 344
    :cond_3
    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    cmp-long v7, v8, v5

    if-gez v7, :cond_4

    .line 345
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    :goto_3
    add-long v1, v1, p5

    return-wide v1

    :cond_4
    cmp-long v5, v8, v5

    if-lez v5, :cond_6

    .line 347
    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    add-long/2addr v13, v1

    neg-long v13, v13

    :goto_4
    return-wide v13

    :cond_6
    cmp-long v1, v3, v10

    if-nez v1, :cond_7

    .line 350
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v18, p1, v1

    :cond_7
    return-wide v18

    .line 352
    :cond_8
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowsl:J

    cmp-long v7, v16, v1

    if-gez v7, :cond_9

    .line 353
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v3, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    :goto_5
    mul-long v3, v3, p3

    add-long/2addr v1, v3

    goto :goto_3

    :cond_9
    cmp-long v1, v16, v1

    if-lez v1, :cond_b

    .line 355
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v1

    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long/2addr v5, v1

    add-long/2addr v13, v5

    cmp-long v1, v3, v10

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v1, 0x1

    add-long/2addr v13, v1

    neg-long v13, v13

    :goto_6
    return-wide v13

    :cond_b
    if-nez v12, :cond_d

    cmp-long v1, v3, v10

    if-nez v1, :cond_c

    .line 358
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v18, p3, v1

    :cond_c
    return-wide v18

    .line 359
    :cond_d
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    cmp-long v5, v8, v1

    if-gez v5, :cond_e

    .line 360
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v3, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    goto :goto_5

    :cond_e
    cmp-long v1, v8, v1

    if-lez v1, :cond_10

    .line 362
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v1

    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v1, v1, p3

    add-long/2addr v13, v1

    cmp-long v1, v3, v10

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    const-wide/16 v1, 0x1

    add-long/2addr v13, v1

    neg-long v13, v13

    :goto_7
    return-wide v13

    .line 365
    :cond_10
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v5, v5, p3

    add-long/2addr v1, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_11

    move-wide/from16 v18, v1

    :cond_11
    return-wide v18

    .line 368
    :cond_12
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->columnsl:J

    cmp-long v7, p5, v1

    if-gez v7, :cond_13

    .line 369
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v3, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    goto :goto_5

    :cond_13
    const-wide/16 v20, 0x1

    add-long v22, v1, v20

    cmp-long v7, p5, v22

    if-lez v7, :cond_15

    const/4 v7, 0x1

    shl-long/2addr v1, v7

    sub-long v1, v1, p5

    .line 372
    iget-wide v7, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v7

    iget-wide v7, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long/2addr v5, v7

    add-long/2addr v13, v5

    add-long/2addr v13, v1

    cmp-long v1, v3, v10

    if-nez v1, :cond_14

    goto :goto_8

    :cond_14
    const-wide/16 v1, 0x2

    add-long/2addr v13, v1

    neg-long v13, v13

    :goto_8
    return-wide v13

    :cond_15
    if-nez v15, :cond_1d

    if-nez v12, :cond_17

    cmp-long v1, v3, v10

    if-nez v1, :cond_16

    const-wide/16 v1, 0x1

    goto :goto_9

    :cond_16
    move-wide/from16 v1, v18

    :goto_9
    return-wide v1

    .line 377
    :cond_17
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    cmp-long v5, v8, v1

    if-gez v5, :cond_19

    .line 378
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v1

    cmp-long v1, v3, v10

    if-nez v1, :cond_18

    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto :goto_a

    :cond_18
    neg-long v13, v13

    :goto_a
    return-wide v13

    :cond_19
    const-wide/16 v5, 0x1

    cmp-long v1, v8, v1

    if-lez v1, :cond_1b

    .line 381
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    cmp-long v3, v3, v10

    if-nez v3, :cond_1a

    add-long/2addr v1, v5

    :cond_1a
    return-wide v1

    .line 384
    :cond_1b
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    cmp-long v3, v3, v10

    if-nez v3, :cond_1c

    add-long v18, v1, v5

    :cond_1c
    return-wide v18

    .line 387
    :cond_1d
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowsl:J

    cmp-long v7, v16, v1

    if-gez v7, :cond_1f

    .line 388
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v1

    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long/2addr v5, v1

    add-long/2addr v13, v5

    cmp-long v1, v3, v10

    if-nez v1, :cond_1e

    const-wide/16 v1, 0x1

    add-long/2addr v13, v1

    goto :goto_b

    :cond_1e
    neg-long v13, v13

    :goto_b
    return-wide v13

    :cond_1f
    cmp-long v1, v16, v1

    if-lez v1, :cond_21

    .line 391
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v5, v5, p3

    add-long/2addr v1, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_20

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    :cond_20
    return-wide v1

    :cond_21
    const-wide/16 v5, 0x1

    if-nez v12, :cond_23

    .line 394
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v1, v1, p3

    add-long/2addr v1, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_22

    move-wide/from16 v18, v1

    :cond_22
    return-wide v18

    .line 396
    :cond_23
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->slicesl:J

    cmp-long v5, v8, v1

    if-gez v5, :cond_25

    .line 397
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long/2addr v13, v1

    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v1, v1, p3

    add-long/2addr v13, v1

    cmp-long v1, v3, v10

    if-nez v1, :cond_24

    const-wide/16 v1, 0x1

    add-long/2addr v13, v1

    goto :goto_c

    :cond_24
    neg-long v13, v13

    :goto_c
    return-wide v13

    :cond_25
    cmp-long v1, v8, v1

    if-lez v1, :cond_27

    .line 400
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v5, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v5, v5, p3

    add-long/2addr v1, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_26

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    :cond_26
    return-wide v1

    :cond_27
    const-wide/16 v5, 0x1

    .line 403
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStridel:J

    mul-long v1, v1, p1

    iget-wide v7, v0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStridel:J

    mul-long v7, v7, p3

    add-long/2addr v1, v7

    cmp-long v3, v3, v10

    if-nez v3, :cond_28

    add-long v18, v1, v5

    :cond_28
    return-wide v18
.end method

.method public pack(DIII[DI)V
    .locals 2

    .line 428
    invoke-virtual {p0, p3, p4, p5}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr p7, v0

    .line 430
    aput-wide p1, p6, p7

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    sub-int/2addr p7, v0

    neg-double p1, p1

    .line 432
    aput-wide p1, p6, p7

    :goto_0
    return-void

    .line 434
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 436
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p2, p5, p6

    const/4 p2, 0x1

    aput-object p3, p5, p2

    const/4 p2, 0x2

    aput-object p4, p5, p2

    .line 434
    const-string p2, "[%d][%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(DIII[[[D)V
    .locals 4

    .line 490
    invoke-virtual {p0, p3, p4, p5}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result p3

    .line 491
    invoke-static {p3}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 492
    iget v1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v2, v0, v1

    .line 493
    rem-int/2addr v0, v1

    .line 494
    iget v1, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v3, v0, v1

    .line 495
    rem-int/2addr v0, v1

    if-ltz p3, :cond_0

    .line 497
    aget-object p3, p6, v2

    aget-object p3, p3, v3

    aput-wide p1, p3, v0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le p3, v1, :cond_1

    .line 499
    aget-object p3, p6, v2

    aget-object p3, p3, v3

    neg-double p1, p1

    aput-wide p1, p3, v0

    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 504
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 502
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(DJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 10

    move-wide v0, p1

    move-object/from16 v2, p9

    move-object v3, p0

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    .line 460
    invoke-virtual/range {v3 .. v9}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(JJJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    add-long v3, p10, v3

    .line 462
    invoke-virtual {v2, v3, v4, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_0

    :cond_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    sub-long v3, p10, v3

    neg-double v0, v0

    .line 464
    invoke-virtual {v2, v3, v4, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :goto_0
    return-void

    .line 466
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 468
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    .line 466
    const-string v1, "[%d][%d][%d] component cannot be modified (always zero)"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(FIII[FI)V
    .locals 2

    .line 528
    invoke-virtual {p0, p2, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr p6, v0

    .line 530
    aput p1, p5, p6

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    sub-int/2addr p6, v0

    neg-float p1, p1

    .line 532
    aput p1, p5, p6

    :goto_0
    return-void

    .line 534
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 536
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p2, p5, p6

    const/4 p2, 0x1

    aput-object p3, p5, p2

    const/4 p2, 0x2

    aput-object p4, p5, p2

    .line 534
    const-string p2, "[%d][%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(FIII[[[F)V
    .locals 5

    .line 590
    invoke-virtual {p0, p2, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    .line 591
    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v1

    .line 592
    iget v2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v3, v1, v2

    .line 593
    rem-int/2addr v1, v2

    .line 594
    iget v2, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v4, v1, v2

    .line 595
    rem-int/2addr v1, v2

    if-ltz v0, :cond_0

    .line 597
    aget-object p2, p5, v3

    aget-object p2, p2, v4

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    if-le v0, v2, :cond_1

    .line 599
    aget-object p2, p5, v3

    aget-object p2, p2, v4

    neg-float p1, p1

    aput p1, p2, v1

    :goto_0
    return-void

    .line 601
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 603
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    const/4 p2, 0x2

    aput-object p4, p5, p2

    .line 601
    const-string p2, "[%d][%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(FJJJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 9

    move v0, p1

    move-object/from16 v1, p8

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    .line 560
    invoke-virtual/range {v2 .. v8}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(JJJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    add-long v2, p9, v2

    .line 562
    invoke-virtual {v1, v2, v3, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    sub-long v2, p9, v2

    neg-float v0, v0

    .line 564
    invoke-virtual {v1, v2, v3, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :goto_0
    return-void

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 568
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    .line 566
    const-string v1, "[%d][%d][%d] component cannot be modified (always zero)"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(III[DI)D
    .locals 0

    .line 627
    invoke-virtual {p0, p1, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/2addr p5, p1

    .line 629
    aget-wide p1, p4, p5

    return-wide p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    sub-int/2addr p5, p1

    .line 631
    aget-wide p1, p4, p5

    neg-double p1, p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(III[[[D)D
    .locals 2

    .line 686
    invoke-virtual {p0, p1, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result p1

    .line 687
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p2

    .line 688
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v0, p2, p3

    .line 689
    rem-int/2addr p2, p3

    .line 690
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v1, p2, p3

    .line 691
    rem-int/2addr p2, p3

    if-ltz p1, :cond_0

    .line 693
    aget-object p1, p4, v0

    aget-object p1, p1, v1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_0
    const/high16 p3, -0x80000000

    if-le p1, p3, :cond_1

    .line 695
    aget-object p1, p4, v0

    aget-object p1, p1, v1

    aget-wide p2, p1, p2

    neg-double p1, p2

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)D
    .locals 0

    .line 657
    invoke-virtual/range {p0 .. p6}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    add-long/2addr p8, p1

    .line 659
    invoke-virtual {p7, p8, p9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    sub-long/2addr p8, p1

    .line 661
    invoke-virtual {p7, p8, p9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    neg-double p1, p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(III[FI)F
    .locals 0

    .line 721
    invoke-virtual {p0, p1, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/2addr p5, p1

    .line 723
    aget p1, p4, p5

    return p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    sub-int/2addr p5, p1

    .line 725
    aget p1, p4, p5

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unpack(III[[[F)F
    .locals 2

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result p1

    .line 781
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result p2

    .line 782
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v0, p2, p3

    .line 783
    rem-int/2addr p2, p3

    .line 784
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v1, p2, p3

    .line 785
    rem-int/2addr p2, p3

    if-ltz p1, :cond_0

    .line 787
    aget-object p1, p4, v0

    aget-object p1, p1, v1

    aget p1, p1, p2

    return p1

    :cond_0
    const/high16 p3, -0x80000000

    if-le p1, p3, :cond_1

    .line 789
    aget-object p1, p4, v0

    aget-object p1, p1, v1

    aget p1, p1, p2

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unpack(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;J)F
    .locals 0

    .line 751
    invoke-virtual/range {p0 .. p6}, Lorg/jtransforms/fft/RealFFTUtils_3D;->getIndex(JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    add-long/2addr p8, p1

    .line 753
    invoke-virtual {p7, p8, p9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    return p1

    :cond_0
    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    sub-long/2addr p8, p1

    .line 755
    invoke-virtual {p7, p8, p9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
