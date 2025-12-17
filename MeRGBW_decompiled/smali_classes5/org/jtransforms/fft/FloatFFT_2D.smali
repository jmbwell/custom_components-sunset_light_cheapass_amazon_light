.class public Lorg/jtransforms/fft/FloatFFT_2D;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

.field private fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

.field private isPowerOfTwo:Z

.field private rows:I

.field private rowsl:J

.field private useThreads:Z


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    .line 65
    iput-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    long-to-int v1, p1

    .line 79
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    long-to-int v1, p3

    .line 80
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    .line 81
    iput-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    .line 82
    iput-wide p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v1, p1, p3

    .line 83
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 84
    iput-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    .line 86
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iput-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    :cond_1
    const-wide/16 v3, 0x2

    mul-long/2addr v3, p1

    mul-long/2addr v3, p3

    .line 89
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 90
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 92
    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    goto :goto_0

    .line 94
    :cond_3
    new-instance p1, Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-direct {p1, p3, p4}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    :goto_0
    return-void

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    return p0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    return-wide v0
.end method

.method private cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 2776
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 2777
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    const/4 v7, 0x1

    :goto_0
    shr-long/2addr v3, v7

    goto :goto_1

    :cond_0
    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    .line 2782
    :cond_1
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_8

    .line 2784
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_4

    const-wide/16 v2, 0x0

    .line 2785
    :goto_2
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_f

    const-wide/16 v4, 0x0

    .line 2786
    :goto_3
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v6, v4, v11

    if-gez v6, :cond_2

    .line 2787
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v13, v4

    add-long/2addr v13, v2

    mul-long v9, v4, v19

    mul-long v23, v11, v19

    move-wide/from16 v25, v2

    add-long v2, v23, v9

    mul-long v23, v11, v19

    move-wide/from16 v27, v4

    add-long v4, v2, v23

    mul-long v11, v11, v19

    add-long/2addr v11, v4

    .line 2792
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    move-wide/from16 v23, v11

    float-to-double v11, v6

    invoke-virtual {v7, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v9, v9, v21

    add-long v11, v13, v21

    .line 2793
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v11, v6

    invoke-virtual {v7, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v13, v19

    .line 2794
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v13, v17

    .line 2795
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x4

    add-long v9, v13, v2

    .line 2796
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    const-wide/16 v2, 0x5

    add-long v8, v13, v2

    .line 2797
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v13, v15

    .line 2798
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    move-wide/from16 v4, v23

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v11, v4, v21

    const-wide/16 v2, 0x7

    add-long/2addr v13, v2

    .line 2799
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v27, v21

    move-wide/from16 v2, v25

    const-wide/16 v9, 0x4

    goto/16 :goto_3

    :cond_2
    move-wide/from16 v25, v2

    .line 2801
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 2802
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 2803
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 2804
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 2805
    :goto_4
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 2806
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v2

    add-long v8, v8, v25

    mul-long v10, v2, v19

    mul-long v12, v4, v19

    add-long/2addr v12, v10

    mul-long v23, v4, v19

    move-wide/from16 v27, v2

    add-long v2, v12, v23

    mul-long v4, v4, v19

    add-long/2addr v4, v2

    .line 2811
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    move-wide/from16 v23, v4

    float-to-double v4, v6

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 2812
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 2813
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 2814
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 2815
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 2816
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v4, v23

    .line 2817
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v4, v4, v21

    .line 2818
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v27, v21

    goto :goto_4

    :cond_3
    const-wide/16 v2, 0x8

    add-long v4, v25, v2

    move-wide v2, v4

    const-wide/16 v9, 0x4

    goto/16 :goto_2

    :cond_4
    move-wide v4, v9

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    const-wide/16 v2, 0x0

    .line 2822
    :goto_5
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 2823
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v2

    mul-long v10, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v10

    .line 2826
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v12, v6

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v8, v21

    .line 2827
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v12, v6

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2828
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v7, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v8, v17

    .line 2829
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_5

    .line 2831
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 2832
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v5, 0x0

    .line 2833
    :goto_6
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v5, v2

    if-gez v4, :cond_f

    .line 2834
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v5

    mul-long v10, v5, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 2837
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v12, v4

    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v12, v8, v21

    add-long v10, v10, v21

    .line 2838
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v10, v4

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2839
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v12, v4

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v17

    add-long v2, v2, v21

    .line 2840
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_6

    :cond_6
    cmp-long v2, v2, v19

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    .line 2843
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    .line 2844
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v4, v2

    mul-long v8, v2, v19

    .line 2846
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v4, v4, v21

    .line 2847
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v7, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_7

    .line 2849
    :cond_7
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v5, 0x0

    .line 2850
    :goto_8
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_f

    .line 2851
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v5

    mul-long v8, v5, v19

    .line 2853
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v10, v4

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 2854
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_8

    .line 2857
    :cond_8
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    const-wide/16 v3, 0x0

    .line 2858
    :goto_9
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_f

    const-wide/16 v5, 0x0

    .line 2859
    :goto_a
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v10, v5, v8

    if-gez v10, :cond_9

    .line 2860
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v10, v5

    add-long/2addr v10, v3

    mul-long v12, v5, v19

    mul-long v23, v8, v19

    move-wide/from16 v25, v3

    add-long v3, v23, v12

    mul-long v23, v8, v19

    move-wide/from16 v27, v5

    add-long v5, v3, v23

    mul-long v8, v8, v19

    add-long/2addr v8, v5

    .line 2865
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    move-wide/from16 v23, v8

    float-to-double v8, v14

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v12, v12, v21

    add-long v8, v10, v21

    .line 2866
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v10, v19

    .line 2867
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v3, v3, v21

    add-long v8, v10, v17

    .line 2868
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x4

    add-long v8, v10, v3

    .line 2869
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    const-wide/16 v3, 0x5

    add-long v13, v10, v3

    .line 2870
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v3, v10, v15

    .line 2871
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    move-wide/from16 v5, v23

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v5, v21

    const-wide/16 v3, 0x7

    add-long/2addr v10, v3

    .line 2872
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v7, v8, v9, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v27, v21

    move-wide/from16 v3, v25

    goto :goto_a

    :cond_9
    move-wide/from16 v25, v3

    .line 2874
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 2875
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 2876
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 2877
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 2878
    :goto_b
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_a

    .line 2879
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v3

    add-long v8, v8, v25

    mul-long v10, v3, v19

    mul-long v12, v5, v19

    add-long/2addr v12, v10

    mul-long v23, v5, v19

    move-wide/from16 v27, v3

    add-long v2, v12, v23

    mul-long v5, v5, v19

    add-long/2addr v5, v2

    .line 2884
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v23, v5

    float-to-double v4, v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 2885
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 2886
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 2887
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 2888
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 2889
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v10, v23

    .line 2890
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v12, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 2891
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v27, v21

    move/from16 v2, p3

    move-wide v3, v8

    goto :goto_b

    :cond_a
    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v8, 0x8

    add-long v10, v25, v8

    move/from16 v2, p3

    move-wide v3, v10

    goto/16 :goto_9

    :cond_b
    const-wide/16 v5, 0x4

    cmp-long v2, v3, v5

    if-nez v2, :cond_d

    const-wide/16 v2, 0x0

    .line 2895
    :goto_c
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 2896
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v2

    mul-long v10, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v10

    .line 2899
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v12, v6

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v8, v21

    .line 2900
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v12, v6

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2901
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {v7, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v8, v17

    .line 2902
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_c

    .line 2904
    :cond_c
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v5, p3

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 2905
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v5, 0x0

    .line 2906
    :goto_d
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v5, v2

    if-gez v4, :cond_f

    .line 2907
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v5

    mul-long v10, v5, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 2910
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v12, v4

    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v12, v8, v21

    add-long v10, v10, v21

    .line 2911
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v10, v4

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2912
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v12, v4

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v17

    add-long v2, v2, v21

    .line 2913
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_d

    :cond_d
    move/from16 v5, p3

    cmp-long v2, v3, v19

    if-nez v2, :cond_f

    const-wide/16 v3, 0x0

    .line 2916
    :goto_e
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v3, v8

    if-gez v2, :cond_e

    .line 2917
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v8, v3

    mul-long v10, v3, v19

    .line 2919
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v12, v2

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 2920
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v8, v2

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v3, v3, v21

    goto :goto_e

    .line 2922
    :cond_e
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v5, v3

    .line 2923
    :goto_f
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_f

    .line 2924
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v5

    mul-long v8, v5, v19

    .line 2926
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v10, v4

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 2927
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_f

    :cond_f
    return-void
.end method

.method private cdft2d_sub(I[FZ)V
    .locals 11

    .line 2617
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    .line 2618
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 2623
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p1, v3, :cond_8

    if-le v1, v2, :cond_4

    move p1, v4

    .line 2626
    :goto_1
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge p1, p3, :cond_f

    move p3, v4

    .line 2627
    :goto_2
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p3, v1, :cond_2

    .line 2628
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, p3

    add-int/2addr v3, p1

    mul-int/lit8 v6, p3, 0x2

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v6

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v7

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    .line 2633
    aget v9, p2, v3

    aput v9, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v3, 0x1

    .line 2634
    aget v9, p2, v9

    aput v9, v0, v6

    add-int/lit8 v6, v3, 0x2

    .line 2635
    aget v6, p2, v6

    aput v6, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v3, 0x3

    .line 2636
    aget v6, p2, v6

    aput v6, v0, v7

    add-int/lit8 v6, v3, 0x4

    .line 2637
    aget v6, p2, v6

    aput v6, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v3, 0x5

    .line 2638
    aget v6, p2, v6

    aput v6, v0, v8

    add-int/lit8 v6, v3, 0x6

    .line 2639
    aget v6, p2, v6

    aput v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x7

    .line 2640
    aget v3, p2, v3

    aput v3, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2642
    :cond_2
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p3, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2643
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v5

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2644
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2645
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move p3, v4

    .line 2646
    :goto_3
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p3, v1, :cond_3

    .line 2647
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, p3

    add-int/2addr v3, p1

    mul-int/lit8 v6, p3, 0x2

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v6

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v7

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    .line 2652
    aget v9, v0, v6

    aput v9, p2, v3

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 2653
    aget v6, v0, v6

    aput v6, p2, v9

    add-int/lit8 v6, v3, 0x2

    .line 2654
    aget v9, v0, v7

    aput v9, p2, v6

    add-int/lit8 v6, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    .line 2655
    aget v7, v0, v7

    aput v7, p2, v6

    add-int/lit8 v6, v3, 0x4

    .line 2656
    aget v7, v0, v8

    aput v7, p2, v6

    add-int/lit8 v6, v3, 0x5

    add-int/lit8 v8, v8, 0x1

    .line 2657
    aget v7, v0, v8

    aput v7, p2, v6

    add-int/lit8 v6, v3, 0x6

    .line 2658
    aget v7, v0, v1

    aput v7, p2, v6

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v1, 0x1

    .line 2659
    aget v1, v0, v1

    aput v1, p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x8

    goto/16 :goto_1

    :cond_4
    if-ne v1, v2, :cond_6

    move p1, v4

    .line 2663
    :goto_4
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_5

    .line 2664
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v1, p1

    mul-int/lit8 v2, p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v2

    .line 2667
    aget v3, p2, v1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 2668
    aget v3, p2, v3

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    .line 2669
    aget v2, p2, v2

    aput v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x3

    .line 2670
    aget v1, p2, v1

    aput v1, v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2672
    :cond_5
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2673
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr p3, v5

    invoke-virtual {p1, v0, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2674
    :goto_5
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, p1, :cond_f

    .line 2675
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr p3, v4

    mul-int/lit8 v1, v4, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 2678
    aget v2, v0, v1

    aput v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2679
    aget v1, v0, v1

    aput v1, p2, v2

    add-int/lit8 v1, p3, 0x2

    .line 2680
    aget v2, v0, p1

    aput v2, p2, v1

    add-int/lit8 p3, p3, 0x3

    add-int/lit8 p1, p1, 0x1

    .line 2681
    aget p1, v0, p1

    aput p1, p2, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    if-ne v1, v5, :cond_f

    move p1, v4

    .line 2684
    :goto_6
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_7

    .line 2685
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr p3, p1

    mul-int/lit8 v1, p1, 0x2

    .line 2687
    aget v2, p2, p3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 2688
    aget p3, p2, p3

    aput p3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 2690
    :cond_7
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2691
    :goto_7
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, p1, :cond_f

    .line 2692
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr p1, v4

    mul-int/lit8 p3, v4, 0x2

    .line 2694
    aget v1, v0, p3

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 2695
    aget p3, v0, p3

    aput p3, p2, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    if-le v1, v2, :cond_b

    move p1, v4

    .line 2699
    :goto_8
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge p1, v1, :cond_f

    move v1, v4

    .line 2700
    :goto_9
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v3, :cond_9

    .line 2701
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, p1

    mul-int/lit8 v7, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v7

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    .line 2706
    aget v10, p2, v6

    aput v10, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 2707
    aget v10, p2, v10

    aput v10, v0, v7

    add-int/lit8 v7, v6, 0x2

    .line 2708
    aget v7, p2, v7

    aput v7, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v6, 0x3

    .line 2709
    aget v7, p2, v7

    aput v7, v0, v8

    add-int/lit8 v7, v6, 0x4

    .line 2710
    aget v7, p2, v7

    aput v7, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v6, 0x5

    .line 2711
    aget v7, p2, v7

    aput v7, v0, v9

    add-int/lit8 v7, v6, 0x6

    .line 2712
    aget v7, p2, v7

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x7

    .line 2713
    aget v6, p2, v6

    aput v6, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2715
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2716
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v3, v5

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2717
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2718
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v4

    .line 2719
    :goto_a
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v3, :cond_a

    .line 2720
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, p1

    mul-int/lit8 v7, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v7

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    .line 2725
    aget v10, v0, v7

    aput v10, p2, v6

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 2726
    aget v7, v0, v7

    aput v7, p2, v10

    add-int/lit8 v7, v6, 0x2

    .line 2727
    aget v10, v0, v8

    aput v10, p2, v7

    add-int/lit8 v7, v6, 0x3

    add-int/lit8 v8, v8, 0x1

    .line 2728
    aget v8, v0, v8

    aput v8, p2, v7

    add-int/lit8 v7, v6, 0x4

    .line 2729
    aget v8, v0, v9

    aput v8, p2, v7

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v9, v9, 0x1

    .line 2730
    aget v8, v0, v9

    aput v8, p2, v7

    add-int/lit8 v7, v6, 0x6

    .line 2731
    aget v8, v0, v3

    aput v8, p2, v7

    add-int/lit8 v6, v6, 0x7

    add-int/lit8 v3, v3, 0x1

    .line 2732
    aget v3, v0, v3

    aput v3, p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 p1, p1, 0x8

    goto/16 :goto_8

    :cond_b
    if-ne v1, v2, :cond_d

    move p1, v4

    .line 2736
    :goto_b
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, v1, :cond_c

    .line 2737
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, p1

    mul-int/lit8 v3, p1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    .line 2740
    aget v6, p2, v2

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 2741
    aget v6, p2, v6

    aput v6, v0, v3

    add-int/lit8 v3, v2, 0x2

    .line 2742
    aget v3, p2, v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x3

    .line 2743
    aget v2, p2, v2

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 2745
    :cond_c
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2746
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v5

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2747
    :goto_c
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, p1, :cond_f

    .line 2748
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr p3, v4

    mul-int/lit8 v1, v4, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 2751
    aget v2, v0, v1

    aput v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2752
    aget v1, v0, v1

    aput v1, p2, v2

    add-int/lit8 v1, p3, 0x2

    .line 2753
    aget v2, v0, p1

    aput v2, p2, v1

    add-int/lit8 p3, p3, 0x3

    add-int/lit8 p1, p1, 0x1

    .line 2754
    aget p1, v0, p1

    aput p1, p2, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    if-ne v1, v5, :cond_f

    move p1, v4

    .line 2757
    :goto_d
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, v1, :cond_e

    .line 2758
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v1, p1

    mul-int/lit8 v2, p1, 0x2

    .line 2760
    aget v3, p2, v1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2761
    aget v1, p2, v1

    aput v1, v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 2763
    :cond_e
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v4, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 2764
    :goto_e
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, p1, :cond_f

    .line 2765
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr p1, v4

    mul-int/lit8 p3, v4, 0x2

    .line 2767
    aget v1, v0, p3

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 2768
    aget p3, v0, p3

    aput p3, p2, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_f
    return-void
.end method

.method private cdft2d_sub(I[[FZ)V
    .locals 12

    .line 2935
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    .line 2936
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    .line 2941
    :cond_1
    :goto_0
    new-array v0, v0, [F

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne p1, v3, :cond_8

    if-le v1, v2, :cond_4

    move p1, v5

    .line 2944
    :goto_1
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge p1, p3, :cond_f

    move p3, v5

    .line 2945
    :goto_2
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p3, v1, :cond_2

    mul-int/lit8 v3, p3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    .line 2950
    aget-object v9, p2, p3

    aget v10, v9, p1

    aput v10, v0, v3

    add-int/2addr v3, v7

    add-int/lit8 v10, p1, 0x1

    .line 2951
    aget v10, v9, v10

    aput v10, v0, v3

    add-int/lit8 v3, p1, 0x2

    .line 2952
    aget v3, v9, v3

    aput v3, v0, v4

    add-int/2addr v4, v7

    add-int/lit8 v3, p1, 0x3

    .line 2953
    aget v3, v9, v3

    aput v3, v0, v4

    add-int/lit8 v3, p1, 0x4

    .line 2954
    aget v3, v9, v3

    aput v3, v0, v8

    add-int/2addr v8, v7

    add-int/lit8 v3, p1, 0x5

    .line 2955
    aget v3, v9, v3

    aput v3, v0, v8

    add-int/lit8 v3, p1, 0x6

    .line 2956
    aget v3, v9, v3

    aput v3, v0, v1

    add-int/2addr v1, v7

    add-int/lit8 v3, p1, 0x7

    .line 2957
    aget v3, v9, v3

    aput v3, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2959
    :cond_2
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p3, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2960
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v6

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2961
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2962
    iget-object p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move p3, v5

    .line 2963
    :goto_3
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p3, v1, :cond_3

    mul-int/lit8 v3, p3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    .line 2968
    aget-object v9, p2, p3

    aget v10, v0, v3

    aput v10, v9, p1

    add-int/lit8 v10, p1, 0x1

    add-int/2addr v3, v7

    .line 2969
    aget v3, v0, v3

    aput v3, v9, v10

    add-int/lit8 v3, p1, 0x2

    .line 2970
    aget v10, v0, v4

    aput v10, v9, v3

    add-int/lit8 v3, p1, 0x3

    add-int/2addr v4, v7

    .line 2971
    aget v4, v0, v4

    aput v4, v9, v3

    add-int/lit8 v3, p1, 0x4

    .line 2972
    aget v4, v0, v8

    aput v4, v9, v3

    add-int/lit8 v3, p1, 0x5

    add-int/2addr v8, v7

    .line 2973
    aget v4, v0, v8

    aput v4, v9, v3

    add-int/lit8 v3, p1, 0x6

    .line 2974
    aget v4, v0, v1

    aput v4, v9, v3

    add-int/lit8 v3, p1, 0x7

    add-int/2addr v1, v7

    .line 2975
    aget v1, v0, v1

    aput v1, v9, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x8

    goto/16 :goto_1

    :cond_4
    if-ne v1, v2, :cond_6

    move p1, v5

    .line 2979
    :goto_4
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_5

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    .line 2982
    aget-object v2, p2, p1

    aget v3, v2, v5

    aput v3, v0, v1

    add-int/2addr v1, v7

    .line 2983
    aget v3, v2, v7

    aput v3, v0, v1

    .line 2984
    aget v1, v2, v6

    aput v1, v0, p3

    add-int/2addr p3, v7

    .line 2985
    aget v1, v2, v4

    aput v1, v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2987
    :cond_5
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 2988
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr p3, v6

    invoke-virtual {p1, v0, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move p1, v5

    .line 2989
    :goto_5
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_f

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    .line 2992
    aget-object v2, p2, p1

    aget v3, v0, v1

    aput v3, v2, v5

    add-int/2addr v1, v7

    .line 2993
    aget v1, v0, v1

    aput v1, v2, v7

    .line 2994
    aget v1, v0, p3

    aput v1, v2, v6

    add-int/2addr p3, v7

    .line 2995
    aget p3, v0, p3

    aput p3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    if-ne v1, v6, :cond_f

    move p1, v5

    .line 2998
    :goto_6
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_7

    mul-int/lit8 p3, p1, 0x2

    .line 3000
    aget-object v1, p2, p1

    aget v2, v1, v5

    aput v2, v0, p3

    add-int/2addr p3, v7

    .line 3001
    aget v1, v1, v7

    aput v1, v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 3003
    :cond_7
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move p1, v5

    .line 3004
    :goto_7
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_f

    mul-int/lit8 p3, p1, 0x2

    .line 3006
    aget-object v1, p2, p1

    aget v2, v0, p3

    aput v2, v1, v5

    add-int/2addr p3, v7

    .line 3007
    aget p3, v0, p3

    aput p3, v1, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_8
    if-le v1, v2, :cond_b

    move p1, v5

    .line 3011
    :goto_8
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge p1, v1, :cond_f

    move v1, v5

    .line 3012
    :goto_9
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v3, :cond_9

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    .line 3017
    aget-object v10, p2, v1

    aget v11, v10, p1

    aput v11, v0, v4

    add-int/2addr v4, v7

    add-int/lit8 v11, p1, 0x1

    .line 3018
    aget v11, v10, v11

    aput v11, v0, v4

    add-int/lit8 v4, p1, 0x2

    .line 3019
    aget v4, v10, v4

    aput v4, v0, v8

    add-int/2addr v8, v7

    add-int/lit8 v4, p1, 0x3

    .line 3020
    aget v4, v10, v4

    aput v4, v0, v8

    add-int/lit8 v4, p1, 0x4

    .line 3021
    aget v4, v10, v4

    aput v4, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v4, p1, 0x5

    .line 3022
    aget v4, v10, v4

    aput v4, v0, v9

    add-int/lit8 v4, p1, 0x6

    .line 3023
    aget v4, v10, v4

    aput v4, v0, v3

    add-int/2addr v3, v7

    add-int/lit8 v4, p1, 0x7

    .line 3024
    aget v4, v10, v4

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3026
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3027
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v3, v6

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3028
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3029
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v0, v3, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v5

    .line 3030
    :goto_a
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v3, :cond_a

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v4

    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    .line 3035
    aget-object v10, p2, v1

    aget v11, v0, v4

    aput v11, v10, p1

    add-int/lit8 v11, p1, 0x1

    add-int/2addr v4, v7

    .line 3036
    aget v4, v0, v4

    aput v4, v10, v11

    add-int/lit8 v4, p1, 0x2

    .line 3037
    aget v11, v0, v8

    aput v11, v10, v4

    add-int/lit8 v4, p1, 0x3

    add-int/2addr v8, v7

    .line 3038
    aget v8, v0, v8

    aput v8, v10, v4

    add-int/lit8 v4, p1, 0x4

    .line 3039
    aget v8, v0, v9

    aput v8, v10, v4

    add-int/lit8 v4, p1, 0x5

    add-int/2addr v9, v7

    .line 3040
    aget v8, v0, v9

    aput v8, v10, v4

    add-int/lit8 v4, p1, 0x6

    .line 3041
    aget v8, v0, v3

    aput v8, v10, v4

    add-int/lit8 v4, p1, 0x7

    add-int/2addr v3, v7

    .line 3042
    aget v3, v0, v3

    aput v3, v10, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 p1, p1, 0x8

    goto/16 :goto_8

    :cond_b
    if-ne v1, v2, :cond_d

    move p1, v5

    .line 3046
    :goto_b
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, v1, :cond_c

    mul-int/lit8 v2, p1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 3049
    aget-object v3, p2, p1

    aget v8, v3, v5

    aput v8, v0, v2

    add-int/2addr v2, v7

    .line 3050
    aget v8, v3, v7

    aput v8, v0, v2

    .line 3051
    aget v2, v3, v6

    aput v2, v0, v1

    add-int/2addr v1, v7

    .line 3052
    aget v2, v3, v4

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 3054
    :cond_c
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v5, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3055
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v6

    invoke-virtual {p1, v0, v1, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move p1, v5

    .line 3056
    :goto_c
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_f

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    .line 3059
    aget-object v2, p2, p1

    aget v3, v0, v1

    aput v3, v2, v5

    add-int/2addr v1, v7

    .line 3060
    aget v1, v0, v1

    aput v1, v2, v7

    .line 3061
    aget v1, v0, p3

    aput v1, v2, v6

    add-int/2addr p3, v7

    .line 3062
    aget p3, v0, p3

    aput p3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_d
    if-ne v1, v6, :cond_f

    move p1, v5

    .line 3065
    :goto_d
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, v1, :cond_e

    mul-int/lit8 v1, p1, 0x2

    .line 3067
    aget-object v2, p2, p1

    aget v3, v2, v5

    aput v3, v0, v1

    add-int/2addr v1, v7

    .line 3068
    aget v2, v2, v7

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 3070
    :cond_e
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {p1, v0, v5, p3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move p1, v5

    .line 3071
    :goto_e
    iget p3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge p1, p3, :cond_f

    mul-int/lit8 p3, p1, 0x2

    .line 3073
    aget-object v1, p2, p1

    aget v2, v0, p3

    aput v2, v1, v5

    add-int/2addr p3, v7

    .line 3074
    aget p3, v0, p3

    aput p3, v1, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_f
    return-void
.end method

.method private cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 3512
    const-class v12, Lorg/jtransforms/fft/FloatFFT_2D;

    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x8

    .line 3513
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v3, v1

    .line 3514
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    shr-long/2addr v3, v1

    goto :goto_1

    :cond_0
    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v13, v3

    .line 3520
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_2

    int-to-long v7, v10

    .line 3524
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_2D$44;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v6, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$44;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JIIJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 3681
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3685
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3683
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private cdft2d_subth(I[FZ)V
    .locals 15

    move-object v9, p0

    .line 3333
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 3334
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x8

    .line 3335
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x2

    :cond_1
    :goto_0
    move v11, v1

    .line 3341
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 3345
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_2D$43;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v0

    move v6, v13

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$43;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3502
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3506
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3504
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private cdft2d_subth(I[[FZ)V
    .locals 15

    move-object v9, p0

    .line 3691
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 3692
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x8

    .line 3693
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x2

    :cond_1
    :goto_0
    move v11, v1

    .line 3699
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 3703
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_2D$45;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v0

    move v6, v13

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$45;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3848
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3852
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3850
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 32

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 3975
    const-class v16, Lorg/jtransforms/fft/FloatFFT_2D;

    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    mul-long v17, v0, v2

    .line 3977
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    div-long v19, v0, v2

    const-wide/16 v12, 0x1

    sub-long/2addr v0, v12

    :goto_0
    cmp-long v4, v0, v12

    const-wide/16 v10, 0x0

    if-ltz v4, :cond_1

    .line 3980
    iget-wide v7, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    mul-long v21, v7, v2

    const-wide/16 v5, 0x0

    .line 3982
    :goto_1
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    add-long v2, v21, v5

    add-long v12, v7, v5

    .line 3983
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v27, v7

    float-to-double v7, v4

    invoke-virtual {v15, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3984
    invoke-virtual {v15, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    add-long/2addr v12, v7

    .line 3985
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v7, v4

    invoke-virtual {v15, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3986
    invoke-virtual {v15, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x2

    add-long/2addr v5, v2

    move-wide/from16 v7, v27

    const-wide/16 v12, 0x1

    goto :goto_1

    :cond_0
    move-wide v2, v12

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    goto :goto_0

    .line 3989
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 3990
    iget-boolean v1, v14, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_5

    int-to-long v1, v0

    cmp-long v3, v19, v1

    if-ltz v3, :cond_5

    .line 3991
    new-array v12, v0, [Ljava/util/concurrent/Future;

    .line 3992
    div-long v21, v19, v1

    .line 3993
    iget-wide v1, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v3, 0x2

    mul-long v23, v1, v3

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    if-ge v13, v0, :cond_4

    if-nez v13, :cond_2

    int-to-long v1, v13

    mul-long v1, v1, v21

    const-wide/16 v25, 0x1

    add-long v1, v1, v25

    goto :goto_3

    :cond_2
    const-wide/16 v25, 0x1

    int-to-long v1, v13

    mul-long v1, v1, v21

    :goto_3
    move-wide v3, v1

    int-to-long v1, v13

    mul-long v27, v1, v21

    add-long v5, v27, v21

    add-int/lit8 v1, v0, -0x1

    if-ne v13, v1, :cond_3

    add-long v1, v5, v25

    move-wide/from16 v29, v1

    goto :goto_4

    :cond_3
    move-wide/from16 v29, v5

    .line 4008
    :goto_4
    new-instance v31, Lorg/jtransforms/fft/FloatFFT_2D$47;

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-object/from16 v9, p1

    move-wide/from16 v10, v27

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-wide/from16 v12, v29

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/FloatFFT_2D$47;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v26

    add-int/lit8 v13, v26, 0x1

    move-object/from16 v12, v25

    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v25, v12

    const/4 v1, 0x0

    .line 4046
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4050
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 4048
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_5
    const-wide/16 v12, 0x1

    :goto_5
    cmp-long v0, v12, v19

    if-gez v0, :cond_6

    mul-long v0, v12, v17

    .line 4057
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    sub-long/2addr v2, v12

    mul-long v2, v2, v17

    .line 4058
    iget-wide v7, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    add-long/2addr v7, v0

    const-wide/16 v9, 0x1

    add-long v5, v2, v9

    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v15, v7, v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 4059
    iget-wide v4, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    add-long/2addr v0, v4

    add-long/2addr v0, v9

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v15, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v12, v9

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x1

    move-wide v12, v9

    :goto_6
    cmp-long v0, v12, v19

    if-gez v0, :cond_8

    mul-long v0, v12, v17

    .line 4064
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    sub-long/2addr v2, v12

    add-long/2addr v2, v9

    mul-long v2, v2, v17

    .line 4065
    iget-wide v4, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    :goto_7
    cmp-long v6, v4, v17

    if-gez v6, :cond_7

    add-long v6, v0, v4

    sub-long v9, v2, v4

    .line 4066
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    move-wide/from16 v25, v0

    float-to-double v0, v8

    invoke-virtual {v15, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v27, 0x1

    add-long v6, v6, v27

    add-long v9, v9, v27

    .line 4067
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-virtual {v15, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long/2addr v4, v0

    move-wide/from16 v0, v25

    move-wide/from16 v9, v27

    goto :goto_7

    :cond_7
    move-wide/from16 v27, v9

    const-wide/16 v0, 0x2

    add-long v12, v12, v27

    goto :goto_6

    :cond_8
    const-wide/16 v0, 0x2

    const-wide/16 v2, 0x0

    .line 4071
    :goto_8
    iget-wide v4, v14, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    div-long v6, v4, v0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    mul-long v0, v2, v17

    sub-long v6, v4, v2

    .line 4073
    rem-long/2addr v6, v4

    mul-long v6, v6, v17

    const-wide/16 v4, 0x0

    :goto_9
    cmp-long v8, v4, v17

    if-gez v8, :cond_9

    add-long v8, v0, v4

    sub-long v10, v17, v4

    .line 4076
    rem-long v10, v10, v17

    add-long/2addr v10, v6

    .line 4077
    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v15, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v8, v12

    .line 4078
    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    neg-float v8, v8

    float-to-double v8, v8

    invoke-virtual {v15, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v8, 0x2

    add-long/2addr v4, v8

    goto :goto_9

    :cond_9
    const-wide/16 v8, 0x2

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    move-wide v0, v8

    goto :goto_8

    :cond_a
    :goto_a
    const-wide/16 v12, 0x1

    .line 4082
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v15, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x0

    .line 4083
    invoke-virtual {v15, v12, v13, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    mul-long v19, v19, v17

    .line 4085
    iget-wide v3, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    add-long v3, v19, v3

    add-long v5, v19, v12

    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    float-to-double v7, v0

    invoke-virtual {v15, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 4086
    invoke-virtual {v15, v5, v6, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 4087
    iget-wide v3, v14, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    add-long v19, v19, v3

    add-long v3, v19, v12

    invoke-virtual {v15, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    return-void
.end method

.method private fillSymmetric([F)V
    .locals 21

    move-object/from16 v9, p0

    .line 3858
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v11, v0, 0x2

    .line 3860
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :goto_0
    const/4 v1, 0x0

    const/4 v14, 0x0

    if-lt v0, v13, :cond_1

    .line 3863
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v2, 0x2

    .line 3865
    :goto_1
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v4, :cond_0

    add-int v4, v3, v1

    add-int v5, v2, v1

    .line 3866
    aget v6, p1, v5

    aput v6, p1, v4

    .line 3867
    aput v14, p1, v5

    add-int/2addr v4, v13

    add-int/2addr v5, v13

    .line 3868
    aget v6, p1, v5

    aput v6, p1, v4

    .line 3869
    aput v14, p1, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3872
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v13, :cond_5

    .line 3873
    iget-boolean v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_5

    if-lt v12, v0, :cond_5

    .line 3874
    new-array v15, v0, [Ljava/util/concurrent/Future;

    .line 3875
    div-int v16, v12, v0

    .line 3876
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v17, v2, 0x2

    move v8, v1

    :goto_2
    if-ge v8, v0, :cond_4

    if-nez v8, :cond_2

    mul-int v1, v8, v16

    add-int/2addr v1, v13

    goto :goto_3

    :cond_2
    mul-int v1, v8, v16

    :goto_3
    move v3, v1

    mul-int v7, v8, v16

    add-int v4, v7, v16

    add-int/lit8 v1, v0, -0x1

    if-ne v8, v1, :cond_3

    add-int/lit8 v1, v4, 0x1

    move/from16 v18, v1

    goto :goto_4

    :cond_3
    move/from16 v18, v4

    .line 3891
    :goto_4
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_2D$46;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v5, v17

    move-object/from16 v6, p1

    move/from16 v20, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$46;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[FII)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v20

    add-int/lit8 v8, v20, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 3929
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3933
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3931
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_5
    move v0, v13

    :goto_5
    if-ge v0, v12, :cond_6

    mul-int v2, v0, v11

    .line 3940
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v0

    mul-int/2addr v3, v11

    .line 3941
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int v5, v2, v4

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v13

    .line 3942
    aget v3, p1, v3

    neg-float v3, v3

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v13

    :goto_6
    if-ge v0, v12, :cond_8

    mul-int v2, v0, v11

    .line 3947
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v13

    mul-int/2addr v3, v11

    .line 3948
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_7
    add-int/lit8 v4, v4, 0x2

    if-ge v4, v11, :cond_7

    add-int v5, v2, v4

    sub-int v6, v3, v4

    .line 3949
    aget v7, p1, v6

    aput v7, p1, v5

    add-int/2addr v5, v13

    add-int/2addr v6, v13

    .line 3950
    aget v6, p1, v6

    neg-float v6, v6

    aput v6, p1, v5

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v1

    .line 3954
    :goto_8
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v3, v2, 0x2

    if-gt v0, v3, :cond_a

    mul-int v3, v0, v11

    sub-int v4, v2, v0

    .line 3956
    rem-int/2addr v4, v2

    mul-int/2addr v4, v11

    move v2, v1

    :goto_9
    if-ge v2, v11, :cond_9

    add-int v5, v3, v2

    sub-int v6, v11, v2

    .line 3959
    rem-int/2addr v6, v11

    add-int/2addr v6, v4

    .line 3960
    aget v7, p1, v5

    aput v7, p1, v6

    add-int/2addr v6, v13

    add-int/2addr v5, v13

    .line 3961
    aget v5, p1, v5

    neg-float v5, v5

    aput v5, p1, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3965
    :cond_a
    :goto_a
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    aget v1, p1, v13

    neg-float v1, v1

    aput v1, p1, v0

    .line 3966
    aput v14, p1, v13

    mul-int/2addr v12, v11

    add-int v1, v12, v0

    add-int/lit8 v2, v12, 0x1

    .line 3968
    aget v3, p1, v2

    neg-float v3, v3

    aput v3, p1, v1

    .line 3969
    aput v14, p1, v2

    add-int/2addr v12, v0

    add-int/2addr v12, v13

    .line 3970
    aput v14, p1, v12

    return-void
.end method

.method private fillSymmetric([[F)V
    .locals 20

    move-object/from16 v9, p0

    .line 4092
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    .line 4093
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v11, v1, 0x2

    .line 4095
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-le v12, v14, :cond_3

    .line 4096
    iget-boolean v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_3

    if-lt v11, v12, :cond_3

    .line 4097
    new-array v15, v12, [Ljava/util/concurrent/Future;

    .line 4098
    div-int v16, v11, v12

    move v8, v13

    :goto_0
    if-ge v8, v12, :cond_2

    if-nez v8, :cond_0

    mul-int v1, v8, v16

    add-int/2addr v1, v14

    goto :goto_1

    :cond_0
    mul-int v1, v8, v16

    :goto_1
    move v3, v1

    mul-int v7, v8, v16

    add-int v4, v7, v16

    add-int/lit8 v1, v12, -0x1

    if-ne v8, v1, :cond_1

    add-int/lit8 v1, v4, 0x1

    move/from16 v17, v1

    goto :goto_2

    :cond_1
    move/from16 v17, v4

    .line 4113
    :goto_2
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_2D$48;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move v6, v0

    move/from16 v19, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$48;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FIII)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v19

    add-int/lit8 v8, v19, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4144
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4148
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 4146
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_3
    move v1, v14

    :goto_3
    if-ge v1, v11, :cond_4

    .line 4153
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, v1

    .line 4154
    aget-object v3, p1, v1

    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    aget-object v2, p1, v2

    aget v5, v2, v14

    aput v5, v3, v4

    add-int/2addr v4, v14

    .line 4155
    aget v2, v2, v13

    neg-float v2, v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v14

    :goto_4
    if-ge v1, v11, :cond_6

    .line 4158
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, v1

    .line 4159
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_5
    add-int/lit8 v3, v3, 0x2

    if-ge v3, v0, :cond_5

    sub-int v4, v0, v3

    .line 4161
    aget-object v5, p1, v1

    aget-object v6, p1, v2

    aget v7, v6, v4

    aput v7, v5, v3

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v4, v14

    .line 4162
    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v5, v7

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v13

    .line 4165
    :goto_6
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v3, v2, 0x2

    if-gt v1, v3, :cond_8

    sub-int v3, v2, v1

    .line 4166
    rem-int/2addr v3, v2

    move v2, v13

    :goto_7
    if-ge v2, v0, :cond_7

    sub-int v4, v0, v2

    .line 4168
    rem-int/2addr v4, v0

    .line 4169
    aget-object v5, p1, v3

    aget-object v6, p1, v1

    aget v7, v6, v2

    aput v7, v5, v4

    add-int/2addr v4, v14

    add-int/lit8 v7, v2, 0x1

    .line 4170
    aget v6, v6, v7

    neg-float v6, v6

    aput v6, v5, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4174
    :cond_8
    :goto_8
    aget-object v0, p1, v13

    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    aget v2, v0, v14

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v2, 0x0

    .line 4175
    aput v2, v0, v14

    .line 4176
    aget-object v0, p1, v11

    aget v3, v0, v14

    neg-float v3, v3

    aput v3, v0, v1

    .line 4177
    aput v2, v0, v14

    add-int/2addr v1, v14

    .line 4178
    aput v2, v0, v1

    return-void
.end method

.method private mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    .line 1699
    const-class v16, Lorg/jtransforms/fft/FloatFFT_2D;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v11, 0x2

    mul-long v17, v0, v11

    .line 1700
    div-long v19, v0, v11

    const-wide/16 v21, 0x1

    add-long v23, v19, v21

    .line 1701
    new-instance v14, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    mul-long v0, v23, v11

    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v0, v2

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 1702
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v25, v0, v11

    .line 1704
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    const-wide/16 v27, 0x0

    if-le v10, v0, :cond_c

    .line 1705
    iget-boolean v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    int-to-long v8, v10

    cmp-long v2, v0, v8

    if-ltz v2, :cond_c

    const-wide/16 v2, -0x1

    add-long v29, v19, v2

    cmp-long v2, v29, v8

    if-ltz v2, :cond_c

    .line 1706
    new-array v7, v10, [Ljava/util/concurrent/Future;

    .line 1707
    div-long v31, v0, v8

    const/16 v33, 0x0

    move/from16 v0, v33

    :goto_0
    if-ge v0, v10, :cond_1

    int-to-long v1, v0

    mul-long v3, v1, v31

    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_0

    .line 1710
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_1

    :cond_0
    add-long v1, v3, v31

    :goto_1
    move-wide v5, v1

    .line 1711
    new-instance v34, Lorg/jtransforms/fft/FloatFFT_2D$21;

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move-object/from16 v35, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$21;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v34 .. v34}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v35

    goto :goto_0

    :cond_1
    move-object/from16 v35, v7

    const/4 v7, 0x0

    .line 1722
    :try_start_0
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1726
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1724
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-wide/from16 v0, v27

    .line 1729
    :goto_3
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1730
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_3

    .line 1732
    :cond_2
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v14}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1734
    div-long v29, v29, v8

    move/from16 v0, v33

    :goto_4
    if-ge v0, v10, :cond_4

    int-to-long v1, v0

    mul-long v1, v1, v29

    add-long v3, v1, v21

    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_3

    move-wide/from16 v5, v19

    goto :goto_5

    :cond_3
    add-long v1, v3, v29

    move-wide v5, v1

    .line 1738
    :goto_5
    new-instance v31, Lorg/jtransforms/fft/FloatFFT_2D$22;

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-object v11, v7

    move-object v7, v14

    move-wide/from16 v36, v8

    move-wide/from16 v8, v25

    move v12, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$22;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v11

    move v10, v12

    move-wide/from16 v8, v36

    const-wide/16 v11, 0x2

    goto :goto_4

    :cond_4
    move-object v11, v7

    move-wide/from16 v36, v8

    move v12, v10

    .line 1756
    :try_start_1
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1760
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1758
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1763
    :goto_6
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v27

    if-nez v0, :cond_6

    .line 1764
    :goto_7
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v27, v0

    if-gez v0, :cond_5

    mul-long v0, v19, v25

    add-long v0, v0, v27

    .line 1765
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v2, v2, v27

    add-long v2, v2, v21

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v27, v27, v21

    goto :goto_7

    .line 1768
    :cond_5
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v14, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_9

    .line 1771
    :cond_6
    :goto_8
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v27, v0

    if-gez v0, :cond_7

    const-wide/16 v1, 0x2

    mul-long v3, v27, v1

    .line 1773
    iget-wide v5, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v5, v5, v27

    mul-long v7, v19, v25

    add-long/2addr v7, v3

    mul-long v3, v19, v1

    add-long/2addr v3, v5

    .line 1775
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v7, v7, v21

    add-long v5, v5, v21

    .line 1776
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v27, v27, v21

    goto :goto_8

    .line 1778
    :cond_7
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v14, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1781
    :goto_9
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    div-long v19, v0, v36

    move/from16 v0, v33

    :goto_a
    if-ge v0, v12, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v19

    add-int/lit8 v10, v12, -0x1

    if-ne v0, v10, :cond_8

    .line 1784
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_b

    :cond_8
    add-long v1, v3, v19

    :goto_b
    move-wide v5, v1

    .line 1785
    new-instance v27, Lorg/jtransforms/fft/FloatFFT_2D$23;

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-wide/from16 v9, v17

    move-object v15, v11

    move-object/from16 v11, p1

    move/from16 v38, v12

    move-object v12, v14

    move-object/from16 v39, v14

    move-wide/from16 v13, v25

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/FloatFFT_2D$23;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p1

    move-object v11, v15

    move/from16 v12, v38

    move-object/from16 v14, v39

    move-object/from16 v15, p0

    goto :goto_a

    :cond_9
    move-object v15, v11

    move/from16 v38, v12

    .line 1802
    :try_start_2
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1806
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1804
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    move/from16 v0, v33

    move/from16 v12, v38

    :goto_d
    if-ge v0, v12, :cond_b

    int-to-long v1, v0

    mul-long v1, v1, v19

    add-long v3, v1, v21

    add-int/lit8 v10, v12, -0x1

    move-object/from16 v13, p0

    move-object v14, v15

    if-ne v0, v10, :cond_a

    .line 1811
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_e

    :cond_a
    add-long v1, v3, v19

    :goto_e
    move-wide v5, v1

    .line 1812
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_2D$24;

    move-object v1, v15

    move-object/from16 v2, p0

    move-wide/from16 v7, v17

    move-wide/from16 v9, v23

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$24;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object v15, v14

    goto :goto_d

    :cond_b
    move-object/from16 v13, p0

    move-object v14, v15

    .line 1834
    :try_start_3
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 1838
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 1836
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    move-object/from16 v39, v14

    move-object v13, v15

    move-wide/from16 v0, v27

    .line 1842
    :goto_f
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 1843
    iget-object v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v3, v0

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v0, v0, v21

    goto :goto_f

    :cond_d
    move-object/from16 v5, p1

    move-wide/from16 v0, v27

    .line 1845
    :goto_10
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    .line 1846
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    move-object/from16 v4, v39

    invoke-virtual {v4, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_10

    :cond_e
    move-object/from16 v4, v39

    .line 1848
    iget-object v0, v13, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    move-wide/from16 v0, v21

    :goto_11
    cmp-long v2, v0, v19

    if-gez v2, :cond_10

    const-wide/16 v2, 0x2

    mul-long v11, v0, v2

    move-wide/from16 v6, v27

    .line 1852
    :goto_12
    iget-wide v8, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    mul-long v8, v6, v2

    .line 1854
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v6

    add-long/2addr v2, v11

    mul-long v14, v0, v25

    add-long/2addr v14, v8

    .line 1855
    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v4, v14, v15, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v14, v14, v21

    add-long v2, v2, v21

    .line 1856
    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v4, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v21

    const-wide/16 v2, 0x2

    goto :goto_12

    .line 1858
    :cond_f
    iget-object v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v6, v0, v25

    invoke-virtual {v2, v4, v6, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v0, v0, v21

    goto :goto_11

    .line 1861
    :cond_10
    iget-wide v0, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v27

    if-nez v0, :cond_12

    move-wide/from16 v0, v27

    .line 1862
    :goto_13
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_11

    mul-long v2, v19, v25

    add-long/2addr v2, v0

    .line 1863
    iget-wide v6, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v6, v0

    add-long v6, v6, v21

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_13

    .line 1866
    :cond_11
    iget-object v0, v13, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v4, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_15

    :cond_12
    move-wide/from16 v0, v27

    .line 1869
    :goto_14
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const-wide/16 v2, 0x2

    mul-long v11, v0, v2

    .line 1871
    iget-wide v6, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v6, v0

    mul-long v8, v19, v25

    add-long/2addr v8, v11

    mul-long v11, v19, v2

    add-long/2addr v11, v6

    .line 1873
    invoke-virtual {v5, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v4, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v6, v6, v21

    .line 1874
    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v4, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_14

    .line 1876
    :cond_13
    iget-object v0, v13, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v4, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    :goto_15
    move-wide/from16 v0, v27

    .line 1879
    :goto_16
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_15

    const-wide/16 v2, 0x2

    mul-long v11, v0, v2

    move-wide/from16 v6, v27

    :goto_17
    cmp-long v8, v6, v23

    if-gez v8, :cond_14

    mul-long v8, v6, v2

    mul-long v2, v0, v17

    add-long/2addr v2, v8

    mul-long v8, v6, v25

    add-long/2addr v8, v11

    .line 1884
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    float-to-double v14, v10

    invoke-virtual {v5, v2, v3, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 1885
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v5, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v21

    const-wide/16 v2, 0x2

    goto :goto_17

    :cond_14
    add-long v0, v0, v21

    goto :goto_16

    :cond_15
    move-wide/from16 v0, v21

    .line 1890
    :goto_18
    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    mul-long v6, v0, v17

    sub-long/2addr v2, v0

    add-long v2, v2, v21

    mul-long v2, v2, v17

    move-wide/from16 v8, v23

    .line 1893
    :goto_19
    iget-wide v10, v13, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v4, v8, v10

    if-gez v4, :cond_16

    const-wide/16 v14, 0x2

    mul-long v12, v8, v14

    sub-long/2addr v10, v8

    mul-long/2addr v10, v14

    .line 1896
    invoke-virtual {v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v14, v4

    invoke-virtual {v5, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v14, v12, v21

    add-long v10, v10, v21

    .line 1897
    invoke-virtual {v5, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    float-to-double v10, v4

    invoke-virtual {v5, v14, v15, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v6, v12

    sub-long v12, v2, v12

    .line 1900
    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v14, v4

    invoke-virtual {v5, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 1901
    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    float-to-double v12, v4

    invoke-virtual {v5, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    move-object/from16 v13, p0

    goto :goto_19

    :cond_16
    add-long v0, v0, v21

    move-object/from16 v13, p0

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private mixedRadixRealForwardFull([F)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1490
    const-class v11, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v7, 0x2

    .line 1491
    div-int/lit8 v8, v0, 0x2

    add-int/lit8 v13, v8, 0x1

    .line 1492
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v7

    new-array v1, v7, [I

    const/4 v14, 0x1

    aput v0, v1, v14

    const/4 v15, 0x0

    aput v13, v1, v15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[F

    .line 1494
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v14, :cond_c

    .line 1495
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v1, v8, -0x1

    if-lt v1, v6, :cond_c

    .line 1496
    new-array v5, v6, [Ljava/util/concurrent/Future;

    .line 1497
    div-int/2addr v0, v6

    move v2, v15

    :goto_0
    if-ge v2, v6, :cond_1

    mul-int v3, v2, v0

    add-int/lit8 v4, v6, -0x1

    if-ne v2, v4, :cond_0

    .line 1500
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v4, v3, v0

    .line 1501
    :goto_1
    new-instance v7, Lorg/jtransforms/fft/FloatFFT_2D$17;

    invoke-direct {v7, v9, v3, v4, v10}, Lorg/jtransforms/fft/FloatFFT_2D$17;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[F)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1512
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1516
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1514
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v15

    .line 1519
    :goto_3
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_2

    .line 1520
    aget-object v2, v16, v15

    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    aget v3, v10, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1522
    :cond_2
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v16, v15

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    .line 1524
    div-int v0, v1, v6

    move v4, v15

    :goto_4
    if-ge v4, v6, :cond_4

    mul-int v1, v4, v0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v6, -0x1

    if-ne v4, v1, :cond_3

    move/from16 v18, v8

    goto :goto_5

    :cond_3
    add-int v1, v3, v0

    move/from16 v18, v1

    .line 1528
    :goto_5
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_2D$18;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move v15, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$18;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F[F)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v20

    add-int/lit8 v4, v20, 0x1

    move v6, v15

    move-object/from16 v5, v18

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v18, v5

    move v15, v6

    .line 1546
    :try_start_1
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1550
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1548
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1553
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1554
    :goto_7
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1555
    aget-object v1, v16, v8

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v14

    aget v2, v10, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1558
    :cond_5
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v8

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1561
    :goto_8
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 1563
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 1565
    aget-object v3, v16, v8

    mul-int/lit8 v4, v8, 0x2

    add-int/2addr v4, v2

    aget v4, v10, v4

    aput v4, v3, v1

    add-int/2addr v1, v14

    add-int/2addr v2, v14

    .line 1566
    aget v2, v10, v2

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1568
    :cond_7
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v8

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 1571
    :goto_9
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v17, v0, v15

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v15, :cond_9

    mul-int v3, v0, v17

    add-int/lit8 v6, v15, -0x1

    if-ne v0, v6, :cond_8

    .line 1574
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v17

    :goto_b
    move v4, v1

    .line 1575
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_2D$19;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v13

    move v6, v12

    move-object v8, v7

    move-object/from16 v7, p1

    move-object v14, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$19;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[F[[F)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v14

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    move-object v14, v7

    .line 1592
    :try_start_2
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1596
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1594
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v15, :cond_b

    mul-int v1, v0, v17

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v6, v15, -0x1

    if-ne v0, v6, :cond_a

    .line 1601
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v17

    :goto_e
    move v4, v1

    .line 1602
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_2D$20;

    move-object v1, v8

    move-object/from16 v2, p0

    move v5, v12

    move v6, v13

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$20;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1624
    :cond_b
    :try_start_3
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 1628
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 1626
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 1632
    :goto_f
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 1633
    iget-object v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v10, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    .line 1635
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    const/4 v1, 0x0

    .line 1636
    aget-object v2, v16, v1

    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    aget v3, v10, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    .line 1638
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v16, v1

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    const/4 v0, 0x1

    :goto_11
    if-ge v0, v8, :cond_10

    mul-int/lit8 v2, v0, 0x2

    move v3, v1

    .line 1642
    :goto_12
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v4, :cond_f

    mul-int/lit8 v4, v3, 0x2

    .line 1644
    iget v5, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 1645
    aget-object v6, v16, v0

    aget v7, v10, v5

    aput v7, v6, v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    add-int/2addr v5, v7

    .line 1646
    aget v5, v10, v5

    aput v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1648
    :cond_f
    iget-object v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v3, v16, v0

    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1651
    :cond_10
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_12

    move v0, v1

    .line 1652
    :goto_13
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_11

    .line 1653
    aget-object v2, v16, v8

    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v10, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1656
    :cond_11
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v16, v8

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    goto :goto_15

    :cond_12
    move v0, v1

    .line 1659
    :goto_14
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_13

    mul-int/lit8 v2, v0, 0x2

    .line 1661
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    .line 1663
    aget-object v4, v16, v8

    mul-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v3

    aget v5, v10, v5

    aput v5, v4, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    .line 1664
    aget v3, v10, v3

    aput v3, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1666
    :cond_13
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v16, v8

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    :goto_15
    move v0, v1

    .line 1669
    :goto_16
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v2, v0, 0x2

    move v3, v1

    :goto_17
    if-ge v3, v13, :cond_14

    mul-int/lit8 v4, v3, 0x2

    mul-int v5, v0, v12

    add-int/2addr v5, v4

    .line 1674
    aget-object v4, v16, v3

    aget v6, v4, v2

    aput v6, v10, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v14, v2, 0x1

    .line 1675
    aget v4, v4, v14

    aput v4, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 1680
    :goto_18
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v0, :cond_17

    mul-int v1, v2, v12

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    mul-int/2addr v0, v12

    move v3, v13

    .line 1683
    :goto_19
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v3, v4, :cond_16

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v3

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    .line 1686
    aget v7, v10, v4

    aput v7, v10, v5

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 1687
    aget v4, v10, v4

    neg-float v4, v4

    aput v4, v10, v7

    add-int v4, v1, v5

    sub-int v5, v0, v5

    .line 1690
    aget v7, v10, v5

    aput v7, v10, v4

    add-int/2addr v4, v8

    add-int/2addr v5, v8

    .line 1691
    aget v5, v10, v5

    neg-float v5, v5

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_16
    const/4 v6, 0x2

    const/4 v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private mixedRadixRealForwardFull([[F)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1291
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v7, 0x2

    div-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v11, 0x1

    .line 1292
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v7

    new-array v1, v7, [I

    const/4 v13, 0x1

    aput v0, v1, v13

    const/4 v14, 0x0

    aput v12, v1, v14

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[F

    .line 1294
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v13, :cond_c

    .line 1295
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v1, v11, -0x1

    if-lt v1, v6, :cond_c

    .line 1296
    new-array v5, v6, [Ljava/util/concurrent/Future;

    .line 1297
    div-int/2addr v0, v6

    move v2, v14

    :goto_0
    if-ge v2, v6, :cond_1

    mul-int v3, v2, v0

    add-int/lit8 v4, v6, -0x1

    if-ne v2, v4, :cond_0

    .line 1300
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v4, v3, v0

    .line 1301
    :goto_1
    new-instance v7, Lorg/jtransforms/fft/FloatFFT_2D$13;

    invoke-direct {v7, v8, v3, v4, v9}, Lorg/jtransforms/fft/FloatFFT_2D$13;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1312
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1316
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1314
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v14

    .line 1319
    :goto_3
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_2

    .line 1320
    aget-object v2, v15, v14

    aget-object v3, v9, v0

    aget v3, v3, v14

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v15, v14

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    .line 1324
    div-int v0, v1, v6

    move v4, v14

    :goto_4
    if-ge v4, v6, :cond_4

    mul-int v1, v4, v0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v6, -0x1

    if-ne v4, v1, :cond_3

    move/from16 v17, v11

    goto :goto_5

    :cond_3
    add-int v1, v3, v0

    move/from16 v17, v1

    .line 1328
    :goto_5
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_2D$14;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object v5, v15

    move v14, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$14;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F[[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v19

    add-int/lit8 v4, v19, 0x1

    move v6, v14

    move-object/from16 v5, v17

    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    move v14, v6

    .line 1345
    :try_start_1
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1349
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1347
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1353
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1354
    aget-object v1, v15, v11

    aget-object v2, v9, v0

    aget v2, v2, v13

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1357
    :cond_5
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1360
    :goto_8
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 1363
    aget-object v2, v15, v11

    aget-object v3, v9, v0

    mul-int/lit8 v4, v11, 0x2

    aget v4, v3, v4

    aput v4, v2, v1

    add-int/2addr v1, v13

    .line 1364
    aget v3, v3, v13

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1366
    :cond_7
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 1370
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v11, v0, v14

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v14, :cond_9

    mul-int v3, v0, v11

    add-int/lit8 v6, v14, -0x1

    if-ne v0, v6, :cond_8

    .line 1373
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v11

    :goto_b
    move v4, v1

    .line 1374
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_2D$15;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move-object/from16 v6, p1

    move-object v13, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$15;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[[F[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v13

    const/4 v13, 0x1

    goto :goto_a

    :cond_9
    move-object v13, v7

    .line 1390
    :try_start_2
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1394
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1392
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v14, :cond_b

    mul-int v1, v0, v11

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v6, v14, -0x1

    if-ne v0, v6, :cond_a

    .line 1399
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v11

    :goto_e
    move v4, v1

    .line 1400
    new-instance v7, Lorg/jtransforms/fft/FloatFFT_2D$16;

    move-object v1, v7

    move-object/from16 v2, p0

    move v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$16;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[[F)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1419
    :cond_b
    :try_start_3
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 1423
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 1421
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 1427
    :goto_f
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 1428
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v9, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    .line 1431
    :goto_10
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    const/4 v1, 0x0

    .line 1432
    aget-object v2, v15, v1

    aget-object v3, v9, v0

    aget v3, v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    .line 1434
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v15, v1

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    const/4 v0, 0x1

    :goto_11
    if-ge v0, v11, :cond_10

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 1438
    :goto_12
    iget v3, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_f

    mul-int/lit8 v3, v2, 0x2

    .line 1440
    aget-object v4, v15, v0

    aget-object v5, v9, v2

    aget v6, v5, v1

    aput v6, v4, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/lit8 v13, v1, 0x1

    .line 1441
    aget v5, v5, v13

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1443
    :cond_f
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v15, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1446
    :cond_10
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_12

    const/4 v1, 0x0

    .line 1447
    :goto_13
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_11

    .line 1448
    aget-object v0, v15, v11

    aget-object v2, v9, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1451
    :cond_11
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    goto :goto_15

    :cond_12
    const/4 v1, 0x0

    .line 1454
    :goto_14
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_13

    mul-int/lit8 v0, v1, 0x2

    .line 1457
    aget-object v2, v15, v11

    aget-object v3, v9, v1

    mul-int/lit8 v4, v11, 0x2

    aget v4, v3, v4

    aput v4, v2, v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 1458
    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1460
    :cond_13
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    :goto_15
    const/4 v1, 0x0

    .line 1464
    :goto_16
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_15

    mul-int/lit8 v0, v1, 0x2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v12, :cond_14

    mul-int/lit8 v3, v2, 0x2

    .line 1468
    aget-object v4, v9, v1

    aget-object v5, v15, v2

    aget v6, v5, v0

    aput v6, v4, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/lit8 v13, v0, 0x1

    .line 1469
    aget v5, v5, v13

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_14
    const/4 v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v6, 0x1

    move v13, v6

    .line 1474
    :goto_18
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v13, v0, :cond_17

    sub-int/2addr v0, v13

    move v1, v12

    .line 1476
    :goto_19
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    const/4 v5, 0x0

    .line 1479
    aget-object v6, v9, v5

    aget v7, v6, v2

    aput v7, v6, v3

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 1480
    aget v11, v6, v10

    neg-float v11, v11

    aput v11, v6, v7

    .line 1481
    aget-object v6, v9, v13

    aget-object v11, v9, v0

    aget v2, v11, v2

    aput v2, v6, v3

    .line 1482
    aget v2, v11, v10

    neg-float v2, v2

    aput v2, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_16
    const/4 v4, 0x2

    const/4 v5, 0x0

    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 42

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v12, p2

    .line 2316
    const-class v16, Lorg/jtransforms/fft/FloatFFT_2D;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const-wide/16 v17, 0x2

    mul-long v19, v0, v17

    .line 2317
    div-long v21, v0, v17

    const-wide/16 v23, 0x1

    add-long v25, v21, v23

    .line 2318
    new-instance v14, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    mul-long v0, v25, v17

    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v0, v2

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 2319
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long v27, v0, v17

    .line 2321
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    const-wide/16 v29, 0x0

    if-le v11, v0, :cond_c

    .line 2322
    iget-boolean v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    int-to-long v9, v11

    cmp-long v2, v0, v9

    if-ltz v2, :cond_c

    const-wide/16 v2, -0x1

    add-long v31, v21, v2

    cmp-long v2, v31, v9

    if-ltz v2, :cond_c

    .line 2323
    new-array v8, v11, [Ljava/util/concurrent/Future;

    .line 2324
    div-long v33, v0, v9

    const/16 v35, 0x0

    move/from16 v0, v35

    :goto_0
    if-ge v0, v11, :cond_1

    int-to-long v1, v0

    mul-long v3, v1, v33

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_0

    .line 2327
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_1

    :cond_0
    add-long v1, v3, v33

    :goto_1
    move-wide v5, v1

    .line 2328
    new-instance v36, Lorg/jtransforms/fft/FloatFFT_2D$33;

    move-object/from16 v1, v36

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v37, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$33;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v36 .. v36}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v37

    goto :goto_0

    :cond_1
    move-object/from16 v37, v8

    const/4 v8, 0x0

    .line 2339
    :try_start_0
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2343
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2341
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-wide/from16 v0, v29

    .line 2346
    :goto_3
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2347
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_3

    .line 2349
    :cond_2
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v14, v12}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 2351
    div-long v31, v31, v9

    move/from16 v0, v35

    :goto_4
    if-ge v0, v11, :cond_4

    int-to-long v1, v0

    mul-long v1, v1, v31

    add-long v3, v1, v23

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_3

    move-wide/from16 v5, v21

    goto :goto_5

    :cond_3
    add-long v1, v3, v31

    move-wide v5, v1

    .line 2355
    :goto_5
    new-instance v33, Lorg/jtransforms/fft/FloatFFT_2D$34;

    move-object/from16 v1, v33

    move-object/from16 v2, p0

    move-object v7, v14

    move-wide/from16 v38, v9

    move-object v10, v8

    move-wide/from16 v8, v27

    move-object v12, v10

    move-object/from16 v10, p1

    move/from16 v40, v11

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$34;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v33 .. v33}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v12

    move-wide/from16 v9, v38

    move/from16 v11, v40

    move/from16 v12, p2

    goto :goto_4

    :cond_4
    move-object v12, v8

    move-wide/from16 v38, v9

    move/from16 v40, v11

    .line 2373
    :try_start_1
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2377
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2375
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2380
    :goto_6
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    rem-long v0, v0, v17

    cmp-long v0, v0, v29

    if-nez v0, :cond_6

    .line 2381
    :goto_7
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v29, v0

    if-gez v0, :cond_5

    mul-long v0, v21, v27

    add-long v0, v0, v29

    .line 2382
    iget-wide v2, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v2, v2, v29

    add-long v2, v2, v23

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v29, v29, v23

    goto :goto_7

    .line 2385
    :cond_5
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v21, v27

    move/from16 v3, p2

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_9

    :cond_6
    move/from16 v3, p2

    .line 2388
    :goto_8
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v29, v0

    if-gez v0, :cond_7

    mul-long v0, v29, v17

    .line 2390
    iget-wide v4, v15, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v4, v4, v29

    mul-long v6, v21, v27

    add-long/2addr v6, v0

    mul-long v0, v21, v17

    add-long/2addr v0, v4

    .line 2392
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v14, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v23

    add-long v4, v4, v23

    .line 2393
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v14, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v29, v29, v23

    goto :goto_8

    .line 2395
    :cond_7
    iget-object v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v1, v21, v27

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 2398
    :goto_9
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    div-long v17, v0, v38

    move/from16 v0, v35

    move/from16 v11, v40

    :goto_a
    if-ge v0, v11, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_8

    .line 2401
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_b

    :cond_8
    add-long v1, v3, v17

    :goto_b
    move-wide v5, v1

    .line 2402
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_2D$35;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v19

    move v15, v11

    move-object/from16 v11, p1

    move/from16 v40, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v41, v14

    move-wide/from16 v13, v27

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/FloatFFT_2D$35;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p1

    move-object v12, v15

    move/from16 v11, v40

    move-object/from16 v14, v41

    move-object/from16 v15, p0

    goto :goto_a

    :cond_9
    move/from16 v40, v11

    move-object v15, v12

    .line 2419
    :try_start_2
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2423
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2421
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    move/from16 v0, v35

    move/from16 v1, v40

    :goto_d
    if-ge v0, v1, :cond_b

    int-to-long v2, v0

    mul-long v2, v2, v17

    add-long v3, v2, v23

    add-int/lit8 v11, v1, -0x1

    move-object/from16 v12, p0

    move v13, v1

    if-ne v0, v11, :cond_a

    .line 2428
    iget-wide v1, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_e

    :cond_a
    add-long v1, v3, v17

    :goto_e
    move-wide v5, v1

    .line 2429
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_2D$36;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide/from16 v7, v19

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$36;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v13

    goto :goto_d

    :cond_b
    move-object/from16 v12, p0

    .line 2451
    :try_start_3
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2455
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2453
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    move v3, v12

    move-object/from16 v41, v14

    move-object v12, v15

    move-wide/from16 v0, v29

    .line 2458
    :goto_f
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_d

    .line 2459
    iget-object v2, v12, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v4, v0

    move-object/from16 v6, p1

    invoke-virtual {v2, v6, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v0, v0, v23

    goto :goto_f

    :cond_d
    move-object/from16 v6, p1

    move-wide/from16 v0, v29

    .line 2461
    :goto_10
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_e

    .line 2462
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v4, v0

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v4, v2

    move-object/from16 v2, v41

    invoke-virtual {v2, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_10

    :cond_e
    move-object/from16 v2, v41

    .line 2464
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    move-wide/from16 v0, v23

    :goto_11
    cmp-long v4, v0, v21

    if-gez v4, :cond_10

    mul-long v4, v0, v17

    move-wide/from16 v7, v29

    .line 2468
    :goto_12
    iget-wide v9, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_f

    mul-long v9, v7, v17

    .line 2470
    iget-wide v13, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v13, v7

    add-long/2addr v13, v4

    mul-long v15, v0, v27

    add-long/2addr v9, v15

    .line 2471
    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    move-wide v15, v4

    float-to-double v4, v11

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v13, v13, v23

    .line 2472
    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v7, v7, v23

    move-wide v4, v15

    goto :goto_12

    .line 2474
    :cond_f
    iget-object v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v7, v0, v27

    invoke-virtual {v4, v2, v7, v8, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v0, v0, v23

    goto :goto_11

    .line 2477
    :cond_10
    iget-wide v0, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    rem-long v0, v0, v17

    cmp-long v0, v0, v29

    if-nez v0, :cond_12

    move-wide/from16 v0, v29

    .line 2478
    :goto_13
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_11

    mul-long v4, v21, v27

    add-long/2addr v4, v0

    .line 2479
    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    add-long v7, v7, v23

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v2, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_13

    .line 2482
    :cond_11
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v4, v21, v27

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_15

    :cond_12
    move-wide/from16 v0, v29

    .line 2485
    :goto_14
    iget-wide v4, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    mul-long v4, v0, v17

    .line 2487
    iget-wide v7, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    mul-long v9, v21, v27

    add-long/2addr v9, v4

    mul-long v4, v21, v17

    add-long/2addr v4, v7

    .line 2489
    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v7, v7, v23

    .line 2490
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_14

    .line 2492
    :cond_13
    iget-object v0, v12, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v4, v21, v27

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :goto_15
    move-wide/from16 v0, v29

    .line 2495
    :goto_16
    iget-wide v3, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_15

    mul-long v3, v0, v17

    move-wide/from16 v7, v29

    :goto_17
    cmp-long v5, v7, v25

    if-gez v5, :cond_14

    mul-long v9, v7, v17

    mul-long v13, v0, v19

    add-long/2addr v13, v9

    mul-long v9, v7, v27

    add-long/2addr v9, v3

    .line 2500
    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide v15, v3

    float-to-double v3, v5

    invoke-virtual {v6, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v13, v13, v23

    add-long v9, v9, v23

    .line 2501
    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v6, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v7, v7, v23

    move-wide v3, v15

    goto :goto_17

    :cond_14
    add-long v0, v0, v23

    goto :goto_16

    :cond_15
    move-wide/from16 v0, v23

    .line 2506
    :goto_18
    iget-wide v2, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    mul-long v4, v0, v19

    sub-long/2addr v2, v0

    add-long v2, v2, v23

    mul-long v2, v2, v19

    move-wide/from16 v7, v25

    .line 2509
    :goto_19
    iget-wide v9, v12, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_16

    mul-long v13, v7, v17

    sub-long/2addr v9, v7

    mul-long v9, v9, v17

    .line 2512
    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v6, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v11, v13, v23

    add-long v9, v9, v23

    .line 2513
    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    neg-float v9, v9

    float-to-double v9, v9

    invoke-virtual {v6, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v9, v4, v13

    sub-long v11, v2, v13

    .line 2516
    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v6, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v11, v11, v23

    .line 2517
    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    neg-float v11, v11

    float-to-double v11, v11

    invoke-virtual {v6, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v7, v7, v23

    move-object/from16 v12, p0

    goto :goto_19

    :cond_16
    add-long v0, v0, v23

    move-object/from16 v12, p0

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private mixedRadixRealInverseFull([FZ)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v8, p2

    .line 2108
    const-class v11, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v13, 0x2

    .line 2109
    div-int/lit8 v14, v0, 0x2

    add-int/lit8 v15, v14, 0x1

    .line 2110
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v13

    new-array v1, v13, [I

    const/4 v7, 0x1

    aput v0, v1, v7

    const/16 v16, 0x0

    aput v15, v1, v16

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[F

    .line 2112
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v7, :cond_c

    .line 2113
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v5, v14, -0x1

    if-lt v5, v6, :cond_c

    .line 2114
    new-array v4, v6, [Ljava/util/concurrent/Future;

    .line 2115
    div-int/2addr v0, v6

    move/from16 v3, v16

    :goto_0
    if-ge v3, v6, :cond_1

    mul-int v18, v3, v0

    add-int/lit8 v1, v6, -0x1

    if-ne v3, v1, :cond_0

    .line 2118
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v1, v18, v0

    :goto_1
    move/from16 v19, v1

    .line 2119
    new-instance v20, Lorg/jtransforms/fft/FloatFFT_2D$29;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v21, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move-object/from16 v5, p1

    move v13, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$29;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[FZ)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v21

    add-int/lit8 v3, v21, 0x1

    move v6, v13

    move-object/from16 v4, v18

    move/from16 v5, v19

    const/4 v13, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v5

    move v13, v6

    const/4 v6, 0x0

    .line 2130
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2134
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2132
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move/from16 v0, v16

    .line 2137
    :goto_3
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_2

    .line 2138
    aget-object v1, v17, v16

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    aget v2, v10, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2140
    :cond_2
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v16

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    .line 2142
    div-int v0, v19, v13

    move/from16 v5, v16

    :goto_4
    if-ge v5, v13, :cond_4

    mul-int v1, v5, v0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v13, -0x1

    if-ne v5, v1, :cond_3

    move v4, v14

    goto :goto_5

    :cond_3
    add-int v1, v3, v0

    move v4, v1

    .line 2146
    :goto_5
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_2D$30;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v20, v5

    move-object/from16 v5, v17

    move/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, p1

    move/from16 v22, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$30;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F[FZ)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v20

    add-int/lit8 v5, v20, 0x1

    move-object v6, v12

    move/from16 v12, v21

    move/from16 v7, v22

    goto :goto_4

    :cond_4
    move/from16 v22, v7

    move/from16 v21, v12

    move-object v12, v6

    .line 2164
    :try_start_1
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2168
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2166
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2171
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    move/from16 v0, v16

    .line 2172
    :goto_7
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 2173
    aget-object v1, v17, v14

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget v2, v10, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2176
    :cond_5
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    goto :goto_9

    :cond_6
    move/from16 v0, v16

    .line 2179
    :goto_8
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 2181
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 2183
    aget-object v3, v17, v14

    mul-int/lit8 v4, v14, 0x2

    add-int/2addr v4, v2

    aget v4, v10, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2184
    aget v2, v10, v2

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2186
    :cond_7
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    .line 2189
    :goto_9
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v14, v0, v13

    move/from16 v0, v16

    :goto_a
    if-ge v0, v13, :cond_9

    mul-int v3, v0, v14

    add-int/lit8 v6, v13, -0x1

    if-ne v0, v6, :cond_8

    .line 2192
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v14

    :goto_b
    move v4, v1

    .line 2193
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_2D$31;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v15

    move/from16 v6, v21

    move-object/from16 v7, p1

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D$31;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[F[[F)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2210
    :cond_9
    :try_start_2
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2214
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2212
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    move/from16 v0, v16

    :goto_d
    if-ge v0, v13, :cond_b

    mul-int v1, v0, v14

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v6, v13, -0x1

    if-ne v0, v6, :cond_a

    .line 2219
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v14

    :goto_e
    move v4, v1

    .line 2220
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_2D$32;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v21

    move v6, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$32;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2242
    :cond_b
    :try_start_3
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2246
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2244
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    move/from16 v22, v7

    move/from16 v21, v12

    move/from16 v0, v16

    .line 2249
    :goto_f
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 2250
    iget-object v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v10, v2, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    move/from16 v0, v16

    .line 2252
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    .line 2253
    aget-object v1, v17, v16

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    aget v2, v10, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2255
    :cond_e
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v16

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    move/from16 v7, v22

    :goto_11
    if-ge v7, v14, :cond_10

    mul-int/lit8 v0, v7, 0x2

    move/from16 v1, v16

    .line 2259
    :goto_12
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v2, :cond_f

    mul-int/lit8 v2, v1, 0x2

    .line 2261
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 2262
    aget-object v4, v17, v7

    aget v5, v10, v3

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2263
    aget v3, v10, v3

    aput v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2265
    :cond_f
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v7

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 2268
    :cond_10
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_12

    move/from16 v0, v16

    .line 2269
    :goto_13
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_11

    .line 2270
    aget-object v1, v17, v14

    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget v2, v10, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2273
    :cond_11
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    goto :goto_15

    :cond_12
    move/from16 v0, v16

    .line 2276
    :goto_14
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_13

    mul-int/lit8 v1, v0, 0x2

    .line 2278
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 2280
    aget-object v3, v17, v14

    mul-int/lit8 v4, v14, 0x2

    add-int/2addr v4, v2

    aget v4, v10, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2281
    aget v2, v10, v2

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2283
    :cond_13
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    :goto_15
    move/from16 v0, v16

    .line 2286
    :goto_16
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_15

    mul-int/lit8 v1, v0, 0x2

    move/from16 v2, v16

    :goto_17
    if-ge v2, v15, :cond_14

    mul-int/lit8 v3, v2, 0x2

    mul-int v12, v0, v21

    add-int/2addr v12, v3

    .line 2291
    aget-object v3, v17, v2

    aget v4, v3, v1

    aput v4, v10, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 2292
    aget v3, v3, v7

    aput v3, v10, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_15
    move/from16 v7, v22

    .line 2297
    :goto_18
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v7, v0, :cond_17

    mul-int v12, v7, v21

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v21

    move v1, v15

    .line 2300
    :goto_19
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    .line 2303
    aget v5, v10, v2

    aput v5, v10, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2304
    aget v2, v10, v2

    neg-float v2, v2

    aput v2, v10, v5

    add-int v2, v12, v3

    sub-int v3, v0, v3

    .line 2307
    aget v5, v10, v3

    aput v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2308
    aget v3, v10, v3

    neg-float v3, v3

    aput v3, v10, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_16
    const/4 v4, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private mixedRadixRealInverseFull([[FZ)V
    .locals 22

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 1909
    const-class v10, Lorg/jtransforms/fft/FloatFFT_2D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v11, 0x2

    div-int/lit8 v12, v0, 0x2

    add-int/lit8 v13, v12, 0x1

    .line 1910
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v11

    new-array v1, v11, [I

    const/4 v14, 0x1

    aput v0, v1, v14

    const/4 v15, 0x0

    aput v13, v1, v15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[F

    .line 1912
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v7

    if-le v7, v14, :cond_c

    .line 1913
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v7, :cond_c

    add-int/lit8 v6, v12, -0x1

    if-lt v6, v7, :cond_c

    .line 1914
    new-array v5, v7, [Ljava/util/concurrent/Future;

    .line 1915
    div-int/2addr v0, v7

    move v4, v15

    :goto_0
    if-ge v4, v7, :cond_1

    mul-int v3, v4, v0

    add-int/lit8 v1, v7, -0x1

    if-ne v4, v1, :cond_0

    .line 1918
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v1, v3, v0

    :goto_1
    move/from16 v17, v1

    .line 1919
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_2D$25;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move/from16 v20, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$25;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v19

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v5, v17

    move/from16 v6, v20

    goto :goto_0

    :cond_1
    move-object/from16 v17, v5

    move/from16 v20, v6

    const/4 v6, 0x0

    .line 1930
    :try_start_0
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1934
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1932
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v15

    .line 1937
    :goto_3
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_2

    .line 1938
    aget-object v1, v16, v15

    aget-object v2, p1, v0

    aget v2, v2, v15

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1940
    :cond_2
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v15

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    .line 1942
    div-int v0, v20, v7

    move v5, v15

    :goto_4
    if-ge v5, v7, :cond_4

    mul-int v1, v5, v0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v7, -0x1

    if-ne v5, v1, :cond_3

    move v4, v12

    goto :goto_5

    :cond_3
    add-int v1, v3, v0

    move v4, v1

    .line 1946
    :goto_5
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_2D$26;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v5

    move-object/from16 v5, v16

    move-object v15, v6

    move-object/from16 v6, p1

    move/from16 v21, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$26;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F[[FZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v19

    add-int/lit8 v5, v19, 0x1

    move-object v6, v15

    move/from16 v7, v21

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    move-object v15, v6

    move/from16 v21, v7

    .line 1963
    :try_start_1
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1967
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1965
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1970
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1971
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1972
    aget-object v1, v16, v12

    aget-object v2, p1, v0

    aget v2, v2, v14

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1975
    :cond_5
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1978
    :goto_8
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 1981
    aget-object v2, v16, v12

    aget-object v3, p1, v0

    mul-int/lit8 v4, v12, 0x2

    aget v4, v3, v4

    aput v4, v2, v1

    add-int/2addr v1, v14

    .line 1982
    aget v3, v3, v14

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1984
    :cond_7
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    .line 1988
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    move/from16 v9, v21

    div-int v11, v0, v9

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v9, :cond_9

    mul-int v3, v0, v11

    add-int/lit8 v7, v9, -0x1

    if-ne v0, v7, :cond_8

    .line 1991
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v11

    :goto_b
    move v4, v1

    .line 1992
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_2D$27;

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v13

    move-object/from16 v6, p1

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$27;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[[F[[F)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2008
    :cond_9
    :try_start_2
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2012
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2010
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v9, :cond_b

    mul-int v1, v0, v11

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v7, v9, -0x1

    if-ne v0, v7, :cond_a

    .line 2017
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v11

    :goto_e
    move v4, v1

    .line 2018
    new-instance v7, Lorg/jtransforms/fft/FloatFFT_2D$28;

    move-object v1, v7

    move-object/from16 v2, p0

    move v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D$28;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[[F)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2037
    :cond_b
    :try_start_3
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2041
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2039
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 2045
    :goto_f
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 2046
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v3, 0x0

    move v0, v3

    .line 2049
    :goto_10
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    .line 2050
    aget-object v1, v16, v3

    aget-object v2, p1, v0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2052
    :cond_e
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v3

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    move v0, v14

    :goto_11
    if-ge v0, v12, :cond_10

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    .line 2056
    :goto_12
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v2, :cond_f

    mul-int/lit8 v2, v3, 0x2

    .line 2058
    aget-object v4, v16, v0

    aget-object v5, p1, v3

    aget v6, v5, v1

    aput v6, v4, v2

    add-int/2addr v2, v14

    add-int/lit8 v6, v1, 0x1

    .line 2059
    aget v5, v5, v6

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2061
    :cond_f
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v16, v0

    invoke-virtual {v1, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2064
    :cond_10
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_12

    const/4 v3, 0x0

    .line 2065
    :goto_13
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v0, :cond_11

    .line 2066
    aget-object v0, v16, v12

    aget-object v1, p1, v3

    aget v1, v1, v14

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2069
    :cond_11
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    goto :goto_15

    :cond_12
    const/4 v3, 0x0

    .line 2072
    :goto_14
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v0, :cond_13

    mul-int/lit8 v0, v3, 0x2

    .line 2075
    aget-object v1, v16, v12

    aget-object v2, p1, v3

    mul-int/lit8 v4, v12, 0x2

    aget v4, v2, v4

    aput v4, v1, v0

    add-int/2addr v0, v14

    .line 2076
    aget v2, v2, v14

    aput v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2078
    :cond_13
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    :goto_15
    const/4 v3, 0x0

    .line 2082
    :goto_16
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v0, :cond_15

    mul-int/lit8 v0, v3, 0x2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v13, :cond_14

    mul-int/lit8 v2, v1, 0x2

    .line 2086
    aget-object v4, p1, v3

    aget-object v5, v16, v1

    aget v6, v5, v0

    aput v6, v4, v2

    add-int/2addr v2, v14

    add-int/lit8 v6, v0, 0x1

    .line 2087
    aget v5, v5, v6

    aput v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2092
    :cond_15
    :goto_18
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v14, v0, :cond_17

    sub-int/2addr v0, v14

    move v1, v13

    .line 2094
    :goto_19
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    mul-int/2addr v2, v11

    const/4 v4, 0x0

    .line 2097
    aget-object v5, p1, v4

    aget v6, v5, v2

    aput v6, v5, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 2098
    aget v9, v5, v7

    neg-float v9, v9

    aput v9, v5, v6

    .line 2099
    aget-object v5, p1, v14

    aget-object v9, p1, v0

    aget v2, v9, v2

    aput v2, v5, v3

    .line 2100
    aget v2, v9, v7

    neg-float v2, v2

    aput v2, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_16
    const/4 v4, 0x0

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    :cond_17
    :goto_1a
    return-void
.end method

.method private rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2561
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x1

    if-gez p1, :cond_0

    move-wide v6, v4

    :goto_0
    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    .line 2564
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    sub-long/2addr v8, v6

    .line 2565
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v12, v6, v10

    mul-long/2addr v8, v10

    .line 2567
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-float/2addr v10, v11

    .line 2568
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v11, v14

    float-to-double v14, v11

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    float-to-double v10, v10

    .line 2569
    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v8, v4

    .line 2570
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    add-long/2addr v12, v4

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-float/2addr v10, v11

    .line 2571
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v11, v14

    float-to-double v14, v11

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    float-to-double v10, v10

    .line 2572
    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v6, v4

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_1
    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    .line 2576
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    sub-long/2addr v8, v6

    .line 2577
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v12, v6, v10

    mul-long/2addr v8, v10

    .line 2579
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    float-to-double v14, v10

    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 2580
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float/2addr v10, v14

    float-to-double v14, v10

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v8, v4

    add-long/2addr v12, v4

    .line 2581
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v10, v14

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 2582
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float/2addr v10, v8

    float-to-double v8, v10

    invoke-virtual {v1, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v6, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rdft2d_sub(I[F)V
    .locals 7

    .line 2529
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    if-gez p1, :cond_0

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2532
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, p1

    .line 2533
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int v4, p1, v3

    mul-int/2addr v2, v3

    .line 2535
    aget v3, p2, v4

    aget v5, p2, v2

    sub-float v6, v3, v5

    add-float/2addr v3, v5

    .line 2536
    aput v3, p2, v4

    .line 2537
    aput v6, p2, v2

    add-int/2addr v2, v1

    .line 2538
    aget v3, p2, v2

    add-int/2addr v4, v1

    aget v5, p2, v4

    sub-float v6, v3, v5

    add-float/2addr v5, v3

    .line 2539
    aput v5, p2, v4

    .line 2540
    aput v6, p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 2544
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, p1

    .line 2545
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int v4, p1, v3

    mul-int/2addr v2, v3

    .line 2547
    aget v3, p2, v4

    aget v5, p2, v2

    sub-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    aput v3, p2, v2

    .line 2548
    aget v6, p2, v4

    sub-float/2addr v6, v3

    aput v6, p2, v4

    add-int/2addr v2, v1

    add-int/2addr v4, v1

    .line 2549
    aget v3, p2, v4

    aget v6, p2, v2

    add-float/2addr v3, v6

    mul-float/2addr v3, v5

    aput v3, p2, v2

    .line 2550
    aget v2, p2, v4

    sub-float/2addr v2, v3

    aput v2, p2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rdft2d_sub(I[[F)V
    .locals 8

    .line 2592
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez p1, :cond_0

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2595
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, p1

    .line 2596
    aget-object v4, p2, p1

    aget v5, v4, v2

    aget-object v3, p2, v3

    aget v6, v3, v2

    sub-float v7, v5, v6

    add-float/2addr v5, v6

    .line 2597
    aput v5, v4, v2

    .line 2598
    aput v7, v3, v2

    .line 2599
    aget v5, v3, v1

    aget v6, v4, v1

    sub-float v7, v5, v6

    add-float/2addr v6, v5

    .line 2600
    aput v6, v4, v1

    .line 2601
    aput v7, v3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 2605
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, p1

    .line 2606
    aget-object v3, p2, v3

    aget-object v4, p2, p1

    aget v5, v4, v2

    aget v6, v3, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    aput v5, v3, v2

    .line 2607
    aget v7, v4, v2

    sub-float/2addr v7, v5

    aput v7, v4, v2

    .line 2608
    aget v5, v4, v1

    aget v7, v3, v1

    add-float/2addr v5, v7

    mul-float/2addr v5, v6

    aput v5, v3, v1

    .line 2609
    aget v3, v4, v1

    sub-float/2addr v3, v5

    aput v3, v4, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private xdft2d0_subth1(II[FZ)V
    .locals 14

    .line 3081
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3083
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3086
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$37;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$37;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3113
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3117
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3115
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth1(II[[FZ)V
    .locals 14

    .line 3249
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3251
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3254
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$41;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$41;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3281
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3283
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 15

    .line 3123
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    move-object v13, p0

    iget-wide v4, v13, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v4, v0

    :goto_0
    long-to-int v0, v4

    .line 3125
    new-array v2, v0, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3128
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_2D$38;

    move-object v4, v14

    move-object v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move v9, v3

    move v10, v0

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lorg/jtransforms/fft/FloatFFT_2D$38;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JIIILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3155
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3159
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3157
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(II[FZ)V
    .locals 14

    .line 3165
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3167
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3170
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$39;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$39;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3197
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3201
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3199
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(II[[FZ)V
    .locals 14

    .line 3291
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3293
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3296
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$42;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$42;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3323
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3327
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3325
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 16

    .line 3207
    const-class v1, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object/from16 v12, p0

    iget v2, v12, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3209
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    if-ge v14, v0, :cond_1

    int-to-long v7, v14

    .line 3212
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_2D$40;

    move-object v2, v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move v9, v0

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$40;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JIJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3239
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3243
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 3241
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 228
    const-class v12, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward([F)V

    goto/16 :goto_b

    .line 231
    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 232
    iget-boolean v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const/4 v14, 0x0

    const-wide/16 v7, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    .line 233
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v0, v7

    iput-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    const/4 v0, -0x1

    if-le v13, v9, :cond_1

    .line 234
    iget-boolean v1, v10, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 235
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 236
    invoke-direct {v10, v0, v11, v9}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-long v1, v14

    .line 238
    iget-wide v3, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 239
    iget-object v3, v10, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v1, v4

    invoke-virtual {v3, v11, v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {v10, v0, v11, v9}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 243
    :goto_1
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    div-long/2addr v0, v7

    iput-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    goto/16 :goto_b

    .line 245
    :cond_3
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v15, v0, v7

    if-le v13, v9, :cond_8

    .line 246
    iget-boolean v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_8

    iget-wide v2, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    int-to-long v5, v13

    cmp-long v4, v2, v5

    if-ltz v4, :cond_8

    cmp-long v0, v0, v5

    if-ltz v0, :cond_8

    .line 247
    new-array v8, v13, [Ljava/util/concurrent/Future;

    .line 248
    div-long v17, v2, v5

    move v0, v14

    :goto_2
    if-ge v0, v13, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_4

    .line 251
    iget-wide v1, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_3

    :cond_4
    add-long v1, v3, v17

    :goto_3
    move-wide/from16 v19, v1

    .line 252
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_2D$3;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v22, v5

    move-wide/from16 v5, v19

    move-object/from16 v7, p1

    move-object/from16 v19, v8

    move-wide v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$3;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v19

    move-wide/from16 v5, v22

    goto :goto_2

    :cond_5
    move-wide/from16 v22, v5

    move-object/from16 v19, v8

    const/4 v9, 0x0

    .line 263
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 267
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 265
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    :goto_4
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    div-long v17, v0, v22

    :goto_5
    if-ge v14, v13, :cond_7

    int-to-long v0, v14

    mul-long v3, v0, v17

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_6

    .line 272
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    goto :goto_6

    :cond_6
    add-long v0, v3, v17

    :goto_6
    move-wide v5, v0

    .line 273
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_2D$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v7, v15

    move/from16 v20, v13

    move-object v13, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_2D$4;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object v9, v13

    move/from16 v13, v20

    goto :goto_5

    :cond_7
    move-object v13, v9

    .line 298
    :try_start_1
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 302
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 300
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_8
    const-wide/16 v2, 0x0

    .line 305
    :goto_7
    iget-wide v4, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_9

    .line 306
    iget-object v4, v10, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v12, v2, v15

    invoke-virtual {v4, v11, v12, v13}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long/2addr v2, v5

    goto :goto_7

    .line 308
    :cond_9
    new-instance v2, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v3, v7

    invoke-direct {v2, v3, v4, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 309
    :goto_8
    iget-wide v12, v10, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v9, v3, v12

    if-gez v9, :cond_c

    mul-long v12, v3, v7

    const-wide/16 v17, 0x0

    .line 311
    :goto_9
    iget-wide v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v17, v0

    if-gez v0, :cond_a

    mul-long v0, v17, v7

    mul-long v21, v17, v15

    add-long v7, v21, v12

    .line 314
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    move-wide/from16 v21, v3

    float-to-double v3, v9

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    add-long/2addr v7, v5

    .line 315
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v17, v17, v5

    move-wide/from16 v3, v21

    const-wide/16 v7, 0x2

    goto :goto_9

    :cond_a
    move-wide/from16 v21, v3

    .line 317
    iget-object v0, v10, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v0, 0x0

    .line 318
    :goto_a
    iget-wide v3, v10, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_b

    const-wide/16 v3, 0x2

    mul-long v7, v0, v3

    mul-long v17, v0, v15

    add-long v3, v17, v12

    .line 321
    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v11, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v3, v5

    add-long/2addr v7, v5

    .line 322
    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-object/from16 v10, p0

    goto :goto_a

    :cond_b
    add-long v3, v21, v5

    move-object/from16 v10, p0

    const-wide/16 v7, 0x2

    goto :goto_8

    :cond_c
    :goto_b
    return-void
.end method

.method public complexForward([F)V
    .locals 14

    .line 114
    const-class v0, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 115
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 116
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 117
    iget-boolean v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0, v3, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    .line 119
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    .line 126
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto/16 :goto_b

    .line 128
    :cond_2
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v11, v2, 0x2

    if-le v1, v4, :cond_7

    .line 129
    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v5, v1, :cond_7

    if-lt v2, v1, :cond_7

    .line 130
    new-array v2, v1, [Ljava/util/concurrent/Future;

    .line 131
    div-int v4, v5, v1

    move v12, v3

    :goto_2
    if-ge v12, v1, :cond_4

    mul-int v7, v12, v4

    add-int/lit8 v5, v1, -0x1

    if-ne v12, v5, :cond_3

    .line 134
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v5, v7, v4

    :goto_3
    move v8, v5

    .line 135
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$1;

    move-object v5, v13

    move-object v6, p0

    move-object v9, p1

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$1;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[FI)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 146
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int v12, v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v7, v3, v12

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_5

    .line 155
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v5, v7, v12

    :goto_6
    move v8, v5

    .line 156
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_2D$2;

    move-object v5, v13

    move-object v6, p0

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$2;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[F)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 181
    :cond_6
    :try_start_1
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 188
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 189
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-int v2, v0, v11

    invoke-virtual {v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 191
    new-array v0, v1, [F

    move v1, v3

    .line 192
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 194
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    mul-int v7, v5, v11

    add-int/2addr v7, v2

    .line 197
    aget v8, p1, v7

    aput v8, v0, v6

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    .line 198
    aget v7, p1, v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 200
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v5, v3

    .line 201
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    mul-int v7, v5, v11

    add-int/2addr v7, v2

    .line 204
    aget v8, v0, v6

    aput v8, p1, v7

    add-int/2addr v7, v4

    add-int/2addr v6, v4

    .line 205
    aget v6, v0, v6

    aput v6, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexForward([[F)V
    .locals 9

    .line 346
    const-class v0, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 347
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 348
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 349
    iget-boolean v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0, v3, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    .line 351
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    goto :goto_1

    .line 353
    :cond_0
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v1, :cond_1

    .line 354
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    .line 358
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto/16 :goto_b

    :cond_2
    if-le v1, v4, :cond_7

    .line 359
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v5, v1, :cond_7

    .line 360
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 361
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_3

    .line 364
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v7, v6, v2

    .line 365
    :goto_3
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_2D$5;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_2D$5;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 376
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 378
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_5

    .line 385
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v7, v6, v5

    .line 386
    :goto_6
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_2D$6;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_2D$6;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 409
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 413
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 411
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 416
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 417
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 419
    new-array v0, v1, [F

    move v1, v3

    .line 420
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 422
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    .line 424
    aget-object v7, p1, v5

    aget v8, v7, v2

    aput v8, v0, v6

    add-int/2addr v6, v4

    add-int/lit8 v8, v2, 0x1

    .line 425
    aget v7, v7, v8

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 427
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v5, v3

    .line 428
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    .line 430
    aget-object v7, p1, v5

    aget v8, v0, v6

    aput v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v6, v4

    .line 431
    aget v6, v0, v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 572
    const-class v14, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Lorg/jtransforms/fft/FloatFFT_2D;->complexInverse([FZ)V

    goto/16 :goto_b

    .line 575
    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    .line 576
    iget-boolean v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const-wide/16 v7, 0x2

    const/4 v9, 0x1

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_3

    .line 577
    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v5, v7

    iput-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    if-le v15, v9, :cond_1

    .line 578
    iget-boolean v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 579
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 580
    invoke-direct {v11, v9, v12, v13}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 583
    :goto_0
    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v1, v5

    if-gez v0, :cond_2

    .line 584
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v5, v1

    invoke-virtual {v0, v12, v5, v6, v13}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v1, v3

    goto :goto_0

    .line 586
    :cond_2
    invoke-direct {v11, v9, v12, v13}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 588
    :goto_1
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    div-long/2addr v0, v7

    iput-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    goto/16 :goto_b

    .line 590
    :cond_3
    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long v16, v5, v7

    if-le v15, v9, :cond_8

    .line 591
    iget-boolean v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    int-to-long v12, v15

    cmp-long v0, v9, v12

    if-ltz v0, :cond_8

    cmp-long v0, v5, v12

    if-ltz v0, :cond_8

    .line 592
    new-array v8, v15, [Ljava/util/concurrent/Future;

    .line 593
    div-long v18, v9, v12

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_2
    if-ge v0, v15, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v18

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_4

    .line 596
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    goto :goto_3

    :cond_4
    add-long v1, v3, v18

    :goto_3
    move-wide v5, v1

    .line 597
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_2D$9;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v22, v8

    move-wide/from16 v8, v16

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$9;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v22

    goto :goto_2

    :cond_5
    move-object/from16 v22, v8

    const/4 v10, 0x0

    .line 608
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 612
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 610
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    :goto_4
    iget-wide v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    div-long v12, v0, v12

    move/from16 v0, v20

    :goto_5
    if-ge v0, v15, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v12

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_6

    .line 617
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    goto :goto_6

    :cond_6
    add-long v1, v3, v12

    :goto_6
    move-wide v5, v1

    .line 618
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_2D$10;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v7, v16

    move-object/from16 v9, p1

    move-wide/from16 v19, v12

    move-object v12, v10

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_2D$10;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move-object v10, v12

    move-wide/from16 v12, v19

    goto :goto_5

    :cond_7
    move-object v12, v10

    .line 643
    :try_start_1
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 647
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 645
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_8
    const-wide/16 v5, 0x0

    .line 650
    :goto_7
    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v5, v9

    if-gez v0, :cond_9

    .line 651
    iget-object v0, v11, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-long v9, v5, v16

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v0, v12, v9, v10, v13}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v5, v3

    goto :goto_7

    :cond_9
    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 653
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    mul-long/2addr v5, v7

    invoke-direct {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const-wide/16 v5, 0x0

    .line 654
    :goto_8
    iget-wide v9, v11, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_c

    mul-long v9, v5, v7

    const-wide/16 v14, 0x0

    .line 656
    :goto_9
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v1, v14, v1

    if-gez v1, :cond_a

    mul-long v1, v14, v7

    mul-long v20, v14, v16

    add-long v7, v20, v9

    .line 659
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    add-long/2addr v7, v3

    .line 660
    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v14, v3

    const-wide/16 v7, 0x2

    goto :goto_9

    .line 662
    :cond_a
    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0, v13}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 663
    :goto_a
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_b

    const-wide/16 v3, 0x2

    mul-long v7, v1, v3

    mul-long v14, v1, v16

    add-long/2addr v14, v9

    .line 666
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v12, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    add-long/2addr v7, v3

    .line 667
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v12, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v1, v3

    goto :goto_a

    :cond_b
    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    const-wide/16 v7, 0x2

    goto :goto_8

    :cond_c
    :goto_b
    return-void
.end method

.method public complexInverse([FZ)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 455
    const-class v11, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    .line 456
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const/4 v13, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 457
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v12, v1, :cond_0

    .line 458
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {v8, v13, v1, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    .line 460
    invoke-direct {v8, v1, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    goto :goto_1

    .line 463
    :cond_0
    :goto_0
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v13, v0, :cond_1

    .line 464
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v13

    invoke-virtual {v0, v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 466
    :cond_1
    invoke-direct {v8, v1, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    .line 468
    :goto_1
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto/16 :goto_b

    .line 470
    :cond_2
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v14, v0, 0x2

    if-le v12, v1, :cond_7

    .line 471
    iget-boolean v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v2, v12, :cond_7

    if-lt v0, v12, :cond_7

    .line 472
    new-array v15, v12, [Ljava/util/concurrent/Future;

    .line 473
    div-int v0, v2, v12

    move v7, v13

    :goto_2
    if-ge v7, v12, :cond_4

    mul-int v3, v7, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v7, v1, :cond_3

    .line 476
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v1, v3, v0

    :goto_3
    move v4, v1

    .line 477
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_2D$7;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move v6, v14

    move/from16 v17, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$7;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[FIZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 488
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 492
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 490
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    :goto_4
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/2addr v0, v12

    :goto_5
    if-ge v13, v12, :cond_6

    mul-int v3, v13, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v13, v1, :cond_5

    .line 497
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v1, v3, v0

    :goto_6
    move v4, v1

    .line 498
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_2D$8;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v14

    move-object/from16 v6, p1

    move/from16 v17, v12

    move-object v12, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D$8;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;III[FZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v7, v12

    move/from16 v12, v17

    goto :goto_5

    :cond_6
    move-object v12, v7

    .line 523
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 527
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 525
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v13

    .line 530
    :goto_7
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_8

    .line 531
    iget-object v2, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    mul-int v3, v0, v14

    invoke-virtual {v2, v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v2, v2, 0x2

    .line 533
    new-array v0, v2, [F

    move v2, v13

    .line 534
    :goto_8
    iget v3, v8, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v2, v3, :cond_b

    mul-int/lit8 v3, v2, 0x2

    move v4, v13

    .line 536
    :goto_9
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, v5, :cond_9

    mul-int/lit8 v5, v4, 0x2

    mul-int v6, v4, v14

    add-int/2addr v6, v3

    .line 539
    aget v7, v9, v6

    aput v7, v0, v5

    add-int/2addr v5, v1

    add-int/2addr v6, v1

    .line 540
    aget v6, v9, v6

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 542
    :cond_9
    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v4, v0, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v4, v13

    .line 543
    :goto_a
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v4, v5, :cond_a

    mul-int/lit8 v5, v4, 0x2

    mul-int v6, v4, v14

    add-int/2addr v6, v3

    .line 546
    aget v7, v0, v5

    aput v7, v9, v6

    add-int/2addr v6, v1

    add-int/2addr v5, v1

    .line 547
    aget v5, v0, v5

    aput v5, v9, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexInverse([[FZ)V
    .locals 13

    .line 693
    const-class v0, Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 694
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 695
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v1, v4, :cond_0

    .line 696
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0, v3, v4, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    .line 698
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    goto :goto_1

    .line 701
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 702
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    .line 706
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto/16 :goto_b

    :cond_2
    if-le v1, v4, :cond_7

    .line 707
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v5, v1, :cond_7

    .line 708
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 709
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_3

    .line 712
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v6, v8, v2

    :goto_3
    move v9, v6

    .line 713
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_2D$11;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$11;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 724
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 728
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 726
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_5

    .line 733
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v6, v8, v5

    :goto_6
    move v9, v6

    .line 734
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_2D$12;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/FloatFFT_2D$12;-><init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 757
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 761
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 759
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 764
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 765
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 767
    new-array v0, v1, [F

    move v1, v3

    .line 768
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 770
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    .line 772
    aget-object v7, p1, v5

    aget v8, v7, v2

    aput v8, v0, v6

    add-int/2addr v6, v4

    add-int/lit8 v8, v2, 0x1

    .line 773
    aget v7, v7, v8

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 775
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v5, v3

    .line 776
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    .line 778
    aget-object v7, p1, v5

    aget v8, v0, v6

    aput v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v6, v4

    .line 779
    aget v6, v0, v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 9

    .line 869
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 872
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 873
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-wide/16 v4, 0x1

    move-object v3, p0

    move-object v7, p1

    .line 874
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 875
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 876
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    .line 878
    :goto_0
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 879
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, p1, v5, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 881
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 882
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_1
    return-void

    .line 870
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([F)V
    .locals 5

    .line 818
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 821
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 822
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    .line 824
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    .line 825
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 827
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 828
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    .line 831
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    :goto_1
    return-void

    .line 819
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([[F)V
    .locals 5

    .line 920
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 923
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 924
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 925
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    .line 926
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    .line 927
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 929
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 930
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    .line 933
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    :goto_1
    return-void

    .line 921
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 9

    .line 983
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 984
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 985
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-wide/16 v4, 0x1

    move-object v3, p0

    move-object v7, p1

    .line 986
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 987
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 988
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    .line 990
    :goto_0
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 991
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, p1, v5, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 993
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 994
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 996
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_2

    .line 998
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_2
    return-void
.end method

.method public realForwardFull([F)V
    .locals 5

    .line 951
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 952
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 953
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 954
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    .line 955
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    .line 956
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 958
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 959
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    .line 962
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    .line 964
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V

    goto :goto_2

    .line 966
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([F)V

    :goto_2
    return-void
.end method

.method public realForwardFull([[F)V
    .locals 5

    .line 1015
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1016
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1017
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1018
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    .line 1019
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    .line 1020
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1022
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 1023
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    .line 1026
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    .line 1028
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([[F)V

    goto :goto_2

    .line 1030
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([[F)V

    :goto_2
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 9

    .line 1120
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1123
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1124
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1126
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v4, 0x1

    const/4 v6, -0x1

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    .line 1127
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_1

    .line 1129
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1130
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 1131
    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1132
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v3, v0

    invoke-virtual {v2, p1, v3, v4, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([FZ)V
    .locals 3

    .line 1068
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1071
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1072
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1073
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    .line 1074
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    .line 1075
    invoke-direct {p0, v2, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    goto :goto_1

    .line 1077
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    .line 1078
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    const/4 v0, 0x0

    .line 1079
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1

    .line 1080
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1069
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([[FZ)V
    .locals 3

    .line 1172
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1175
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1176
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1177
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    .line 1178
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    .line 1179
    invoke-direct {p0, v2, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    goto :goto_1

    .line 1181
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    .line 1182
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    const/4 v0, 0x0

    .line 1183
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1

    .line 1184
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1173
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 8

    .line 1237
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1238
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1239
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    .line 1240
    invoke-direct/range {v2 .. v7}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1241
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1242
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 1244
    :goto_0
    iget-wide v4, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1245
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columnsl:J

    mul-long/2addr v4, v2

    invoke-virtual {v0, p1, v4, v5, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 1247
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1248
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1250
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_2

    .line 1252
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    :goto_2
    return-void
.end method

.method public realInverseFull([FZ)V
    .locals 4

    .line 1204
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1205
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1206
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1207
    invoke-direct {p0, v1, v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(II[FZ)V

    .line 1208
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    .line 1209
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1211
    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_1

    .line 1212
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    .line 1215
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    .line 1217
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V

    goto :goto_2

    .line 1219
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([FZ)V

    :goto_2
    return-void
.end method

.method public realInverseFull([[FZ)V
    .locals 5

    .line 1270
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1271
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1272
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1273
    invoke-direct {p0, v1, v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(II[[FZ)V

    .line 1274
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    .line 1275
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1277
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_1

    .line 1278
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v0, p2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    .line 1281
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    .line 1283
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_2D;->fillSymmetric([[F)V

    goto :goto_2

    .line 1285
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([[FZ)V

    :goto_2
    return-void
.end method
