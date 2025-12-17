.class public Lorg/jtransforms/dct/FloatDCT_1D;
.super Ljava/lang/Object;
.source "FloatDCT_1D.java"


# static fields
.field private static final PI:F = 3.1415927f


# instance fields
.field private fft:Lorg/jtransforms/fft/FloatFFT_1D;

.field private ip:[I

.field private ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

.field private isPowerOfTwo:Z

.field private n:I

.field private nc:I

.field private ncl:J

.field private nl:J

.field private nw:I

.field private nwl:J

.field private useLargeArrays:Z

.field private w:[F

.field private wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;


# direct methods
.method public constructor <init>(J)V
    .locals 12

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_9

    .line 94
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->isUseLargeArrays()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, p1, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->useLargeArrays:Z

    long-to-int v5, p1

    .line 96
    iput v5, p0, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    .line 97
    iput-wide p1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/4 v9, 0x2

    const-wide/16 v10, 0x2

    if-nez v3, :cond_5

    const-wide/32 v1, 0x10000000

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    .line 102
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    iput-boolean v4, p0, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    .line 104
    div-long v1, p1, v10

    long-to-double v1, v1

    add-double/2addr v1, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    div-int/2addr v1, v9

    shl-int v1, v4, v1

    add-int/2addr v1, v9

    int-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    .line 105
    iget v2, p0, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    mul-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    .line 106
    aget v0, v1, v0

    iput v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    shl-int/2addr v0, v9

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    shr-int/lit8 v0, v2, 0x2

    .line 108
    iput v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    .line 109
    invoke-static {v0, v1, v3}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[F)V

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    aget v1, v0, v4

    iput v1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    int-to-long v1, v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_8

    .line 113
    iget p1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    iput p1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    .line 114
    iget-object p2, p0, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    invoke-static {p1, p2, v1, v0}, Lorg/jtransforms/utils/CommonUtils;->makect(I[FI[I)V

    goto/16 :goto_2

    .line 117
    :cond_3
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-direct {p0, v0}, Lorg/jtransforms/dct/FloatDCT_1D;->makect(I)[F

    move-result-object v0

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    .line 118
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long/2addr p1, v10

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    goto/16 :goto_2

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be smaller or equal to 268435456 when useLargeArrays argument is set to false"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_5
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    iput-boolean v4, p0, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    .line 122
    new-instance v0, Lpl/edu/icm/jlargearrays/LongLargeArray;

    div-long v3, p1, v10

    long-to-double v3, v3

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-long v3, v3

    div-long/2addr v3, v10

    long-to-int v3, v3

    shl-long v3, v1, v3

    add-long/2addr v3, v10

    long-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-direct {v0, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 123
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/16 v5, 0x5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 124
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    shl-long/2addr v3, v9

    cmp-long v0, p1, v3

    if-lez v0, :cond_6

    .line 126
    iget-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    shr-long/2addr v3, v9

    iput-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    .line 127
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-static {v3, v4, v0, v5}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 129
    :cond_6
    iget-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_8

    .line 131
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    iput-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    .line 132
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    goto :goto_2

    .line 135
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->makect(J)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v0

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    .line 136
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long/2addr p1, v10

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    :cond_8
    :goto_2
    return-void

    .line 92
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dct/FloatDCT_1D;)[F
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dct/FloatDCT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    return-object p0
.end method

.method private makect(J)Lpl/edu/icm/jlargearrays/FloatLargeArray;
    .locals 14

    const-wide/16 v0, 0x2

    mul-long v2, p1, v0

    const v4, 0x40490fdb    # (float)Math.PI

    long-to-float v5, v2

    div-float/2addr v4, v5

    .line 563
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const-wide/16 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 564
    invoke-virtual {v5, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    move-wide v6, v2

    :goto_0
    cmp-long v8, v6, p1

    if-gez v8, :cond_0

    mul-long v8, v6, v0

    long-to-float v10, v6

    mul-float/2addr v10, v4

    float-to-double v10, v10

    .line 568
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v5, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v8, v2

    .line 569
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    neg-float v10, v10

    invoke-virtual {v5, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v2

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private makect(I)[F
    .locals 9

    mul-int/lit8 v0, p1, 0x2

    const v1, 0x40490fdb    # (float)Math.PI

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 546
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 547
    aput v3, v0, v2

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    mul-int/lit8 v4, v3, 0x2

    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-double v5, v5

    .line 551
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v0, v4

    add-int/2addr v4, v2

    .line 552
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static rftbsub(I[FII[FI)V
    .locals 15

    shr-int/lit8 v0, p0, 0x1

    mul-int/lit8 v1, p3, 0x2

    .line 632
    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p0, v2

    add-int/2addr v3, v1

    add-int v5, p5, p3

    sub-int/2addr v5, v3

    .line 637
    aget v5, p4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v6, v5

    add-int v5, p5, v3

    .line 638
    aget v5, p4, v5

    add-int v7, p2, v2

    add-int v4, p2, v4

    .line 641
    aget v8, p1, v7

    aget v9, p1, v4

    sub-float v9, v8, v9

    add-int/lit8 v10, v7, 0x1

    .line 642
    aget v11, p1, v10

    add-int/lit8 v12, v4, 0x1

    aget v13, p1, v12

    add-float/2addr v11, v13

    mul-float v13, v6, v9

    mul-float v14, v5, v11

    add-float/2addr v13, v14

    mul-float/2addr v6, v11

    mul-float/2addr v5, v9

    sub-float/2addr v6, v5

    sub-float/2addr v8, v13

    .line 645
    aput v8, p1, v7

    .line 646
    aget v5, p1, v10

    sub-float/2addr v5, v6

    aput v5, p1, v10

    .line 647
    aget v5, p1, v4

    add-float/2addr v5, v13

    aput v5, p1, v4

    .line 648
    aget v4, p1, v12

    sub-float/2addr v4, v6

    aput v4, p1, v12

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 24

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    const/4 v2, 0x1

    shr-long v2, p0, v2

    const-wide/16 v4, 0x2

    mul-long v6, p5, v4

    .line 658
    div-long/2addr v6, v2

    const-wide/16 v8, 0x0

    move-wide v10, v4

    :goto_0
    cmp-long v12, v10, v2

    if-gez v12, :cond_0

    sub-long v12, p0, v10

    add-long/2addr v8, v6

    add-long v14, p8, p5

    sub-long/2addr v14, v8

    .line 663
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    sub-float/2addr v15, v14

    add-long v4, p8, v8

    .line 664
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v16, v2

    add-long v1, p3, v10

    add-long v12, p3, v12

    .line 667
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-float/2addr v3, v5

    const-wide/16 v18, 0x1

    move-wide/from16 v20, v6

    add-long v5, v1, v18

    .line 668
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    move-wide/from16 v22, v8

    add-long v8, v12, v18

    invoke-virtual {v0, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v7, v14

    mul-float v14, v15, v3

    mul-float v18, v4, v7

    add-float v14, v14, v18

    mul-float/2addr v15, v7

    mul-float/2addr v4, v3

    sub-float/2addr v15, v4

    .line 671
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 672
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-float/2addr v1, v15

    invoke-virtual {v0, v5, v6, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 673
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-float/2addr v1, v14

    invoke-virtual {v0, v12, v13, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 674
    invoke-virtual {v0, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-float/2addr v1, v15

    invoke-virtual {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x2

    add-long/2addr v10, v1

    move-wide v4, v1

    move-wide/from16 v2, v16

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftfsub(I[FII[FI)V
    .locals 15

    shr-int/lit8 v0, p0, 0x1

    mul-int/lit8 v1, p3, 0x2

    .line 580
    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p0, v2

    add-int/2addr v3, v1

    add-int v5, p5, p3

    sub-int/2addr v5, v3

    .line 585
    aget v5, p4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v6, v5

    add-int v5, p5, v3

    .line 586
    aget v5, p4, v5

    add-int v7, p2, v2

    add-int v4, p2, v4

    .line 589
    aget v8, p1, v7

    aget v9, p1, v4

    sub-float v9, v8, v9

    add-int/lit8 v10, v7, 0x1

    .line 590
    aget v11, p1, v10

    add-int/lit8 v12, v4, 0x1

    aget v13, p1, v12

    add-float/2addr v11, v13

    mul-float v13, v6, v9

    mul-float v14, v5, v11

    sub-float/2addr v13, v14

    mul-float/2addr v6, v11

    mul-float/2addr v5, v9

    add-float/2addr v6, v5

    sub-float/2addr v8, v13

    .line 593
    aput v8, p1, v7

    .line 594
    aget v5, p1, v10

    sub-float/2addr v5, v6

    aput v5, p1, v10

    .line 595
    aget v5, p1, v4

    add-float/2addr v5, v13

    aput v5, p1, v4

    .line 596
    aget v4, p1, v12

    sub-float/2addr v4, v6

    aput v4, p1, v12

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 24

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    const/4 v2, 0x1

    shr-long v2, p0, v2

    const-wide/16 v4, 0x2

    mul-long v6, p5, v4

    .line 606
    div-long/2addr v6, v2

    const-wide/16 v8, 0x0

    move-wide v10, v4

    :goto_0
    cmp-long v12, v10, v2

    if-gez v12, :cond_0

    sub-long v12, p0, v10

    add-long/2addr v8, v6

    add-long v14, p8, p5

    sub-long/2addr v14, v8

    .line 611
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    sub-float/2addr v15, v14

    add-long v4, p8, v8

    .line 612
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v16, v2

    add-long v1, p3, v10

    add-long v12, p3, v12

    .line 615
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-float/2addr v3, v5

    const-wide/16 v18, 0x1

    move-wide/from16 v20, v6

    add-long v5, v1, v18

    .line 616
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    move-wide/from16 v22, v8

    add-long v8, v12, v18

    invoke-virtual {v0, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v7, v14

    mul-float v14, v15, v3

    mul-float v18, v4, v7

    sub-float v14, v14, v18

    mul-float/2addr v15, v7

    mul-float/2addr v4, v3

    add-float/2addr v15, v4

    .line 619
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 620
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-float/2addr v1, v15

    invoke-virtual {v0, v5, v6, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 621
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-float/2addr v1, v14

    invoke-virtual {v0, v12, v13, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 622
    invoke-virtual {v0, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    sub-float/2addr v1, v15

    invoke-virtual {v0, v8, v9, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x2

    add-long/2addr v10, v1

    move-wide v4, v1

    move-wide/from16 v2, v16

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v15, p4

    .line 264
    const-class v16, Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v0, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/16 v9, 0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_0

    return-void

    .line 266
    :cond_0
    iget-boolean v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->useLargeArrays:Z

    if-nez v2, :cond_2

    .line 267
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v13, v0

    if-gez v0, :cond_1

    .line 268
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    long-to-int v1, v13

    invoke-virtual {v11, v0, v1, v15}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    goto/16 :goto_7

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    iget-boolean v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/16 v19, 0x2

    if-eqz v2, :cond_6

    add-long/2addr v0, v13

    sub-long/2addr v0, v9

    .line 273
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    .line 274
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    sub-long v1, v1, v19

    :goto_0
    cmp-long v3, v1, v19

    if-ltz v3, :cond_3

    add-long v3, v13, v1

    add-long v5, v3, v9

    .line 275
    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-long v13, v3, v9

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v12, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 276
    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v12, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    sub-long v1, v1, v19

    move-wide/from16 v13, p2

    goto :goto_0

    :cond_3
    add-long v1, v13, v9

    .line 278
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {v12, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 279
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {v12, v13, v14, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 280
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 281
    iget-wide v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/dct/FloatDCT_1D;->rftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 282
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    iget-object v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    :cond_4
    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 284
    iget-object v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 286
    :cond_5
    :goto_1
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->dctsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    if-eqz v15, :cond_c

    .line 288
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v17, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 289
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v12, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto/16 :goto_7

    :cond_6
    mul-long v7, v0, v19

    .line 293
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const-wide/16 v5, 0x0

    .line 294
    iget-wide v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide/from16 v2, p2

    move-object v4, v0

    move-wide v9, v7

    move-wide/from16 v7, v21

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    .line 295
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 296
    iget-wide v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    :goto_2
    cmp-long v4, v2, v9

    if-gez v4, :cond_7

    sub-long v7, v9, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v7, v4

    .line 297
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v0, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v2, v4

    goto :goto_2

    .line 299
    :cond_7
    iget-object v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_a

    .line 300
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 302
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const/4 v8, 0x2

    int-to-long v3, v8

    div-long v19, v1, v3

    .line 303
    new-array v5, v8, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    if-ge v6, v8, :cond_9

    int-to-long v1, v6

    mul-long v3, v1, v19

    if-ne v6, v7, :cond_8

    .line 306
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    goto :goto_4

    :cond_8
    add-long v1, v3, v19

    :goto_4
    move-wide/from16 v21, v1

    .line 307
    new-instance v23, Lorg/jtransforms/dct/FloatDCT_1D$2;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-wide/from16 v5, v21

    move/from16 v21, v7

    move/from16 v22, v8

    move-wide/from16 v7, p2

    move-wide/from16 v26, v9

    move-object/from16 v9, p1

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/FloatDCT_1D$2;-><init>(Lorg/jtransforms/dct/FloatDCT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v25

    add-int/lit8 v6, v25, 0x1

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v5, v24

    move-wide/from16 v9, v26

    goto :goto_3

    :cond_9
    move-object/from16 v24, v5

    move-wide/from16 v26, v9

    const/4 v1, 0x0

    .line 321
    :try_start_0
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 323
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    move-wide/from16 v26, v9

    const-wide/16 v1, 0x0

    .line 328
    :goto_5
    iget-wide v3, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_b

    mul-long v3, v1, v19

    add-long v5, v13, v1

    .line 331
    iget-object v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    invoke-virtual {v8, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    invoke-virtual {v12, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v9

    goto :goto_5

    :cond_b
    :goto_6
    if-eqz v15, :cond_c

    .line 335
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    move-wide/from16 v3, v26

    long-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 336
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v12, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    :cond_c
    :goto_7
    return-void
.end method

.method public forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public forward([FIZ)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 179
    const-class v12, Lorg/jtransforms/dct/FloatDCT_1D;

    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_0

    return-void

    .line 181
    :cond_0
    iget-boolean v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_1

    .line 182
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v1, v10

    invoke-virtual {v8, v0, v1, v2, v11}, Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_7

    .line 183
    :cond_1
    iget-boolean v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_5

    add-int v1, v10, v0

    sub-int/2addr v1, v13

    .line 184
    aget v1, v9, v1

    sub-int/2addr v0, v6

    :goto_0
    if-lt v0, v6, :cond_2

    add-int v2, v10, v0

    add-int/lit8 v3, v2, 0x1

    .line 186
    aget v4, v9, v2

    add-int/lit8 v5, v2, -0x1

    aget v12, v9, v5

    sub-float/2addr v4, v12

    aput v4, v9, v3

    .line 187
    aget v3, v9, v2

    aget v4, v9, v5

    add-float/2addr v3, v4

    aput v3, v9, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v10, 0x1

    .line 189
    aget v2, v9, v10

    sub-float/2addr v2, v1

    aput v2, v9, v0

    .line 190
    aget v0, v9, v10

    add-float/2addr v0, v1

    aput v0, v9, v10

    .line 191
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_3

    .line 192
    iget v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/dct/FloatDCT_1D;->rftbsub(I[FII[FI)V

    .line 193
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    iget-object v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    .line 195
    iget-object v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[FI[II[F)V

    .line 197
    :cond_4
    :goto_1
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->dctsub(I[FII[FI)V

    if-eqz v11, :cond_b

    .line 199
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-double v1, v0

    div-double v1, v14, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1, v9, v10, v7}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 200
    aget v0, v9, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, v9, v10

    goto/16 :goto_7

    :cond_5
    mul-int/lit8 v5, v0, 0x2

    .line 204
    new-array v4, v5, [F

    .line 205
    invoke-static {v9, v10, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    .line 207
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    :goto_2
    if-ge v1, v5, :cond_6

    sub-int v2, v5, v1

    sub-int/2addr v2, v13

    .line 208
    aget v2, v4, v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    :cond_6
    iget-object v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    if-le v0, v13, :cond_9

    .line 211
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-long v0, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 213
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    div-int/2addr v0, v6

    .line 214
    new-array v3, v6, [Ljava/util/concurrent/Future;

    move v2, v7

    :goto_3
    if-ge v2, v6, :cond_8

    mul-int v16, v2, v0

    if-ne v2, v13, :cond_7

    .line 217
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    goto :goto_4

    :cond_7
    add-int v1, v16, v0

    :goto_4
    move/from16 v17, v1

    .line 218
    new-instance v18, Lorg/jtransforms/dct/FloatDCT_1D$1;

    move-object/from16 v1, v18

    move/from16 v19, v2

    move-object/from16 v2, p0

    move-object/from16 v20, v3

    move/from16 v3, v16

    move-object/from16 v16, v4

    move/from16 v4, v17

    move v14, v5

    move/from16 v5, p2

    move v15, v6

    move-object/from16 v6, p1

    move v15, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dct/FloatDCT_1D$1;-><init>(Lorg/jtransforms/dct/FloatDCT_1D;III[F[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v20, v19

    add-int/lit8 v2, v19, 0x1

    move v5, v14

    move v7, v15

    move-object/from16 v4, v16

    move-object/from16 v3, v20

    const/4 v6, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto :goto_3

    :cond_8
    move-object/from16 v20, v3

    move v14, v5

    move v15, v7

    const/4 v1, 0x0

    .line 232
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 236
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 234
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    move-object/from16 v16, v4

    move v14, v5

    move v15, v7

    move v7, v15

    .line 239
    :goto_5
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v7, v0, :cond_a

    mul-int/lit8 v0, v7, 0x2

    add-int v1, v10, v7

    .line 242
    iget-object v2, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    aget v3, v2, v0

    aget v4, v16, v0

    mul-float/2addr v3, v4

    add-int/2addr v0, v13

    aget v2, v2, v0

    aget v0, v16, v0

    mul-float/2addr v2, v0

    sub-float/2addr v3, v2

    aput v3, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v11, :cond_b

    .line 246
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-double v1, v14

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-static {v0, v2, v9, v10, v15}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 247
    aget v0, v9, v10

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, v9, v10

    :cond_b
    :goto_7
    return-void
.end method

.method public forward([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v0, p4

    .line 463
    const-class v15, Lorg/jtransforms/dct/FloatDCT_1D;

    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/16 v16, 0x1

    cmp-long v3, v1, v16

    if-nez v3, :cond_0

    return-void

    .line 465
    :cond_0
    iget-boolean v3, v11, Lorg/jtransforms/dct/FloatDCT_1D;->useLargeArrays:Z

    if-nez v3, :cond_2

    .line 466
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v13, v1

    if-gez v1, :cond_1

    .line 467
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v1

    long-to-int v2, v13

    invoke-virtual {v11, v1, v2, v0}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    goto/16 :goto_7

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_2
    iget-boolean v3, v11, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/16 v18, 0x2

    if-eqz v3, :cond_7

    if-eqz v0, :cond_3

    long-to-double v3, v1

    div-double v3, v8, v3

    .line 474
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 475
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v12, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 477
    :cond_3
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->dctsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 478
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 479
    iget-object v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 480
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/dct/FloatDCT_1D;->rftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_0

    :cond_4
    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 482
    iget-object v6, v11, Lorg/jtransforms/dct/FloatDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 484
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    add-long v1, v13, v16

    invoke-virtual {v12, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v0, v3

    .line 485
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v12, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    add-float/2addr v3, v1

    invoke-virtual {v12, v13, v14, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v1, v18

    .line 486
    :goto_1
    iget-wide v3, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    add-long v3, v13, v1

    sub-long v5, v3, v16

    .line 487
    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    add-long v8, v3, v16

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    sub-float/2addr v7, v10

    invoke-virtual {v12, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 488
    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v12, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v18

    goto :goto_1

    :cond_6
    add-long v1, v13, v3

    sub-long v1, v1, v16

    .line 490
    invoke-virtual {v12, v1, v2, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto/16 :goto_7

    :cond_7
    mul-long v5, v1, v18

    if-eqz v0, :cond_8

    long-to-double v3, v5

    .line 494
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v20, v5

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v7}, Lorg/jtransforms/utils/CommonUtils;->scale(JFLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 495
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {v12, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    goto :goto_2

    :cond_8
    move-wide/from16 v20, v5

    .line 497
    :goto_2
    new-instance v10, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v1, v20

    invoke-direct {v10, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 498
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_b

    .line 499
    iget-wide v0, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 501
    iget-wide v0, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    const/4 v9, 0x2

    int-to-long v2, v9

    div-long v16, v0, v2

    .line 502
    new-array v0, v9, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    if-ge v7, v9, :cond_a

    int-to-long v1, v7

    mul-long v3, v1, v16

    if-ne v7, v8, :cond_9

    .line 505
    iget-wide v1, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    goto :goto_4

    :cond_9
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 506
    new-instance v18, Lorg/jtransforms/dct/FloatDCT_1D$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v20, v9

    move-wide/from16 v8, p2

    move-object/from16 p4, v10

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/FloatDCT_1D$4;-><init>(Lorg/jtransforms/dct/FloatDCT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v0, v19

    add-int/lit8 v7, v19, 0x1

    move/from16 v9, v20

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 p4, v10

    const/4 v1, 0x0

    .line 520
    :try_start_0
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 524
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 522
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    move-object/from16 p4, v10

    const-wide/16 v0, 0x0

    .line 527
    :goto_5
    iget-wide v2, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    mul-long v2, v0, v18

    add-long v4, v13, v0

    .line 529
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 530
    iget-object v5, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v5, v4

    move-object/from16 v6, p4

    invoke-virtual {v6, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v16

    .line 531
    iget-object v5, v11, Lorg/jtransforms/dct/FloatDCT_1D;->wl:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v6, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v0, v0, v16

    goto :goto_5

    :cond_c
    :goto_6
    move-object/from16 v6, p4

    .line 534
    iget-object v0, v11, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v2, 0x0

    .line 535
    iget-wide v7, v11, Lorg/jtransforms/dct/FloatDCT_1D;->nl:J

    move-object v1, v6

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    :goto_7
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    return-void
.end method

.method public inverse([FIZ)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v0, p3

    .line 379
    const-class v11, Lorg/jtransforms/dct/FloatDCT_1D;

    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    return-void

    .line 381
    :cond_0
    iget-boolean v2, v8, Lorg/jtransforms/dct/FloatDCT_1D;->useLargeArrays:Z

    if-eqz v2, :cond_1

    .line 382
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v1, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>([F)V

    int-to-long v2, v10

    invoke-virtual {v8, v1, v2, v3, v0}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto/16 :goto_6

    .line 383
    :cond_1
    iget-boolean v2, v8, Lorg/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    int-to-double v5, v1

    div-double v5, v3, v5

    .line 386
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v1, v0, v9, v10, v13}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 387
    aget v0, v9, v10

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    aput v0, v9, v10

    .line 389
    :cond_2
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->dctsub(I[FII[FI)V

    .line 390
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_3

    .line 391
    iget-object v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 392
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/dct/FloatDCT_1D;->rftfsub(I[FII[FI)V

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    .line 394
    iget-object v4, v8, Lorg/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[FI[II[F)V

    .line 396
    :cond_4
    :goto_0
    aget v0, v9, v10

    add-int/lit8 v1, v10, 0x1

    aget v1, v9, v1

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    .line 397
    aput v0, v9, v10

    .line 398
    :goto_1
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v14, v0, :cond_5

    add-int v0, v10, v14

    add-int/lit8 v1, v0, -0x1

    .line 399
    aget v3, v9, v0

    add-int/lit8 v4, v0, 0x1

    aget v5, v9, v4

    sub-float/2addr v3, v5

    aput v3, v9, v1

    .line 400
    aget v1, v9, v0

    aget v3, v9, v4

    add-float/2addr v1, v3

    aput v1, v9, v0

    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    :cond_5
    add-int/2addr v0, v10

    sub-int/2addr v0, v12

    .line 402
    aput v2, v9, v0

    goto/16 :goto_6

    :cond_6
    mul-int/lit8 v2, v1, 0x2

    if-eqz v0, :cond_7

    int-to-double v5, v2

    .line 406
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v1, v0, v9, v10, v13}, Lorg/jtransforms/utils/CommonUtils;->scale(IF[FIZ)V

    .line 407
    aget v0, v9, v10

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v0, v1

    aput v0, v9, v10

    .line 409
    :cond_7
    new-array v15, v2, [F

    .line 410
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v12, :cond_a

    .line 411
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-long v0, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 413
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    div-int/2addr v0, v14

    .line 414
    new-array v7, v14, [Ljava/util/concurrent/Future;

    move v6, v13

    :goto_2
    if-ge v6, v14, :cond_9

    mul-int v3, v6, v0

    if-ne v6, v12, :cond_8

    .line 417
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    goto :goto_3

    :cond_8
    add-int v1, v3, v0

    :goto_3
    move v4, v1

    .line 418
    new-instance v16, Lorg/jtransforms/dct/FloatDCT_1D$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    move-object/from16 v18, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dct/FloatDCT_1D$3;-><init>(Lorg/jtransforms/dct/FloatDCT_1D;II[FI[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v17

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v7, v18

    goto :goto_2

    :cond_9
    move-object/from16 v18, v7

    const/4 v1, 0x0

    .line 432
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 436
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 434
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    move v0, v13

    .line 439
    :goto_4
    iget v1, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v10, v0

    .line 441
    aget v2, v9, v2

    .line 442
    iget-object v3, v8, Lorg/jtransforms/dct/FloatDCT_1D;->w:[F

    aget v4, v3, v1

    mul-float/2addr v4, v2

    aput v4, v15, v1

    add-int/2addr v1, v12

    .line 443
    aget v3, v3, v1

    neg-float v3, v3

    mul-float/2addr v3, v2

    aput v3, v15, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 446
    :cond_b
    :goto_5
    iget-object v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->fft:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v15, v12}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    .line 447
    iget v0, v8, Lorg/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {v15, v13, v9, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    return-void
.end method

.method public inverse([FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    return-void
.end method
