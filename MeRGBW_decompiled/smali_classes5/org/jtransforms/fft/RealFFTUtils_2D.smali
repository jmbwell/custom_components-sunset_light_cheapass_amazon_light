.class public Lorg/jtransforms/fft/RealFFTUtils_2D;
.super Ljava/lang/Object;
.source "RealFFTUtils_2D.java"


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

.field private final rows:I

.field private final rowsl:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-int v0, p3

    .line 161
    iput v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    long-to-int v0, p1

    .line 162
    iput v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rows:I

    .line 163
    iput-wide p3, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    .line 164
    iput-wide p1, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rowsl:J

    return-void
.end method


# virtual methods
.method public getIndex(II)I
    .locals 6

    and-int/lit8 v0, p2, 0x1

    shl-int/lit8 v1, p1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eqz p1, :cond_d

    if-gt p2, v3, :cond_4

    .line 197
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ne v1, p2, :cond_1

    if-ne v0, v3, :cond_0

    return v2

    .line 201
    :cond_0
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1

    return p1

    :cond_1
    if-ge v1, p2, :cond_2

    .line 203
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr p2, p1

    add-int/2addr p2, v0

    return p2

    :cond_2
    if-nez v0, :cond_3

    .line 205
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    sub-int/2addr p2, p1

    mul-int/2addr v0, p2

    return v0

    .line 207
    :cond_3
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    sub-int/2addr p2, p1

    mul-int/2addr v0, p2

    add-int/2addr v0, v3

    neg-int p1, v0

    return p1

    .line 209
    :cond_4
    iget v4, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    if-eq p2, v4, :cond_8

    add-int/lit8 v5, v4, 0x1

    if-ne p2, v5, :cond_5

    goto :goto_0

    :cond_5
    if-ge p2, v4, :cond_6

    mul-int/2addr v4, p1

    add-int/2addr v4, p2

    return v4

    :cond_6
    if-nez v0, :cond_7

    .line 227
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rows:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p1

    mul-int/2addr v4, v0

    sub-int/2addr v4, p2

    return v4

    .line 229
    :cond_7
    iget v0, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rows:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p1

    mul-int/2addr v4, v0

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x2

    neg-int p1, v4

    return p1

    .line 210
    :cond_8
    :goto_0
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ne v1, p2, :cond_a

    if-ne v0, v3, :cond_9

    return v2

    :cond_9
    mul-int/2addr p2, v4

    shr-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v3

    return p1

    :cond_a
    if-ge v1, p2, :cond_c

    if-nez v0, :cond_b

    sub-int/2addr p2, p1

    mul-int/2addr v4, p2

    add-int/2addr v4, v3

    return v4

    :cond_b
    sub-int/2addr p2, p1

    mul-int/2addr v4, p2

    neg-int p1, v4

    return p1

    :cond_c
    mul-int/2addr v4, p1

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    return v4

    :cond_d
    if-eq p2, v3, :cond_12

    .line 231
    iget p1, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_e

    goto :goto_1

    :cond_e
    if-ne p2, p1, :cond_f

    return v3

    :cond_f
    if-ge p2, p1, :cond_10

    return p2

    :cond_10
    if-nez v0, :cond_11

    shl-int/2addr p1, v3

    sub-int/2addr p1, p2

    return p1

    :cond_11
    shl-int/2addr p1, v3

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    neg-int p1, p1

    return p1

    :cond_12
    :goto_1
    return v2
.end method

.method public getIndex(JJ)J
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    and-long v3, p3, v1

    const/4 v5, 0x1

    shl-long v6, p1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    const-wide/high16 v11, -0x8000000000000000L

    const-wide/16 v13, 0x2

    if-eqz v10, :cond_d

    cmp-long v10, p3, v1

    if-gtz v10, :cond_4

    .line 273
    iget-wide v13, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rowsl:J

    cmp-long v10, v6, v13

    if-nez v10, :cond_1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    return-wide v11

    .line 277
    :cond_0
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    mul-long/2addr v13, v1

    shr-long v1, v13, v5

    return-wide v1

    :cond_1
    cmp-long v5, v6, v13

    if-gez v5, :cond_2

    .line 279
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    mul-long v1, v1, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    cmp-long v3, v3, v8

    if-nez v3, :cond_3

    .line 281
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    sub-long v13, v13, p1

    mul-long/2addr v1, v13

    return-wide v1

    .line 283
    :cond_3
    iget-wide v3, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    sub-long v13, v13, p1

    mul-long/2addr v3, v13

    add-long/2addr v3, v1

    neg-long v1, v3

    return-wide v1

    .line 285
    :cond_4
    iget-wide v11, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    cmp-long v10, p3, v11

    if-eqz v10, :cond_8

    add-long v15, v11, v1

    cmp-long v10, p3, v15

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    cmp-long v1, p3, v11

    if-gez v1, :cond_6

    mul-long v11, v11, p1

    add-long v11, v11, p3

    return-wide v11

    :cond_6
    cmp-long v1, v3, v8

    if-nez v1, :cond_7

    .line 303
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rowsl:J

    add-long/2addr v1, v13

    sub-long v1, v1, p1

    mul-long/2addr v11, v1

    sub-long v11, v11, p3

    return-wide v11

    .line 305
    :cond_7
    iget-wide v1, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rowsl:J

    add-long/2addr v1, v13

    sub-long v1, v1, p1

    mul-long/2addr v11, v1

    sub-long v11, v11, p3

    add-long/2addr v11, v13

    neg-long v1, v11

    return-wide v1

    .line 286
    :cond_8
    :goto_0
    iget-wide v13, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->rowsl:J

    cmp-long v10, v6, v13

    if-nez v10, :cond_a

    cmp-long v3, v3, v1

    if-nez v3, :cond_9

    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3

    :cond_9
    mul-long/2addr v13, v11

    shr-long v3, v13, v5

    add-long/2addr v3, v1

    return-wide v3

    :cond_a
    cmp-long v5, v6, v13

    if-gez v5, :cond_c

    cmp-long v3, v3, v8

    if-nez v3, :cond_b

    sub-long v13, v13, p1

    mul-long/2addr v11, v13

    add-long/2addr v11, v1

    return-wide v11

    :cond_b
    sub-long v13, v13, p1

    mul-long/2addr v11, v13

    neg-long v1, v11

    return-wide v1

    .line 298
    :cond_c
    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    mul-long v11, v11, p1

    add-long/2addr v11, v1

    sub-long/2addr v11, v3

    return-wide v11

    :cond_d
    cmp-long v6, p3, v1

    if-eqz v6, :cond_12

    .line 307
    iget-wide v6, v0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columnsl:J

    add-long v10, v6, v1

    cmp-long v10, p3, v10

    if-nez v10, :cond_e

    goto :goto_1

    :cond_e
    cmp-long v10, p3, v6

    if-nez v10, :cond_f

    return-wide v1

    :cond_f
    cmp-long v1, p3, v6

    if-gez v1, :cond_10

    return-wide p3

    :cond_10
    cmp-long v1, v3, v8

    if-nez v1, :cond_11

    shl-long v1, v6, v5

    sub-long v1, v1, p3

    return-wide v1

    :cond_11
    shl-long v1, v6, v5

    sub-long v1, v1, p3

    add-long/2addr v1, v13

    neg-long v1, v1

    return-wide v1

    :cond_12
    :goto_1
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public pack(DII[DI)V
    .locals 2

    .line 338
    invoke-virtual {p0, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr p6, v0

    .line 340
    aput-wide p1, p5, p6

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    sub-int/2addr p6, v0

    neg-double p1, p1

    .line 342
    aput-wide p1, p5, p6

    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 345
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(DII[[D)V
    .locals 2

    .line 398
    invoke-virtual {p0, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 400
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int p4, v0, p3

    aget-object p4, p5, p4

    rem-int/2addr v0, p3

    aput-wide p1, p4, v0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    neg-int p3, v0

    .line 402
    iget p4, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p3, p4

    aget-object p5, p5, v0

    rem-int/2addr p3, p4

    neg-double p1, p1

    aput-wide p1, p5, p3

    :goto_0
    return-void

    .line 404
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 405
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(DJJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 4

    .line 369
    invoke-virtual {p0, p3, p4, p5, p6}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    add-long/2addr p8, v0

    .line 371
    invoke-virtual {p7, p8, p9, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr p8, v0

    neg-double p1, p1

    .line 373
    invoke-virtual {p7, p8, p9, p1, p2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :goto_0
    return-void

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 378
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 376
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(FII[FI)V
    .locals 2

    .line 429
    invoke-virtual {p0, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr p5, v0

    .line 431
    aput p1, p4, p5

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    sub-int/2addr p5, v0

    neg-float p1, p1

    .line 433
    aput p1, p4, p5

    :goto_0
    return-void

    .line 435
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 438
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 436
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(FII[[F)V
    .locals 2

    .line 489
    invoke-virtual {p0, p2, p3}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 491
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int p3, v0, p2

    aget-object p3, p4, p3

    rem-int/2addr v0, p2

    aput p1, p3, v0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    neg-int p2, v0

    .line 493
    iget p3, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p2, p3

    aget-object p4, p4, v0

    rem-int/2addr p2, p3

    neg-float p1, p1

    aput p1, p4, p2

    :goto_0
    return-void

    .line 495
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 498
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 496
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pack(FJJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 4

    .line 460
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    add-long/2addr p7, v0

    .line 462
    invoke-virtual {p6, p7, p8, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr p7, v0

    neg-float p1, p1

    .line 464
    invoke-virtual {p6, p7, p8, p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :goto_0
    return-void

    .line 466
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 469
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 467
    const-string p2, "[%d][%d] component cannot be modified (always zero)"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unpack(II[DI)D
    .locals 0

    .line 520
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/2addr p4, p1

    .line 522
    aget-wide p1, p3, p4

    return-wide p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    sub-int/2addr p4, p1

    .line 524
    aget-wide p1, p3, p4

    neg-double p1, p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(II[[D)D
    .locals 1

    .line 574
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 576
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p1, p2

    aget-object p3, p3, v0

    rem-int/2addr p1, p2

    aget-wide p1, p3, p1

    return-wide p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    neg-int p1, p1

    .line 578
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p1, p2

    aget-object p3, p3, v0

    rem-int/2addr p1, p2

    aget-wide p1, p3, p1

    neg-double p1, p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)D
    .locals 0

    .line 548
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    add-long/2addr p6, p1

    .line 550
    invoke-virtual {p5, p6, p7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    sub-long/2addr p6, p1

    .line 552
    invoke-virtual {p5, p6, p7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide p1

    neg-double p1, p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public unpack(II[FI)F
    .locals 0

    .line 603
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/2addr p4, p1

    .line 605
    aget p1, p3, p4

    return p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    sub-int/2addr p4, p1

    .line 607
    aget p1, p3, p4

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unpack(II[[F)F
    .locals 1

    .line 657
    invoke-virtual {p0, p1, p2}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 659
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p1, p2

    aget-object p3, p3, v0

    rem-int/2addr p1, p2

    aget p1, p3, p1

    return p1

    :cond_0
    const/high16 p2, -0x80000000

    if-le p1, p2, :cond_1

    neg-int p1, p1

    .line 661
    iget p2, p0, Lorg/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v0, p1, p2

    aget-object p3, p3, v0

    rem-int/2addr p1, p2

    aget p1, p3, p1

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unpack(JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)F
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jtransforms/fft/RealFFTUtils_2D;->getIndex(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    add-long/2addr p6, p1

    .line 634
    invoke-virtual {p5, p6, p7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    return p1

    :cond_0
    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    sub-long/2addr p6, p1

    .line 636
    invoke-virtual {p5, p6, p7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result p1

    neg-float p1, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
