.class public Lorg/jtransforms/dct/DoubleDCT_1D;
.super Ljava/lang/Object;
.source "DoubleDCT_1D.java"


# static fields
.field private static final PI:D = 3.141592653589793


# instance fields
.field private fft:Lorg/jtransforms/fft/DoubleFFT_1D;

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

.field private w:[D

.field private wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;


# direct methods
.method public constructor <init>(J)V
    .locals 12

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_9

    .line 93
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
    iput-boolean v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->useLargeArrays:Z

    long-to-int v5, p1

    .line 94
    iput v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    .line 95
    iput-wide p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/4 v9, 0x2

    const-wide/16 v10, 0x2

    if-nez v3, :cond_5

    const-wide/32 v1, 0x10000000

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    .line 101
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iput-boolean v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    .line 103
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

    iput-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    .line 104
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    mul-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    .line 105
    aget v0, v1, v0

    iput v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    shl-int/2addr v0, v9

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    shr-int/lit8 v0, v2, 0x2

    .line 107
    iput v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    .line 108
    invoke-static {v0, v1, v3}, Lorg/jtransforms/utils/CommonUtils;->makewt(I[I[D)V

    .line 110
    :cond_2
    iget-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    aget v1, v0, v4

    iput v1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    int-to-long v1, v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_8

    .line 112
    iget p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    iput p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    .line 113
    iget-object p2, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    invoke-static {p1, p2, v1, v0}, Lorg/jtransforms/utils/CommonUtils;->makect(I[DI[I)V

    goto/16 :goto_2

    .line 116
    :cond_3
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-direct {p0, v0}, Lorg/jtransforms/dct/DoubleDCT_1D;->makect(I)[D

    move-result-object v0

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    .line 117
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long/2addr p1, v10

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    goto/16 :goto_2

    .line 99
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be smaller or equal to 268435456 when useLargeArrays argument is set to false"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_5
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    iput-boolean v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    .line 121
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

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    .line 122
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/16 v5, 0x5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 123
    iget-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    shl-long/2addr v3, v9

    cmp-long v0, p1, v3

    if-lez v0, :cond_6

    .line 125
    iget-wide v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    shr-long/2addr v3, v9

    iput-wide v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    .line 126
    iget-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-static {v3, v4, v0, v5}, Lorg/jtransforms/utils/CommonUtils;->makewt(JLpl/edu/icm/jlargearrays/LongLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 128
    :cond_6
    iget-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/LongLargeArray;->getLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_8

    .line 130
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    iput-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    .line 131
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    invoke-static/range {v0 .. v5}, Lorg/jtransforms/utils/CommonUtils;->makect(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;)V

    goto :goto_2

    .line 134
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;->makect(J)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v0

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    .line 135
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long/2addr p1, v10

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    :cond_8
    :goto_2
    return-void

    .line 91
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dct/DoubleDCT_1D;)[D
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dct/DoubleDCT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    return-object p0
.end method

.method private makect(J)Lpl/edu/icm/jlargearrays/DoubleLargeArray;
    .locals 15

    const-wide/16 v0, 0x2

    mul-long v2, p1, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    long-to-double v6, v2

    div-double/2addr v4, v6

    .line 546
    new-instance v6, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const-wide/16 v2, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 547
    invoke-virtual {v6, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    move-wide v7, v2

    :goto_0
    cmp-long v9, v7, p1

    if-gez v9, :cond_0

    mul-long v9, v7, v0

    long-to-double v11, v7

    mul-double/2addr v11, v4

    .line 551
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v13

    invoke-virtual {v6, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v2

    .line 552
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v6, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v7, v2

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method private makect(I)[D
    .locals 10

    mul-int/lit8 v0, p1, 0x2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 529
    new-array v0, v0, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 530
    aput-wide v4, v0, v3

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_0

    mul-int/lit8 v5, v4, 0x2

    int-to-double v6, v4

    mul-double/2addr v6, v1

    .line 534
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v8

    aput-wide v8, v0, v5

    add-int/2addr v5, v3

    .line 535
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static rftbsub(I[DII[DI)V
    .locals 22

    shr-int/lit8 v0, p0, 0x1

    mul-int/lit8 v1, p3, 0x2

    .line 615
    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p0, v2

    add-int/2addr v3, v1

    add-int v5, p5, p3

    sub-int/2addr v5, v3

    .line 620
    aget-wide v5, p4, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v5

    add-int v5, p5, v3

    .line 621
    aget-wide v5, p4, v5

    add-int v9, p2, v2

    add-int v4, p2, v4

    .line 624
    aget-wide v10, p1, v9

    aget-wide v12, p1, v4

    sub-double v12, v10, v12

    add-int/lit8 v14, v9, 0x1

    .line 625
    aget-wide v15, p1, v14

    add-int/lit8 v17, v4, 0x1

    aget-wide v18, p1, v17

    add-double v15, v15, v18

    mul-double v18, v7, v12

    mul-double v20, v5, v15

    add-double v18, v18, v20

    mul-double/2addr v7, v15

    mul-double/2addr v5, v12

    sub-double/2addr v7, v5

    sub-double v10, v10, v18

    .line 628
    aput-wide v10, p1, v9

    .line 629
    aget-wide v5, p1, v14

    sub-double/2addr v5, v7

    aput-wide v5, p1, v14

    .line 630
    aget-wide v5, p1, v4

    add-double v5, v5, v18

    aput-wide v5, p1, v4

    .line 631
    aget-wide v4, p1, v17

    sub-double/2addr v4, v7

    aput-wide v4, p1, v17

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 30

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    const/4 v2, 0x1

    shr-long v2, p0, v2

    const-wide/16 v4, 0x2

    mul-long v6, p5, v4

    .line 641
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

    .line 646
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v16, v16, v14

    add-long v14, p8, v8

    .line 647
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-long v4, p3, v10

    add-long v12, p3, v12

    .line 650
    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    sub-double v18, v18, v20

    const-wide/16 v20, 0x1

    move-wide/from16 v22, v2

    add-long v1, v4, v20

    .line 651
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    move-wide/from16 v26, v6

    add-long v6, v12, v20

    invoke-virtual {v0, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    add-double v24, v24, v20

    mul-double v20, v16, v18

    mul-double v28, v14, v24

    add-double v20, v20, v28

    mul-double v16, v16, v24

    mul-double v14, v14, v18

    sub-double v16, v16, v14

    .line 654
    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double v14, v14, v20

    invoke-virtual {v0, v4, v5, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 655
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double v3, v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 656
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    add-double v1, v1, v20

    invoke-virtual {v0, v12, v13, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 657
    invoke-virtual {v0, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    sub-double v1, v1, v16

    invoke-virtual {v0, v6, v7, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x2

    add-long/2addr v10, v1

    move-wide v4, v1

    move-wide/from16 v2, v22

    move-wide/from16 v6, v26

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftfsub(I[DII[DI)V
    .locals 22

    shr-int/lit8 v0, p0, 0x1

    mul-int/lit8 v1, p3, 0x2

    .line 563
    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p0, v2

    add-int/2addr v3, v1

    add-int v5, p5, p3

    sub-int/2addr v5, v3

    .line 568
    aget-wide v5, p4, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v5

    add-int v5, p5, v3

    .line 569
    aget-wide v5, p4, v5

    add-int v9, p2, v2

    add-int v4, p2, v4

    .line 572
    aget-wide v10, p1, v9

    aget-wide v12, p1, v4

    sub-double v12, v10, v12

    add-int/lit8 v14, v9, 0x1

    .line 573
    aget-wide v15, p1, v14

    add-int/lit8 v17, v4, 0x1

    aget-wide v18, p1, v17

    add-double v15, v15, v18

    mul-double v18, v7, v12

    mul-double v20, v5, v15

    sub-double v18, v18, v20

    mul-double/2addr v7, v15

    mul-double/2addr v5, v12

    add-double/2addr v7, v5

    sub-double v10, v10, v18

    .line 576
    aput-wide v10, p1, v9

    .line 577
    aget-wide v5, p1, v14

    sub-double/2addr v5, v7

    aput-wide v5, p1, v14

    .line 578
    aget-wide v5, p1, v4

    add-double v5, v5, v18

    aput-wide v5, p1, v4

    .line 579
    aget-wide v4, p1, v17

    sub-double/2addr v4, v7

    aput-wide v4, p1, v17

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 30

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    const/4 v2, 0x1

    shr-long v2, p0, v2

    const-wide/16 v4, 0x2

    mul-long v6, p5, v4

    .line 589
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

    .line 594
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v16, v16, v14

    add-long v14, p8, v8

    .line 595
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-long v4, p3, v10

    add-long v12, p3, v12

    .line 598
    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    sub-double v18, v18, v20

    const-wide/16 v20, 0x1

    move-wide/from16 v22, v2

    add-long v1, v4, v20

    .line 599
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    move-wide/from16 v26, v6

    add-long v6, v12, v20

    invoke-virtual {v0, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    add-double v24, v24, v20

    mul-double v20, v16, v18

    mul-double v28, v14, v24

    sub-double v20, v20, v28

    mul-double v16, v16, v24

    mul-double v14, v14, v18

    add-double v16, v16, v14

    .line 602
    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double v14, v14, v20

    invoke-virtual {v0, v4, v5, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 603
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    sub-double v3, v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 604
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    add-double v1, v1, v20

    invoke-virtual {v0, v12, v13, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 605
    invoke-virtual {v0, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    sub-double v1, v1, v16

    invoke-virtual {v0, v6, v7, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x2

    add-long/2addr v10, v1

    move-wide v4, v1

    move-wide/from16 v2, v22

    move-wide/from16 v6, v26

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 29

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v15, p4

    .line 254
    const-class v16, Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v0, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/16 v9, 0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_0

    return-void

    .line 257
    :cond_0
    iget-boolean v2, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->useLargeArrays:Z

    if-nez v2, :cond_2

    .line 258
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v13, v0

    if-gez v0, :cond_1

    .line 259
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v0

    long-to-int v1, v13

    invoke-virtual {v11, v0, v1, v15}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    goto/16 :goto_7

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    iget-boolean v2, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/16 v19, 0x2

    if-eqz v2, :cond_6

    add-long/2addr v0, v13

    sub-long/2addr v0, v9

    .line 264
    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    .line 265
    iget-wide v2, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    sub-long v2, v2, v19

    :goto_0
    cmp-long v4, v2, v19

    if-ltz v4, :cond_3

    add-long v4, v13, v2

    add-long v6, v4, v9

    .line 266
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v21

    move-wide/from16 v23, v0

    sub-long v0, v4, v9

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    sub-double v9, v21, v25

    invoke-virtual {v12, v6, v7, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 267
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-double/2addr v6, v0

    invoke-virtual {v12, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    sub-long v2, v2, v19

    move-wide/from16 v0, v23

    const-wide/16 v9, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 v23, v0

    move-wide v0, v9

    add-long/2addr v0, v13

    .line 269
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double v2, v2, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 270
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-double v0, v0, v23

    invoke-virtual {v12, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 271
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 272
    iget-wide v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->rftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 273
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    iget-object v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    :cond_4
    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 275
    iget-object v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 277
    :cond_5
    :goto_1
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->dctsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    if-eqz v15, :cond_c

    .line 279
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    long-to-double v3, v1

    div-double v3, v17, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 280
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {v12, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto/16 :goto_7

    :cond_6
    mul-long v9, v0, v19

    .line 284
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const-wide/16 v5, 0x0

    .line 285
    iget-wide v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    .line 286
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 287
    iget-wide v2, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    :goto_2
    cmp-long v4, v2, v9

    if-gez v4, :cond_7

    sub-long v4, v9, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 288
    invoke-virtual {v0, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v6

    goto :goto_2

    .line 290
    :cond_7
    iget-object v2, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_a

    .line 291
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 293
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const/4 v8, 0x2

    int-to-long v3, v8

    div-long v19, v1, v3

    .line 294
    new-array v5, v8, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    if-ge v6, v8, :cond_9

    int-to-long v1, v6

    mul-long v3, v1, v19

    if-ne v6, v7, :cond_8

    .line 297
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    goto :goto_4

    :cond_8
    add-long v1, v3, v19

    :goto_4
    move-wide/from16 v21, v1

    .line 298
    new-instance v23, Lorg/jtransforms/dct/DoubleDCT_1D$2;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-wide/from16 v5, v21

    move/from16 v21, v7

    move/from16 v22, v8

    move-wide/from16 v7, p2

    move-wide/from16 v27, v9

    move-object/from16 v9, p1

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_1D$2;-><init>(Lorg/jtransforms/dct/DoubleDCT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v24, v25

    add-int/lit8 v6, v25, 0x1

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v5, v24

    move-wide/from16 v9, v27

    goto :goto_3

    :cond_9
    move-object/from16 v24, v5

    move-wide/from16 v27, v9

    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-static/range {v24 .. v24}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 316
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

    .line 314
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    move-wide/from16 v27, v9

    const-wide/16 v1, 0x0

    .line 319
    :goto_5
    iget-wide v3, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_b

    mul-long v3, v1, v19

    add-long v5, v13, v1

    .line 322
    iget-object v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget-object v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v21, 0x1

    add-long v3, v3, v21

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    mul-double/2addr v9, v3

    sub-double/2addr v7, v9

    invoke-virtual {v12, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v1, v21

    goto :goto_5

    :cond_b
    :goto_6
    if-eqz v15, :cond_c

    .line 326
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    move-wide/from16 v3, v27

    long-to-double v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 327
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {v12, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    :cond_c
    :goto_7
    return-void
.end method

.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public forward([DIZ)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 171
    const-class v12, Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_0

    return-void

    .line 174
    :cond_0
    iget-boolean v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->useLargeArrays:Z

    if-eqz v1, :cond_1

    .line 175
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v1, v10

    invoke-virtual {v8, v0, v1, v2, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_7

    .line 176
    :cond_1
    iget-boolean v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v7, 0x2

    if-eqz v1, :cond_5

    add-int v1, v10, v0

    sub-int/2addr v1, v13

    .line 177
    aget-wide v1, v9, v1

    sub-int/2addr v0, v7

    :goto_0
    if-lt v0, v7, :cond_2

    add-int v3, v10, v0

    add-int/lit8 v4, v3, 0x1

    .line 179
    aget-wide v5, v9, v3

    add-int/lit8 v12, v3, -0x1

    aget-wide v16, v9, v12

    sub-double v5, v5, v16

    aput-wide v5, v9, v4

    .line 180
    aget-wide v4, v9, v3

    aget-wide v12, v9, v12

    add-double/2addr v4, v12

    aput-wide v4, v9, v3

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v10, 0x1

    .line 182
    aget-wide v3, v9, v10

    sub-double/2addr v3, v1

    aput-wide v3, v9, v0

    .line 183
    aget-wide v3, v9, v10

    add-double/2addr v3, v1

    aput-wide v3, v9, v10

    .line 184
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_3

    .line 185
    iget v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->rftbsub(I[DII[DI)V

    .line 186
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    iget-object v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_4

    .line 188
    iget-object v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftbsub(I[DI[II[D)V

    .line 190
    :cond_4
    :goto_1
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->dctsub(I[DII[DI)V

    if-eqz v11, :cond_b

    .line 192
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-double v2, v1

    div-double v2, v14, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 193
    aget-wide v0, v9, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, v9, v10

    goto/16 :goto_7

    :cond_5
    mul-int/lit8 v6, v0, 0x2

    .line 197
    new-array v5, v6, [D

    const/4 v1, 0x0

    .line 198
    invoke-static {v9, v10, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    .line 200
    iget v2, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    :goto_2
    if-ge v2, v6, :cond_6

    sub-int v3, v6, v2

    sub-int/2addr v3, v13

    .line 201
    aget-wide v3, v5, v3

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 203
    :cond_6
    iget-object v2, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    if-le v0, v13, :cond_9

    .line 204
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-long v2, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v16

    cmp-long v0, v2, v16

    if-lez v0, :cond_9

    .line 206
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    div-int/2addr v0, v7

    .line 207
    new-array v4, v7, [Ljava/util/concurrent/Future;

    move v3, v1

    :goto_3
    if-ge v3, v7, :cond_8

    mul-int v16, v3, v0

    if-ne v3, v13, :cond_7

    .line 210
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    goto :goto_4

    :cond_7
    add-int v1, v16, v0

    :goto_4
    move/from16 v17, v1

    .line 211
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_1D$1;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v3

    move/from16 v3, v16

    move-object/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, p2

    move v14, v6

    move-object/from16 v6, p1

    move v15, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dct/DoubleDCT_1D$1;-><init>(Lorg/jtransforms/dct/DoubleDCT_1D;III[D[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v16, v19

    add-int/lit8 v3, v19, 0x1

    move v6, v14

    move v7, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto :goto_3

    :cond_8
    move-object/from16 v16, v4

    move v14, v6

    const/4 v1, 0x0

    .line 225
    :try_start_0
    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 229
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

    .line 227
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    move-object/from16 v17, v5

    move v14, v6

    .line 232
    :goto_5
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v1, v0, :cond_a

    mul-int/lit8 v0, v1, 0x2

    add-int v2, v10, v1

    .line 235
    iget-object v3, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    aget-wide v4, v3, v0

    aget-wide v6, v17, v0

    mul-double/2addr v4, v6

    add-int/2addr v0, v13

    aget-wide v6, v3, v0

    aget-wide v15, v17, v0

    mul-double/2addr v6, v15

    sub-double/2addr v4, v6

    aput-wide v4, v9, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v11, :cond_b

    .line 239
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-double v2, v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 240
    aget-wide v0, v9, v10

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, v9, v10

    :cond_b
    :goto_7
    return-void
.end method

.method public forward([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v0, p4

    .line 445
    const-class v15, Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/16 v16, 0x1

    cmp-long v3, v1, v16

    if-nez v3, :cond_0

    return-void

    .line 448
    :cond_0
    iget-boolean v3, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->useLargeArrays:Z

    if-nez v3, :cond_2

    .line 449
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isLarge()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->isConstant()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v13, v1

    if-gez v1, :cond_1

    .line 450
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getData()[D

    move-result-object v1

    long-to-int v2, v13

    invoke-virtual {v11, v1, v2, v0}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move-object v9, v11

    goto/16 :goto_8

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data array is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_2
    iget-boolean v3, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/16 v18, 0x2

    if-eqz v3, :cond_7

    if-eqz v0, :cond_3

    long-to-double v3, v1

    div-double v3, v9, v3

    .line 457
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 458
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {v12, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 460
    :cond_3
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/utils/CommonUtils;->dctsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 461
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const-wide/16 v3, 0x4

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    .line 462
    iget-object v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 463
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    iget-wide v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ncl:J

    iget-object v8, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    invoke-static/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->rftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_0

    :cond_4
    cmp-long v0, v1, v3

    if-nez v0, :cond_5

    .line 465
    iget-object v6, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->ipl:Lpl/edu/icm/jlargearrays/LongLargeArray;

    iget-wide v7, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nwl:J

    iget-object v9, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/LongLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 467
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    add-long v2, v13, v16

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    sub-double/2addr v0, v4

    .line 468
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    add-double/2addr v4, v2

    invoke-virtual {v12, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-wide/from16 v2, v18

    .line 469
    :goto_1
    iget-wide v4, v11, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    add-long v4, v13, v2

    sub-long v6, v4, v16

    .line 470
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    add-long v10, v4, v16

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v20

    sub-double v8, v8, v20

    invoke-virtual {v12, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 471
    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v12, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    move-object/from16 v11, p0

    goto :goto_1

    :cond_6
    add-long v2, v13, v4

    sub-long v2, v2, v16

    .line 473
    invoke-virtual {v12, v2, v3, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    move-object/from16 v9, p0

    goto/16 :goto_8

    :cond_7
    mul-long v6, v1, v18

    if-eqz v0, :cond_8

    long-to-double v3, v6

    .line 477
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v22, v6

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/CommonUtils;->scale(JDLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 478
    invoke-virtual/range {p1 .. p3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {v12, v13, v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    goto :goto_2

    :cond_8
    move-wide/from16 v22, v6

    .line 480
    :goto_2
    new-instance v11, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v1, v22

    invoke-direct {v11, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 481
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v10, 0x1

    if-le v0, v10, :cond_c

    move-object/from16 v8, p0

    .line 482
    iget-wide v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 484
    iget-wide v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    const/4 v9, 0x2

    int-to-long v2, v9

    div-long v16, v0, v2

    .line 485
    new-array v0, v9, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    if-ge v7, v9, :cond_a

    int-to-long v1, v7

    mul-long v3, v1, v16

    if-ne v7, v10, :cond_9

    .line 488
    iget-wide v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    goto :goto_4

    :cond_9
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 489
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_1D$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v7

    move-object/from16 v7, p1

    move-object v12, v8

    move/from16 v20, v9

    move-wide/from16 v8, p2

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_1D$4;-><init>(Lorg/jtransforms/dct/DoubleDCT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v0, v19

    add-int/lit8 v7, v19, 0x1

    move-object v8, v12

    move/from16 v9, v20

    const/4 v10, 0x1

    move-object/from16 v12, p1

    goto :goto_3

    :cond_a
    move-object v12, v8

    const/4 v1, 0x0

    .line 503
    :try_start_0
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 507
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 505
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    move-object v12, v8

    goto :goto_5

    :cond_c
    move-object/from16 v12, p0

    :goto_5
    const-wide/16 v0, 0x0

    .line 510
    :goto_6
    iget-wide v2, v12, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    mul-long v2, v0, v18

    add-long v4, v13, v0

    move-object/from16 v6, p1

    move-object v9, v12

    .line 512
    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 513
    iget-object v7, v9, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v7, v4

    invoke-virtual {v11, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v16

    .line 514
    iget-object v7, v9, Lorg/jtransforms/dct/DoubleDCT_1D;->wl:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    mul-double/2addr v7, v4

    invoke-virtual {v11, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v16

    goto :goto_6

    :cond_d
    :goto_7
    move-object/from16 v6, p1

    move-object v9, v12

    .line 517
    iget-object v0, v9, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v2, 0x0

    .line 518
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_1D;->nl:J

    move-object v1, v11

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    :goto_8
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    return-void
.end method

.method public inverse([DIZ)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v0, p3

    .line 363
    const-class v11, Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    return-void

    .line 366
    :cond_0
    iget-boolean v2, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->useLargeArrays:Z

    if-eqz v2, :cond_1

    .line 367
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v1, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>([D)V

    int-to-long v2, v10

    invoke-virtual {v8, v1, v2, v3, v0}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto/16 :goto_6

    .line 368
    :cond_1
    iget-boolean v2, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const/4 v15, 0x2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    int-to-double v2, v1

    div-double v2, v13, v2

    .line 371
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 372
    aget-wide v0, v9, v10

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, v9, v10

    .line 374
    :cond_2
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->dctsub(I[DII[DI)V

    .line 375
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_3

    .line 376
    iget-object v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 377
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->rftfsub(I[DII[DI)V

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    .line 379
    iget-object v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->cftfsub(I[DI[II[D)V

    .line 381
    :cond_4
    :goto_0
    aget-wide v0, v9, v10

    add-int/lit8 v2, v10, 0x1

    aget-wide v2, v9, v2

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    .line 382
    aput-wide v0, v9, v10

    .line 383
    :goto_1
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v15, v0, :cond_5

    add-int v0, v10, v15

    add-int/lit8 v1, v0, -0x1

    .line 384
    aget-wide v2, v9, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v13, v9, v6

    sub-double/2addr v2, v13

    aput-wide v2, v9, v1

    .line 385
    aget-wide v1, v9, v0

    aget-wide v6, v9, v6

    add-double/2addr v1, v6

    aput-wide v1, v9, v0

    add-int/lit8 v15, v15, 0x2

    goto :goto_1

    :cond_5
    add-int/2addr v0, v10

    sub-int/2addr v0, v12

    .line 387
    aput-wide v4, v9, v0

    goto/16 :goto_6

    :cond_6
    mul-int/lit8 v7, v1, 0x2

    if-eqz v0, :cond_7

    int-to-double v2, v7

    .line 391
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v6}, Lorg/jtransforms/utils/CommonUtils;->scale(ID[DIZ)V

    .line 392
    aget-wide v0, v9, v10

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    aput-wide v0, v9, v10

    .line 394
    :cond_7
    new-array v13, v7, [D

    .line 395
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v14, 0x0

    if-le v0, v12, :cond_a

    .line 396
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-long v0, v0

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_1D_FFT_2Threads()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 398
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    div-int/2addr v0, v15

    .line 399
    new-array v7, v15, [Ljava/util/concurrent/Future;

    move v6, v14

    :goto_2
    if-ge v6, v15, :cond_9

    mul-int v3, v6, v0

    if-ne v6, v12, :cond_8

    .line 402
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    goto :goto_3

    :cond_8
    add-int v1, v3, v0

    :goto_3
    move v4, v1

    .line 403
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_1D$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    move-object/from16 v18, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dct/DoubleDCT_1D$3;-><init>(Lorg/jtransforms/dct/DoubleDCT_1D;II[DI[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v17

    add-int/lit8 v6, v17, 0x1

    move-object/from16 v7, v18

    goto :goto_2

    :cond_9
    move-object/from16 v18, v7

    const/4 v1, 0x0

    .line 417
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 421
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

    .line 419
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    move v0, v14

    .line 424
    :goto_4
    iget v1, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v10, v0

    .line 426
    aget-wide v2, v9, v2

    .line 427
    iget-object v4, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->w:[D

    aget-wide v5, v4, v1

    mul-double/2addr v5, v2

    aput-wide v5, v13, v1

    add-int/2addr v1, v12

    .line 428
    aget-wide v5, v4, v1

    neg-double v4, v5

    mul-double/2addr v4, v2

    aput-wide v4, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 431
    :cond_b
    :goto_5
    iget-object v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->fft:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v13, v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    .line 432
    iget v0, v8, Lorg/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {v13, v14, v9, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    return-void
.end method

.method public inverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, v0, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    return-void
.end method
