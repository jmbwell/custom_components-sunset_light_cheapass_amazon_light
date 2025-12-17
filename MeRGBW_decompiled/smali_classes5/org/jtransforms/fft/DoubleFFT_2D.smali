.class public Lorg/jtransforms/fft/DoubleFFT_2D;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private isPowerOfTwo:Z

.field private rows:I

.field private rowsl:J

.field private useThreads:Z


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    .line 65
    iput-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    cmp-long v1, p3, v1

    if-lez v1, :cond_4

    long-to-int v1, p1

    .line 81
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    long-to-int v1, p3

    .line 82
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    .line 83
    iput-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    .line 84
    iput-wide p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v1, p1, p3

    .line 85
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 86
    iput-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    .line 88
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iput-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    :cond_1
    const-wide/16 v3, 0x2

    mul-long/2addr v3, p1

    mul-long/2addr v3, p3

    .line 91
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 92
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    .line 94
    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {p1, p3, p4}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    :goto_0
    return-void

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-object p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    return p0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    return-wide v0
.end method

.method private cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 2797
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 2798
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    .line 2803
    :cond_1
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_8

    .line 2805
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_4

    const-wide/16 v2, 0x0

    .line 2806
    :goto_2
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_f

    const-wide/16 v4, 0x0

    .line 2807
    :goto_3
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v6, v4, v11

    if-gez v6, :cond_2

    .line 2808
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    move-wide/from16 v23, v11

    .line 2813
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v21

    add-long v11, v13, v21

    .line 2814
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v13, v19

    .line 2815
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v13, v17

    .line 2816
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x4

    add-long v9, v13, v2

    .line 2817
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    const-wide/16 v2, 0x5

    add-long v8, v13, v2

    .line 2818
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v13, v15

    .line 2819
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v4, v23

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v4, v21

    const-wide/16 v2, 0x7

    add-long/2addr v13, v2

    .line 2820
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v27, v21

    move-wide/from16 v2, v25

    const-wide/16 v9, 0x4

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v2

    .line 2822
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 2823
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 2824
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 2825
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 2826
    :goto_4
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 2827
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    move-wide/from16 v23, v4

    .line 2832
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 2833
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 2834
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 2835
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 2836
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 2837
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v4, v23

    .line 2838
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v4, v4, v21

    .line 2839
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 2843
    :goto_5
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 2844
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v8, v2

    mul-long v10, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v10

    .line 2847
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v8, v21

    .line 2848
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2849
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v8, v17

    .line 2850
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_5

    .line 2852
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 2853
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v5, 0x0

    .line 2854
    :goto_6
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v5, v2

    if-gez v4, :cond_f

    .line 2855
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v8, v5

    mul-long v10, v5, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 2858
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v8, v21

    add-long v10, v10, v21

    .line 2859
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2860
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v17

    add-long v2, v2, v21

    .line 2861
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_6

    :cond_6
    cmp-long v2, v2, v19

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    .line 2864
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    .line 2865
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v4, v2

    mul-long v8, v2, v19

    .line 2867
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v4, v4, v21

    .line 2868
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_7

    .line 2870
    :cond_7
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v5, 0x0

    .line 2871
    :goto_8
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_f

    .line 2872
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v5

    mul-long v8, v5, v19

    .line 2874
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 2875
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_8

    .line 2878
    :cond_8
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    const-wide/16 v3, 0x0

    .line 2879
    :goto_9
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_f

    const-wide/16 v5, 0x0

    .line 2880
    :goto_a
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v10, v5, v8

    if-gez v10, :cond_9

    .line 2881
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    move-wide/from16 v23, v8

    .line 2886
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v21

    add-long v8, v10, v21

    .line 2887
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v10, v19

    .line 2888
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v21

    add-long v8, v10, v17

    .line 2889
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x4

    add-long v8, v10, v3

    .line 2890
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    const-wide/16 v3, 0x5

    add-long v13, v10, v3

    .line 2891
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v10, v15

    .line 2892
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    move-wide/from16 v5, v23

    invoke-virtual {v7, v5, v6, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v5, v21

    const-wide/16 v3, 0x7

    add-long/2addr v10, v3

    .line 2893
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v8, v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v27, v21

    move-wide/from16 v3, v25

    goto :goto_a

    :cond_9
    move-wide/from16 v25, v3

    .line 2895
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2896
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2897
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2898
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 2899
    :goto_b
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_a

    .line 2900
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    move-wide/from16 v23, v5

    .line 2905
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 2906
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 2907
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 2908
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 2909
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 2910
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v10, v23

    .line 2911
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 2912
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 2916
    :goto_c
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 2917
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v8, v2

    mul-long v10, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v10

    .line 2920
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v8, v21

    .line 2921
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2922
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v8, v17

    .line 2923
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_c

    .line 2925
    :cond_c
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v5, p3

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2926
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v5, 0x0

    .line 2927
    :goto_d
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v5, v2

    if-gez v4, :cond_f

    .line 2928
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v8, v5

    mul-long v10, v5, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 2931
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v8, v21

    add-long v10, v10, v21

    .line 2932
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v19

    .line 2933
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v17

    add-long v2, v2, v21

    .line 2934
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_d

    :cond_d
    move/from16 v5, p3

    cmp-long v2, v3, v19

    if-nez v2, :cond_f

    const-wide/16 v3, 0x0

    .line 2937
    :goto_e
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v3, v8

    if-gez v2, :cond_e

    .line 2938
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v8, v3

    mul-long v10, v3, v19

    .line 2940
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 2941
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v21

    goto :goto_e

    .line 2943
    :cond_e
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v5, v3

    .line 2944
    :goto_f
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_f

    .line 2945
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v5

    mul-long v8, v5, v19

    .line 2947
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 2948
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    goto :goto_f

    :cond_f
    return-void
.end method

.method private cdft2d_sub(I[DZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2638
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v2, v2, 0x8

    .line 2639
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x2

    .line 2644
    :cond_1
    :goto_0
    new-array v2, v2, [D

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v5, :cond_8

    if-le v3, v4, :cond_4

    move v1, v6

    .line 2647
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v3, :cond_f

    move v3, v6

    .line 2648
    :goto_2
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v5, :cond_2

    .line 2649
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v1

    mul-int/lit8 v9, v3, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v9

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v11

    .line 2654
    aget-wide v12, p2, v8

    aput-wide v12, v2, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 2655
    aget-wide v12, p2, v12

    aput-wide v12, v2, v9

    add-int/lit8 v9, v8, 0x2

    .line 2656
    aget-wide v12, p2, v9

    aput-wide v12, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 2657
    aget-wide v12, p2, v9

    aput-wide v12, v2, v10

    add-int/lit8 v9, v8, 0x4

    .line 2658
    aget-wide v9, p2, v9

    aput-wide v9, v2, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 2659
    aget-wide v9, p2, v9

    aput-wide v9, v2, v11

    add-int/lit8 v9, v8, 0x6

    .line 2660
    aget-wide v9, p2, v9

    aput-wide v9, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 2661
    aget-wide v8, p2, v8

    aput-wide v8, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2663
    :cond_2
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2664
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v5, v7

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2665
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2666
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 2667
    :goto_3
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v5, :cond_3

    .line 2668
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v1

    mul-int/lit8 v9, v3, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v9

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v11

    .line 2673
    aget-wide v12, v2, v9

    aput-wide v12, p2, v8

    add-int/lit8 v12, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 2674
    aget-wide v13, v2, v9

    aput-wide v13, p2, v12

    add-int/lit8 v9, v8, 0x2

    .line 2675
    aget-wide v12, v2, v10

    aput-wide v12, p2, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 2676
    aget-wide v12, v2, v10

    aput-wide v12, p2, v9

    add-int/lit8 v9, v8, 0x4

    .line 2677
    aget-wide v12, v2, v11

    aput-wide v12, p2, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 2678
    aget-wide v10, v2, v11

    aput-wide v10, p2, v9

    add-int/lit8 v9, v8, 0x6

    .line 2679
    aget-wide v10, v2, v5

    aput-wide v10, p2, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v5, v5, 0x1

    .line 2680
    aget-wide v9, v2, v5

    aput-wide v9, p2, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_1

    :cond_4
    if-ne v3, v4, :cond_6

    move v1, v6

    .line 2684
    :goto_4
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_5

    .line 2685
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v4, v1

    mul-int/lit8 v5, v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 2688
    aget-wide v8, p2, v4

    aput-wide v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 2689
    aget-wide v8, p2, v8

    aput-wide v8, v2, v5

    add-int/lit8 v5, v4, 0x2

    .line 2690
    aget-wide v8, p2, v5

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    .line 2691
    aget-wide v4, p2, v4

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2693
    :cond_5
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2694
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2695
    :goto_5
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v6, v1, :cond_f

    .line 2696
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v6

    mul-int/lit8 v4, v6, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 2699
    aget-wide v7, v2, v4

    aput-wide v7, p2, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2700
    aget-wide v7, v2, v4

    aput-wide v7, p2, v5

    add-int/lit8 v4, v3, 0x2

    .line 2701
    aget-wide v7, v2, v1

    aput-wide v7, p2, v4

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 2702
    aget-wide v4, v2, v1

    aput-wide v4, p2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    if-ne v3, v7, :cond_f

    move v1, v6

    .line 2705
    :goto_6
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_7

    .line 2706
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x2

    .line 2708
    aget-wide v7, p2, v3

    aput-wide v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2709
    aget-wide v7, p2, v3

    aput-wide v7, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2711
    :cond_7
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2712
    :goto_7
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v6, v1, :cond_f

    .line 2713
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v1, v6

    mul-int/lit8 v3, v6, 0x2

    .line 2715
    aget-wide v4, v2, v3

    aput-wide v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2716
    aget-wide v3, v2, v3

    aput-wide v3, p2, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    if-le v3, v4, :cond_b

    move v3, v6

    .line 2720
    :goto_8
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v3, v5, :cond_f

    move v5, v6

    .line 2721
    :goto_9
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v8, :cond_9

    .line 2722
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v3

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v8, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v12

    .line 2727
    aget-wide v13, p2, v9

    aput-wide v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v9, 0x1

    .line 2728
    aget-wide v13, p2, v13

    aput-wide v13, v2, v10

    add-int/lit8 v10, v9, 0x2

    .line 2729
    aget-wide v13, p2, v10

    aput-wide v13, v2, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 2730
    aget-wide v13, p2, v10

    aput-wide v13, v2, v11

    add-int/lit8 v10, v9, 0x4

    .line 2731
    aget-wide v10, p2, v10

    aput-wide v10, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 2732
    aget-wide v10, p2, v10

    aput-wide v10, v2, v12

    add-int/lit8 v10, v9, 0x6

    .line 2733
    aget-wide v10, p2, v10

    aput-wide v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 2734
    aget-wide v9, p2, v9

    aput-wide v9, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2736
    :cond_9
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2737
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v8, v7

    invoke-virtual {v5, v2, v8, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2738
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v8, v4

    invoke-virtual {v5, v2, v8, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2739
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v5, v2, v8, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v5, v6

    .line 2740
    :goto_a
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v8, :cond_a

    .line 2741
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v3

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v8, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v12

    .line 2746
    aget-wide v13, v2, v10

    aput-wide v13, p2, v9

    add-int/lit8 v13, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 2747
    aget-wide v14, v2, v10

    aput-wide v14, p2, v13

    add-int/lit8 v10, v9, 0x2

    .line 2748
    aget-wide v13, v2, v11

    aput-wide v13, p2, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 2749
    aget-wide v13, v2, v11

    aput-wide v13, p2, v10

    add-int/lit8 v10, v9, 0x4

    .line 2750
    aget-wide v13, v2, v12

    aput-wide v13, p2, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 2751
    aget-wide v11, v2, v12

    aput-wide v11, p2, v10

    add-int/lit8 v10, v9, 0x6

    .line 2752
    aget-wide v11, v2, v8

    aput-wide v11, p2, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v8, v8, 0x1

    .line 2753
    aget-wide v10, v2, v8

    aput-wide v10, p2, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_8

    :cond_b
    if-ne v3, v4, :cond_d

    move v3, v6

    .line 2757
    :goto_b
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v4, :cond_c

    .line 2758
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v5, v3

    mul-int/lit8 v8, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    .line 2761
    aget-wide v9, p2, v5

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v5, 0x1

    .line 2762
    aget-wide v9, p2, v9

    aput-wide v9, v2, v8

    add-int/lit8 v8, v5, 0x2

    .line 2763
    aget-wide v8, p2, v8

    aput-wide v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x3

    .line 2764
    aget-wide v8, p2, v5

    aput-wide v8, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2766
    :cond_c
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2767
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v4, v7

    invoke-virtual {v3, v2, v4, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2768
    :goto_c
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v6, v1, :cond_f

    .line 2769
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v6

    mul-int/lit8 v4, v6, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 2772
    aget-wide v7, v2, v4

    aput-wide v7, p2, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2773
    aget-wide v7, v2, v4

    aput-wide v7, p2, v5

    add-int/lit8 v4, v3, 0x2

    .line 2774
    aget-wide v7, v2, v1

    aput-wide v7, p2, v4

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 2775
    aget-wide v4, v2, v1

    aput-wide v4, p2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    if-ne v3, v7, :cond_f

    move v3, v6

    .line 2778
    :goto_d
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v4, :cond_e

    .line 2779
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v4, v3

    mul-int/lit8 v5, v3, 0x2

    .line 2781
    aget-wide v7, p2, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2782
    aget-wide v7, p2, v4

    aput-wide v7, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2784
    :cond_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 2785
    :goto_e
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v6, v1, :cond_f

    .line 2786
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v1, v6

    mul-int/lit8 v3, v6, 0x2

    .line 2788
    aget-wide v4, v2, v3

    aput-wide v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2789
    aget-wide v3, v2, v3

    aput-wide v3, p2, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    return-void
.end method

.method private cdft2d_sub(I[[DZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 2956
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v2, v2, 0x8

    .line 2957
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x2

    .line 2962
    :cond_1
    :goto_0
    new-array v2, v2, [D

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v10, p1

    if-ne v10, v5, :cond_8

    if-le v3, v4, :cond_4

    move v1, v7

    .line 2965
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v3, :cond_f

    move v3, v7

    .line 2966
    :goto_2
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v5, :cond_2

    mul-int/lit8 v6, v3, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v6

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v11

    .line 2971
    aget-object v12, p2, v3

    aget-wide v13, v12, v1

    aput-wide v13, v2, v6

    add-int/2addr v6, v9

    add-int/lit8 v13, v1, 0x1

    .line 2972
    aget-wide v13, v12, v13

    aput-wide v13, v2, v6

    add-int/lit8 v6, v1, 0x2

    .line 2973
    aget-wide v13, v12, v6

    aput-wide v13, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v6, v1, 0x3

    .line 2974
    aget-wide v13, v12, v6

    aput-wide v13, v2, v10

    add-int/lit8 v6, v1, 0x4

    .line 2975
    aget-wide v13, v12, v6

    aput-wide v13, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v6, v1, 0x5

    .line 2976
    aget-wide v13, v12, v6

    aput-wide v13, v2, v11

    add-int/lit8 v6, v1, 0x6

    .line 2977
    aget-wide v10, v12, v6

    aput-wide v10, v2, v5

    add-int/2addr v5, v9

    add-int/lit8 v6, v1, 0x7

    .line 2978
    aget-wide v10, v12, v6

    aput-wide v10, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2980
    :cond_2
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2981
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v5, v8

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2982
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 2983
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v7

    .line 2984
    :goto_3
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v5, :cond_3

    mul-int/lit8 v6, v3, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v6

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v11

    .line 2989
    aget-object v12, p2, v3

    aget-wide v13, v2, v6

    aput-wide v13, v12, v1

    add-int/lit8 v13, v1, 0x1

    add-int/2addr v6, v9

    .line 2990
    aget-wide v14, v2, v6

    aput-wide v14, v12, v13

    add-int/lit8 v6, v1, 0x2

    .line 2991
    aget-wide v13, v2, v10

    aput-wide v13, v12, v6

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v10, v9

    .line 2992
    aget-wide v13, v2, v10

    aput-wide v13, v12, v6

    add-int/lit8 v6, v1, 0x4

    .line 2993
    aget-wide v13, v2, v11

    aput-wide v13, v12, v6

    add-int/lit8 v6, v1, 0x5

    add-int/2addr v11, v9

    .line 2994
    aget-wide v10, v2, v11

    aput-wide v10, v12, v6

    add-int/lit8 v6, v1, 0x6

    .line 2995
    aget-wide v10, v2, v5

    aput-wide v10, v12, v6

    add-int/lit8 v6, v1, 0x7

    add-int/2addr v5, v9

    .line 2996
    aget-wide v10, v2, v5

    aput-wide v10, v12, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_1

    :cond_4
    if-ne v3, v4, :cond_6

    move v1, v7

    .line 3000
    :goto_4
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_5

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 3003
    aget-object v5, p2, v1

    aget-wide v10, v5, v7

    aput-wide v10, v2, v4

    add-int/2addr v4, v9

    .line 3004
    aget-wide v10, v5, v9

    aput-wide v10, v2, v4

    .line 3005
    aget-wide v10, v5, v8

    aput-wide v10, v2, v3

    add-int/2addr v3, v9

    .line 3006
    aget-wide v4, v5, v6

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3008
    :cond_5
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3009
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v1, v7

    .line 3010
    :goto_5
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_f

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 3013
    aget-object v5, p2, v1

    aget-wide v10, v2, v4

    aput-wide v10, v5, v7

    add-int/2addr v4, v9

    .line 3014
    aget-wide v10, v2, v4

    aput-wide v10, v5, v9

    .line 3015
    aget-wide v10, v2, v3

    aput-wide v10, v5, v8

    add-int/2addr v3, v9

    .line 3016
    aget-wide v3, v2, v3

    aput-wide v3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    if-ne v3, v8, :cond_f

    move v1, v7

    .line 3019
    :goto_6
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_7

    mul-int/lit8 v3, v1, 0x2

    .line 3021
    aget-object v4, p2, v1

    aget-wide v5, v4, v7

    aput-wide v5, v2, v3

    add-int/2addr v3, v9

    .line 3022
    aget-wide v5, v4, v9

    aput-wide v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3024
    :cond_7
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v1, v7

    .line 3025
    :goto_7
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_f

    mul-int/lit8 v3, v1, 0x2

    .line 3027
    aget-object v4, p2, v1

    aget-wide v5, v2, v3

    aput-wide v5, v4, v7

    add-int/2addr v3, v9

    .line 3028
    aget-wide v5, v2, v3

    aput-wide v5, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    if-le v3, v4, :cond_b

    move v3, v7

    .line 3032
    :goto_8
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v3, v5, :cond_f

    move v5, v7

    .line 3033
    :goto_9
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 3038
    aget-object v13, p2, v5

    aget-wide v14, v13, v3

    aput-wide v14, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v14, v3, 0x1

    .line 3039
    aget-wide v14, v13, v14

    aput-wide v14, v2, v10

    add-int/lit8 v10, v3, 0x2

    .line 3040
    aget-wide v14, v13, v10

    aput-wide v14, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v10, v3, 0x3

    .line 3041
    aget-wide v14, v13, v10

    aput-wide v14, v2, v11

    add-int/lit8 v10, v3, 0x4

    .line 3042
    aget-wide v10, v13, v10

    aput-wide v10, v2, v12

    add-int/2addr v12, v9

    add-int/lit8 v10, v3, 0x5

    .line 3043
    aget-wide v10, v13, v10

    aput-wide v10, v2, v12

    add-int/lit8 v10, v3, 0x6

    .line 3044
    aget-wide v10, v13, v10

    aput-wide v10, v2, v6

    add-int/2addr v6, v9

    add-int/lit8 v10, v3, 0x7

    .line 3045
    aget-wide v10, v13, v10

    aput-wide v10, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 3047
    :cond_9
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3048
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v6, v8

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3049
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v6, v4

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3050
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v5, v7

    .line 3051
    :goto_a
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 3056
    aget-object v13, p2, v5

    aget-wide v14, v2, v10

    aput-wide v14, v13, v3

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v10, v9

    .line 3057
    aget-wide v15, v2, v10

    aput-wide v15, v13, v14

    add-int/lit8 v10, v3, 0x2

    .line 3058
    aget-wide v14, v2, v11

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v9

    .line 3059
    aget-wide v14, v2, v11

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x4

    .line 3060
    aget-wide v14, v2, v12

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v9

    .line 3061
    aget-wide v11, v2, v12

    aput-wide v11, v13, v10

    add-int/lit8 v10, v3, 0x6

    .line 3062
    aget-wide v11, v2, v6

    aput-wide v11, v13, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v6, v9

    .line 3063
    aget-wide v11, v2, v6

    aput-wide v11, v13, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_8

    :cond_b
    if-ne v3, v4, :cond_d

    move v3, v7

    .line 3067
    :goto_b
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v4, :cond_c

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 3070
    aget-object v10, p2, v3

    aget-wide v11, v10, v7

    aput-wide v11, v2, v5

    add-int/2addr v5, v9

    .line 3071
    aget-wide v11, v10, v9

    aput-wide v11, v2, v5

    .line 3072
    aget-wide v11, v10, v8

    aput-wide v11, v2, v4

    add-int/2addr v4, v9

    .line 3073
    aget-wide v11, v10, v6

    aput-wide v11, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3075
    :cond_c
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3076
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v4, v8

    invoke-virtual {v3, v2, v4, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v1, v7

    .line 3077
    :goto_c
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_f

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 3080
    aget-object v5, p2, v1

    aget-wide v10, v2, v4

    aput-wide v10, v5, v7

    add-int/2addr v4, v9

    .line 3081
    aget-wide v10, v2, v4

    aput-wide v10, v5, v9

    .line 3082
    aget-wide v10, v2, v3

    aput-wide v10, v5, v8

    add-int/2addr v3, v9

    .line 3083
    aget-wide v3, v2, v3

    aput-wide v3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    if-ne v3, v8, :cond_f

    move v3, v7

    .line 3086
    :goto_d
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v4, :cond_e

    mul-int/lit8 v4, v3, 0x2

    .line 3088
    aget-object v5, p2, v3

    aget-wide v10, v5, v7

    aput-wide v10, v2, v4

    add-int/2addr v4, v9

    .line 3089
    aget-wide v10, v5, v9

    aput-wide v10, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3091
    :cond_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v1, v7

    .line 3092
    :goto_e
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v3, :cond_f

    mul-int/lit8 v3, v1, 0x2

    .line 3094
    aget-object v4, p2, v1

    aget-wide v5, v2, v3

    aput-wide v5, v4, v7

    add-int/2addr v3, v9

    .line 3095
    aget-wide v5, v2, v3

    aput-wide v5, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_f
    return-void
.end method

.method private cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 3533
    const-class v12, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x8

    .line 3534
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v3, v1

    .line 3535
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    .line 3541
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_2

    int-to-long v7, v10

    .line 3545
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_2D$44;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v6, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$44;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JIIJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 3702
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3706
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

    .line 3704
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private cdft2d_subth(I[DZ)V
    .locals 15

    move-object v9, p0

    .line 3354
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 3355
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x8

    .line 3356
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

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

    .line 3362
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 3366
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_2D$43;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v0

    move v6, v13

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$43;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3523
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3527
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

    .line 3525
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private cdft2d_subth(I[[DZ)V
    .locals 15

    move-object v9, p0

    .line 3712
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 3713
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x8

    .line 3714
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

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

    .line 3720
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 3724
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_2D$45;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v0

    move v6, v13

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$45;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3869
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3873
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

    .line 3871
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 32

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 3996
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    mul-long v17, v0, v2

    .line 3998
    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    div-long v19, v0, v2

    const-wide/16 v12, 0x1

    sub-long/2addr v0, v12

    :goto_0
    cmp-long v4, v0, v12

    const-wide/16 v10, 0x0

    if-ltz v4, :cond_1

    .line 4001
    iget-wide v7, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    mul-long v21, v7, v2

    const-wide/16 v5, 0x0

    .line 4003
    :goto_1
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    add-long v2, v21, v5

    add-long v12, v7, v5

    move-wide/from16 v27, v7

    .line 4004
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v15, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4005
    invoke-virtual {v15, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    add-long/2addr v12, v7

    .line 4006
    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v15, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4007
    invoke-virtual {v15, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4010
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 4011
    iget-boolean v1, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v1, :cond_5

    int-to-long v1, v0

    cmp-long v3, v19, v1

    if-ltz v3, :cond_5

    .line 4012
    new-array v12, v0, [Ljava/util/concurrent/Future;

    .line 4013
    div-long v21, v19, v1

    .line 4014
    iget-wide v1, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

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

    .line 4029
    :goto_4
    new-instance v31, Lorg/jtransforms/fft/DoubleFFT_2D$47;

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-object/from16 v9, p1

    move-wide/from16 v10, v27

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-wide/from16 v12, v29

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/DoubleFFT_2D$47;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

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

    .line 4067
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4071
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

    .line 4069
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

    .line 4078
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    sub-long/2addr v2, v12

    mul-long v2, v2, v17

    .line 4079
    iget-wide v7, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    add-long/2addr v7, v0

    const-wide/16 v9, 0x1

    add-long v5, v2, v9

    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v15, v7, v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4080
    iget-wide v4, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    add-long/2addr v0, v4

    add-long/2addr v0, v9

    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v15, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v9

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x1

    move-wide v12, v9

    :goto_6
    cmp-long v0, v12, v19

    if-gez v0, :cond_8

    mul-long v0, v12, v17

    .line 4085
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    sub-long/2addr v2, v12

    add-long/2addr v2, v9

    mul-long v2, v2, v17

    .line 4086
    iget-wide v4, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    :goto_7
    cmp-long v6, v4, v17

    if-gez v6, :cond_7

    add-long v6, v0, v4

    sub-long v9, v2, v4

    move-wide/from16 v25, v0

    .line 4087
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v27, 0x1

    add-long v6, v6, v27

    add-long v9, v9, v27

    .line 4088
    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {v15, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4092
    :goto_8
    iget-wide v4, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    div-long v6, v4, v0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    mul-long v0, v2, v17

    sub-long v6, v4, v2

    .line 4094
    rem-long/2addr v6, v4

    mul-long v6, v6, v17

    const-wide/16 v4, 0x0

    :goto_9
    cmp-long v8, v4, v17

    if-gez v8, :cond_9

    add-long v8, v0, v4

    sub-long v10, v17, v4

    .line 4097
    rem-long v10, v10, v17

    add-long/2addr v10, v6

    .line 4098
    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v15, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v8, v12

    .line 4099
    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual {v15, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4103
    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    invoke-virtual {v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v15, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x0

    .line 4104
    invoke-virtual {v15, v12, v13, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-long v19, v19, v17

    .line 4106
    iget-wide v3, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    add-long v3, v19, v3

    add-long v5, v19, v12

    invoke-virtual {v15, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v15, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4107
    invoke-virtual {v15, v5, v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4108
    iget-wide v3, v14, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    add-long v19, v19, v3

    add-long v3, v19, v12

    invoke-virtual {v15, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    return-void
.end method

.method private fillSymmetric([D)V
    .locals 22

    move-object/from16 v9, p0

    .line 3879
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v11, v0, 0x2

    .line 3881
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :goto_0
    const/4 v1, 0x0

    const-wide/16 v14, 0x0

    if-lt v0, v13, :cond_1

    .line 3884
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v2, 0x2

    .line 3886
    :goto_1
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v4, :cond_0

    add-int v4, v3, v1

    add-int v5, v2, v1

    .line 3887
    aget-wide v6, p1, v5

    aput-wide v6, p1, v4

    .line 3888
    aput-wide v14, p1, v5

    add-int/2addr v4, v13

    add-int/2addr v5, v13

    .line 3889
    aget-wide v6, p1, v5

    aput-wide v6, p1, v4

    .line 3890
    aput-wide v14, p1, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3893
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v13, :cond_5

    .line 3894
    iget-boolean v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v2, :cond_5

    if-lt v12, v0, :cond_5

    .line 3895
    new-array v8, v0, [Ljava/util/concurrent/Future;

    .line 3896
    div-int v16, v12, v0

    .line 3897
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v17, v2, 0x2

    move v7, v1

    :goto_2
    if-ge v7, v0, :cond_4

    if-nez v7, :cond_2

    mul-int v1, v7, v16

    add-int/2addr v1, v13

    goto :goto_3

    :cond_2
    mul-int v1, v7, v16

    :goto_3
    move v3, v1

    mul-int v18, v7, v16

    add-int v4, v18, v16

    add-int/lit8 v1, v0, -0x1

    if-ne v7, v1, :cond_3

    add-int/lit8 v1, v4, 0x1

    move/from16 v19, v1

    goto :goto_4

    :cond_3
    move/from16 v19, v4

    .line 3912
    :goto_4
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_2D$46;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v5, v17

    move-object/from16 v6, p1

    move/from16 v21, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$46;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[DII)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v21

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v8, v18

    goto :goto_2

    :cond_4
    move-object/from16 v18, v8

    const/4 v1, 0x0

    .line 3950
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3954
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

    .line 3952
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

    .line 3961
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v3, v0

    mul-int/2addr v3, v11

    .line 3962
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    add-int v5, v2, v4

    add-int/lit8 v6, v3, 0x1

    aget-wide v6, p1, v6

    aput-wide v6, p1, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v13

    .line 3963
    aget-wide v3, p1, v3

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v13

    :goto_6
    if-ge v0, v12, :cond_8

    mul-int v2, v0, v11

    .line 3968
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v13

    mul-int/2addr v3, v11

    .line 3969
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    :goto_7
    add-int/lit8 v4, v4, 0x2

    if-ge v4, v11, :cond_7

    add-int v5, v2, v4

    sub-int v6, v3, v4

    .line 3970
    aget-wide v7, p1, v6

    aput-wide v7, p1, v5

    add-int/2addr v5, v13

    add-int/2addr v6, v13

    .line 3971
    aget-wide v6, p1, v6

    neg-double v6, v6

    aput-wide v6, p1, v5

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v1

    .line 3975
    :goto_8
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int/lit8 v3, v2, 0x2

    if-gt v0, v3, :cond_a

    mul-int v3, v0, v11

    sub-int v4, v2, v0

    .line 3977
    rem-int/2addr v4, v2

    mul-int/2addr v4, v11

    move v2, v1

    :goto_9
    if-ge v2, v11, :cond_9

    add-int v5, v3, v2

    sub-int v6, v11, v2

    .line 3980
    rem-int/2addr v6, v11

    add-int/2addr v6, v4

    .line 3981
    aget-wide v7, p1, v5

    aput-wide v7, p1, v6

    add-int/2addr v6, v13

    add-int/2addr v5, v13

    .line 3982
    aget-wide v7, p1, v5

    neg-double v7, v7

    aput-wide v7, p1, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3986
    :cond_a
    :goto_a
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    aget-wide v1, p1, v13

    neg-double v1, v1

    aput-wide v1, p1, v0

    .line 3987
    aput-wide v14, p1, v13

    mul-int/2addr v12, v11

    add-int v1, v12, v0

    add-int/lit8 v2, v12, 0x1

    .line 3989
    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v1

    .line 3990
    aput-wide v14, p1, v2

    add-int/2addr v12, v0

    add-int/2addr v12, v13

    .line 3991
    aput-wide v14, p1, v12

    return-void
.end method

.method private fillSymmetric([[D)V
    .locals 20

    move-object/from16 v9, p0

    .line 4113
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    .line 4114
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int/lit8 v11, v1, 0x2

    .line 4116
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-le v12, v14, :cond_3

    .line 4117
    iget-boolean v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v1, :cond_3

    if-lt v11, v12, :cond_3

    .line 4118
    new-array v15, v12, [Ljava/util/concurrent/Future;

    .line 4119
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

    .line 4134
    :goto_2
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_2D$48;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move v6, v0

    move/from16 v19, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$48;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[DIII)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v19

    add-int/lit8 v8, v19, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4165
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4169
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 4167
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v1, v13

    goto :goto_9

    :cond_3
    move v1, v14

    :goto_4
    if-ge v1, v11, :cond_4

    .line 4174
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v2, v1

    .line 4175
    aget-object v3, p1, v1

    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    aget-object v2, p1, v2

    aget-wide v5, v2, v14

    aput-wide v5, v3, v4

    add-int/2addr v4, v14

    .line 4176
    aget-wide v5, v2, v13

    neg-double v5, v5

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v14

    :goto_5
    if-ge v1, v11, :cond_6

    .line 4179
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v2, v1

    .line 4180
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    add-int/lit8 v3, v3, 0x2

    :goto_6
    if-ge v3, v0, :cond_5

    sub-int v4, v0, v3

    .line 4182
    aget-object v5, p1, v1

    aget-object v6, p1, v2

    aget-wide v7, v6, v4

    aput-wide v7, v5, v3

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v4, v14

    .line 4183
    aget-wide v13, v6, v4

    neg-double v12, v13

    aput-wide v12, v5, v7

    add-int/lit8 v3, v3, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 4186
    :goto_7
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int/lit8 v3, v2, 0x2

    if-gt v1, v3, :cond_8

    sub-int v3, v2, v1

    .line 4187
    rem-int/2addr v3, v2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_7

    sub-int v4, v0, v2

    .line 4189
    rem-int/2addr v4, v0

    .line 4190
    aget-object v5, p1, v3

    aget-object v6, p1, v1

    aget-wide v12, v6, v2

    aput-wide v12, v5, v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v7, v2, 0x1

    .line 4191
    aget-wide v12, v6, v7

    neg-double v6, v12

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    .line 4195
    :goto_9
    aget-object v0, p1, v1

    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    neg-double v3, v3

    aput-wide v3, v0, v1

    const-wide/16 v3, 0x0

    .line 4196
    aput-wide v3, v0, v2

    .line 4197
    aget-object v0, p1, v11

    aget-wide v5, v0, v2

    neg-double v5, v5

    aput-wide v5, v0, v1

    .line 4198
    aput-wide v3, v0, v2

    add-int/2addr v1, v2

    .line 4199
    aput-wide v3, v0, v1

    return-void
.end method

.method private mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    .line 1720
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v11, 0x2

    mul-long v17, v0, v11

    .line 1721
    div-long v19, v0, v11

    const-wide/16 v21, 0x1

    add-long v23, v19, v21

    .line 1722
    new-instance v14, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    mul-long v0, v23, v11

    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v0, v2

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 1723
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v25, v0, v11

    .line 1725
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    const-wide/16 v27, 0x0

    if-le v10, v0, :cond_c

    .line 1726
    iget-boolean v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    int-to-long v8, v10

    cmp-long v2, v0, v8

    if-ltz v2, :cond_c

    const-wide/16 v2, -0x1

    add-long v29, v19, v2

    cmp-long v2, v29, v8

    if-ltz v2, :cond_c

    .line 1727
    new-array v7, v10, [Ljava/util/concurrent/Future;

    .line 1728
    div-long v31, v0, v8

    const/16 v33, 0x0

    move/from16 v0, v33

    :goto_0
    if-ge v0, v10, :cond_1

    int-to-long v1, v0

    mul-long v3, v1, v31

    add-int/lit8 v1, v10, -0x1

    if-ne v0, v1, :cond_0

    .line 1731
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_1

    :cond_0
    add-long v1, v3, v31

    :goto_1
    move-wide v5, v1

    .line 1732
    new-instance v34, Lorg/jtransforms/fft/DoubleFFT_2D$21;

    move-object/from16 v1, v34

    move-object/from16 v2, p0

    move-object/from16 v35, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$21;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v34 .. v34}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v35

    goto :goto_0

    :cond_1
    move-object/from16 v35, v7

    const/4 v7, 0x0

    .line 1743
    :try_start_0
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1747
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

    .line 1745
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-wide/from16 v0, v27

    .line 1750
    :goto_3
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1751
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_3

    .line 1753
    :cond_2
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1755
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

    .line 1759
    :goto_5
    new-instance v31, Lorg/jtransforms/fft/DoubleFFT_2D$22;

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-object v11, v7

    move-object v7, v14

    move-wide/from16 v36, v8

    move-wide/from16 v8, v25

    move v12, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$22;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

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

    .line 1777
    :try_start_1
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1781
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

    .line 1779
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v11, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1784
    :goto_6
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v27

    if-nez v0, :cond_6

    .line 1785
    :goto_7
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v27, v0

    if-gez v0, :cond_5

    mul-long v0, v19, v25

    add-long v0, v0, v27

    .line 1786
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v2, v2, v27

    add-long v2, v2, v21

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v27, v27, v21

    goto :goto_7

    .line 1789
    :cond_5
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v14, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_9

    .line 1792
    :cond_6
    :goto_8
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v27, v0

    if-gez v0, :cond_7

    const-wide/16 v1, 0x2

    mul-long v3, v27, v1

    .line 1794
    iget-wide v5, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v5, v5, v27

    mul-long v7, v19, v25

    add-long/2addr v7, v3

    mul-long v3, v19, v1

    add-long/2addr v3, v5

    .line 1796
    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v21

    add-long v5, v5, v21

    .line 1797
    invoke-virtual {v13, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v14, v7, v8, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v27, v27, v21

    goto :goto_8

    .line 1799
    :cond_7
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v14, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1802
    :goto_9
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    div-long v19, v0, v36

    move/from16 v0, v33

    :goto_a
    if-ge v0, v12, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v19

    add-int/lit8 v10, v12, -0x1

    if-ne v0, v10, :cond_8

    .line 1805
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_b

    :cond_8
    add-long v1, v3, v19

    :goto_b
    move-wide v5, v1

    .line 1806
    new-instance v27, Lorg/jtransforms/fft/DoubleFFT_2D$23;

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

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/DoubleFFT_2D$23;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

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

    .line 1823
    :try_start_2
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1827
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

    .line 1825
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

    .line 1832
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_e

    :cond_a
    add-long v1, v3, v19

    :goto_e
    move-wide v5, v1

    .line 1833
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_2D$24;

    move-object v1, v15

    move-object/from16 v2, p0

    move-wide/from16 v7, v17

    move-wide/from16 v9, v23

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$24;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v35, v0

    add-int/lit8 v0, v0, 0x1

    move-object v15, v14

    goto :goto_d

    :cond_b
    move-object/from16 v13, p0

    move-object v14, v15

    .line 1855
    :try_start_3
    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 1859
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

    .line 1857
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

    .line 1863
    :goto_f
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 1864
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v3, v0

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v0, v0, v21

    goto :goto_f

    :cond_d
    move-object/from16 v5, p1

    move-wide/from16 v0, v27

    .line 1866
    :goto_10
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    .line 1867
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-object/from16 v4, v39

    invoke-virtual {v4, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_10

    :cond_e
    move-object/from16 v4, v39

    .line 1869
    iget-object v0, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    move-wide/from16 v0, v21

    :goto_11
    cmp-long v2, v0, v19

    if-gez v2, :cond_10

    const-wide/16 v2, 0x2

    mul-long v11, v0, v2

    move-wide/from16 v6, v27

    .line 1873
    :goto_12
    iget-wide v8, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    mul-long v8, v6, v2

    .line 1875
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v6

    add-long/2addr v2, v11

    mul-long v14, v0, v25

    add-long/2addr v14, v8

    .line 1876
    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v4, v14, v15, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v21

    add-long v2, v2, v21

    .line 1877
    invoke-virtual {v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v4, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v21

    const-wide/16 v2, 0x2

    goto :goto_12

    .line 1879
    :cond_f
    iget-object v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v6, v0, v25

    invoke-virtual {v2, v4, v6, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v0, v0, v21

    goto :goto_11

    .line 1882
    :cond_10
    iget-wide v0, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v27

    if-nez v0, :cond_12

    move-wide/from16 v0, v27

    .line 1883
    :goto_13
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_11

    mul-long v2, v19, v25

    add-long/2addr v2, v0

    .line 1884
    iget-wide v6, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v6, v0

    add-long v6, v6, v21

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_13

    .line 1887
    :cond_11
    iget-object v0, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v4, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    goto :goto_15

    :cond_12
    move-wide/from16 v0, v27

    .line 1890
    :goto_14
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const-wide/16 v2, 0x2

    mul-long v11, v0, v2

    .line 1892
    iget-wide v6, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v6, v0

    mul-long v8, v19, v25

    add-long/2addr v8, v11

    mul-long v11, v19, v2

    add-long/2addr v11, v6

    .line 1894
    invoke-virtual {v5, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v4, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v6, v6, v21

    .line 1895
    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v4, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v21

    goto :goto_14

    .line 1897
    :cond_13
    iget-object v0, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v19, v25

    invoke-virtual {v0, v4, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    :goto_15
    move-wide/from16 v0, v27

    .line 1900
    :goto_16
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

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

    .line 1905
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v5, v2, v3, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v8, v8, v21

    .line 1906
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v5, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v21

    const-wide/16 v2, 0x2

    goto :goto_17

    :cond_14
    add-long v0, v0, v21

    goto :goto_16

    :cond_15
    move-wide/from16 v0, v21

    .line 1911
    :goto_18
    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    mul-long v6, v0, v17

    sub-long/2addr v2, v0

    add-long v2, v2, v21

    mul-long v2, v2, v17

    move-wide/from16 v8, v23

    .line 1914
    :goto_19
    iget-wide v10, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v4, v8, v10

    if-gez v4, :cond_16

    const-wide/16 v14, 0x2

    mul-long v12, v8, v14

    sub-long/2addr v10, v8

    mul-long/2addr v10, v14

    .line 1917
    invoke-virtual {v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v5, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v12, v21

    add-long v10, v10, v21

    .line 1918
    invoke-virtual {v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    neg-double v10, v10

    invoke-virtual {v5, v14, v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v6, v12

    sub-long v12, v2, v12

    .line 1921
    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v5, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 1922
    invoke-virtual {v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    neg-double v12, v12

    invoke-virtual {v5, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

.method private mixedRadixRealForwardFull([D)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1511
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v7, 0x2

    .line 1512
    div-int/lit8 v8, v0, 0x2

    add-int/lit8 v13, v8, 0x1

    .line 1513
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v0, v7

    new-array v1, v7, [I

    const/4 v14, 0x1

    aput v0, v1, v14

    const/4 v15, 0x0

    aput v13, v1, v15

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[D

    .line 1515
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v14, :cond_c

    .line 1516
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v1, v8, -0x1

    if-lt v1, v6, :cond_c

    .line 1517
    new-array v5, v6, [Ljava/util/concurrent/Future;

    .line 1518
    div-int/2addr v0, v6

    move v2, v15

    :goto_0
    if-ge v2, v6, :cond_1

    mul-int v3, v2, v0

    add-int/lit8 v4, v6, -0x1

    if-ne v2, v4, :cond_0

    .line 1521
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v4, v3, v0

    .line 1522
    :goto_1
    new-instance v7, Lorg/jtransforms/fft/DoubleFFT_2D$17;

    invoke-direct {v7, v9, v3, v4, v10}, Lorg/jtransforms/fft/DoubleFFT_2D$17;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[D)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1533
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1537
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

    .line 1535
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v15

    .line 1540
    :goto_3
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_2

    .line 1541
    aget-object v2, v16, v15

    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v0

    aget-wide v3, v10, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1543
    :cond_2
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v16, v15

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    .line 1545
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

    .line 1549
    :goto_5
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_2D$18;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move v15, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$18;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D[D)V

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

    .line 1567
    :try_start_1
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1571
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

    .line 1569
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1574
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1575
    :goto_7
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1576
    aget-object v1, v16, v8

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v14

    aget-wide v2, v10, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1579
    :cond_5
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v8

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1582
    :goto_8
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 1584
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 1586
    aget-object v3, v16, v8

    mul-int/lit8 v4, v8, 0x2

    add-int/2addr v4, v2

    aget-wide v4, v10, v4

    aput-wide v4, v3, v1

    add-int/2addr v1, v14

    add-int/2addr v2, v14

    .line 1587
    aget-wide v4, v10, v2

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1589
    :cond_7
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v8

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    .line 1592
    :goto_9
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int v17, v0, v15

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v15, :cond_9

    mul-int v3, v0, v17

    add-int/lit8 v6, v15, -0x1

    if-ne v0, v6, :cond_8

    .line 1595
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v17

    :goto_b
    move v4, v1

    .line 1596
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_2D$19;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v13

    move v6, v12

    move-object v8, v7

    move-object/from16 v7, p1

    move-object v14, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$19;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[D[[D)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v14

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    move-object v14, v7

    .line 1613
    :try_start_2
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1617
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

    .line 1615
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

    .line 1622
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v17

    :goto_e
    move v4, v1

    .line 1623
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_2D$20;

    move-object v1, v8

    move-object/from16 v2, p0

    move v5, v12

    move v6, v13

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$20;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1645
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

    .line 1649
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

    .line 1647
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 1653
    :goto_f
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 1654
    iget-object v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v10, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    .line 1656
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    const/4 v1, 0x0

    .line 1657
    aget-object v2, v16, v1

    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v0

    aget-wide v3, v10, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    .line 1659
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v16, v1

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    const/4 v0, 0x1

    :goto_11
    if-ge v0, v8, :cond_10

    mul-int/lit8 v2, v0, 0x2

    move v3, v1

    .line 1663
    :goto_12
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v4, :cond_f

    mul-int/lit8 v4, v3, 0x2

    .line 1665
    iget v5, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 1666
    aget-object v6, v16, v0

    aget-wide v14, v10, v5

    aput-wide v14, v6, v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    add-int/2addr v5, v7

    .line 1667
    aget-wide v14, v10, v5

    aput-wide v14, v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1669
    :cond_f
    iget-object v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, v16, v0

    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1672
    :cond_10
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_12

    move v0, v1

    .line 1673
    :goto_13
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_11

    .line 1674
    aget-object v2, v16, v8

    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-wide v3, v10, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1677
    :cond_11
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v16, v8

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    goto :goto_15

    :cond_12
    move v0, v1

    .line 1680
    :goto_14
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_13

    mul-int/lit8 v2, v0, 0x2

    .line 1682
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v0

    .line 1684
    aget-object v4, v16, v8

    mul-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v3

    aget-wide v5, v10, v5

    aput-wide v5, v4, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    .line 1685
    aget-wide v5, v10, v3

    aput-wide v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1687
    :cond_13
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v16, v8

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    :goto_15
    move v0, v1

    .line 1690
    :goto_16
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v2, v0, 0x2

    move v3, v1

    :goto_17
    if-ge v3, v13, :cond_14

    mul-int/lit8 v4, v3, 0x2

    mul-int v5, v0, v12

    add-int/2addr v5, v4

    .line 1695
    aget-object v4, v16, v3

    aget-wide v6, v4, v2

    aput-wide v6, v10, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v14, v2, 0x1

    .line 1696
    aget-wide v6, v4, v14

    aput-wide v6, v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 1701
    :goto_18
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v2, v0, :cond_17

    mul-int v1, v2, v12

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    mul-int/2addr v0, v12

    move v3, v13

    .line 1704
    :goto_19
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v3, v4, :cond_16

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v3

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    .line 1707
    aget-wide v7, v10, v4

    aput-wide v7, v10, v5

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 1708
    aget-wide v14, v10, v4

    neg-double v14, v14

    aput-wide v14, v10, v7

    add-int v4, v1, v5

    sub-int v5, v0, v5

    .line 1711
    aget-wide v14, v10, v5

    aput-wide v14, v10, v4

    add-int/2addr v4, v8

    add-int/2addr v5, v8

    .line 1712
    aget-wide v14, v10, v5

    neg-double v14, v14

    aput-wide v14, v10, v4

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

.method private mixedRadixRealForwardFull([[D)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1312
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v7, 0x2

    div-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v11, 0x1

    .line 1313
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v0, v7

    new-array v1, v7, [I

    const/4 v13, 0x1

    aput v0, v1, v13

    const/4 v14, 0x0

    aput v12, v1, v14

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    .line 1315
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v13, :cond_c

    .line 1316
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v1, v11, -0x1

    if-lt v1, v6, :cond_c

    .line 1317
    new-array v5, v6, [Ljava/util/concurrent/Future;

    .line 1318
    div-int/2addr v0, v6

    move v2, v14

    :goto_0
    if-ge v2, v6, :cond_1

    mul-int v3, v2, v0

    add-int/lit8 v4, v6, -0x1

    if-ne v2, v4, :cond_0

    .line 1321
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v4, v3, v0

    .line 1322
    :goto_1
    new-instance v7, Lorg/jtransforms/fft/DoubleFFT_2D$13;

    invoke-direct {v7, v8, v3, v4, v9}, Lorg/jtransforms/fft/DoubleFFT_2D$13;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1333
    :try_start_0
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1337
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

    .line 1335
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v14

    .line 1340
    :goto_3
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_2

    .line 1341
    aget-object v2, v15, v14

    aget-object v3, v9, v0

    aget-wide v17, v3, v14

    aput-wide v17, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1343
    :cond_2
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v15, v14

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    .line 1345
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

    .line 1349
    :goto_5
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_2D$14;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object v5, v15

    move v14, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$14;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D[[D)V

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

    .line 1366
    :try_start_1
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1370
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

    .line 1368
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1373
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1374
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1375
    aget-object v1, v15, v11

    aget-object v2, v9, v0

    aget-wide v3, v2, v13

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1378
    :cond_5
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1381
    :goto_8
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 1384
    aget-object v2, v15, v11

    aget-object v3, v9, v0

    mul-int/lit8 v4, v11, 0x2

    aget-wide v4, v3, v4

    aput-wide v4, v2, v1

    add-int/2addr v1, v13

    .line 1385
    aget-wide v4, v3, v13

    aput-wide v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1387
    :cond_7
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    .line 1391
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int v11, v0, v14

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v14, :cond_9

    mul-int v3, v0, v11

    add-int/lit8 v6, v14, -0x1

    if-ne v0, v6, :cond_8

    .line 1394
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v11

    :goto_b
    move v4, v1

    .line 1395
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_2D$15;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move-object/from16 v6, p1

    move-object v13, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$15;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[[D[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v13

    const/4 v13, 0x1

    goto :goto_a

    :cond_9
    move-object v13, v7

    .line 1411
    :try_start_2
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1415
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

    .line 1413
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

    .line 1420
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v11

    :goto_e
    move v4, v1

    .line 1421
    new-instance v7, Lorg/jtransforms/fft/DoubleFFT_2D$16;

    move-object v1, v7

    move-object/from16 v2, p0

    move v5, v12

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$16;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[[D)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1440
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

    .line 1444
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

    .line 1442
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 1448
    :goto_f
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 1449
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v9, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    .line 1452
    :goto_10
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    const/4 v1, 0x0

    .line 1453
    aget-object v2, v15, v1

    aget-object v3, v9, v0

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    .line 1455
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v15, v1

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    const/4 v0, 0x1

    :goto_11
    if-ge v0, v11, :cond_10

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 1459
    :goto_12
    iget v3, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v2, v3, :cond_f

    mul-int/lit8 v3, v2, 0x2

    .line 1461
    aget-object v4, v15, v0

    aget-object v5, v9, v2

    aget-wide v6, v5, v1

    aput-wide v6, v4, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/lit8 v13, v1, 0x1

    .line 1462
    aget-wide v6, v5, v13

    aput-wide v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1464
    :cond_f
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v15, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1467
    :cond_10
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_12

    const/4 v1, 0x0

    .line 1468
    :goto_13
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v0, :cond_11

    .line 1469
    aget-object v0, v15, v11

    aget-object v2, v9, v1

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1472
    :cond_11
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    goto :goto_15

    :cond_12
    const/4 v1, 0x0

    .line 1475
    :goto_14
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v0, :cond_13

    mul-int/lit8 v0, v1, 0x2

    .line 1478
    aget-object v2, v15, v11

    aget-object v3, v9, v1

    mul-int/lit8 v4, v11, 0x2

    aget-wide v4, v3, v4

    aput-wide v4, v2, v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 1479
    aget-wide v5, v3, v4

    aput-wide v5, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1481
    :cond_13
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v15, v11

    invoke-virtual {v0, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    :goto_15
    const/4 v1, 0x0

    .line 1485
    :goto_16
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v0, :cond_15

    mul-int/lit8 v0, v1, 0x2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v12, :cond_14

    mul-int/lit8 v3, v2, 0x2

    .line 1489
    aget-object v4, v9, v1

    aget-object v5, v15, v2

    aget-wide v6, v5, v0

    aput-wide v6, v4, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/lit8 v13, v0, 0x1

    .line 1490
    aget-wide v10, v5, v13

    aput-wide v10, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_14
    const/4 v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v6, 0x1

    move v13, v6

    .line 1495
    :goto_18
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v13, v0, :cond_17

    sub-int/2addr v0, v13

    move v1, v12

    .line 1497
    :goto_19
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    const/4 v5, 0x0

    .line 1500
    aget-object v6, v9, v5

    aget-wide v10, v6, v2

    aput-wide v10, v6, v3

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 1501
    aget-wide v14, v6, v10

    neg-double v14, v14

    aput-wide v14, v6, v7

    .line 1502
    aget-object v6, v9, v13

    aget-object v11, v9, v0

    aget-wide v14, v11, v2

    aput-wide v14, v6, v3

    .line 1503
    aget-wide v2, v11, v10

    neg-double v2, v2

    aput-wide v2, v6, v7

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

.method private mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 42

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v12, p2

    .line 2337
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const-wide/16 v17, 0x2

    mul-long v19, v0, v17

    .line 2338
    div-long v21, v0, v17

    const-wide/16 v23, 0x1

    add-long v25, v21, v23

    .line 2339
    new-instance v14, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    mul-long v0, v25, v17

    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v0, v2

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2340
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long v27, v0, v17

    .line 2342
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    const-wide/16 v29, 0x0

    if-le v11, v0, :cond_c

    .line 2343
    iget-boolean v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    int-to-long v9, v11

    cmp-long v2, v0, v9

    if-ltz v2, :cond_c

    const-wide/16 v2, -0x1

    add-long v31, v21, v2

    cmp-long v2, v31, v9

    if-ltz v2, :cond_c

    .line 2344
    new-array v8, v11, [Ljava/util/concurrent/Future;

    .line 2345
    div-long v33, v0, v9

    const/16 v35, 0x0

    move/from16 v0, v35

    :goto_0
    if-ge v0, v11, :cond_1

    int-to-long v1, v0

    mul-long v3, v1, v33

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_0

    .line 2348
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_1

    :cond_0
    add-long v1, v3, v33

    :goto_1
    move-wide v5, v1

    .line 2349
    new-instance v36, Lorg/jtransforms/fft/DoubleFFT_2D$33;

    move-object/from16 v1, v36

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v37, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$33;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v36 .. v36}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v37

    goto :goto_0

    :cond_1
    move-object/from16 v37, v8

    const/4 v8, 0x0

    .line 2360
    :try_start_0
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2364
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

    .line 2362
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-wide/from16 v0, v29

    .line 2367
    :goto_3
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2368
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v2, v0

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_3

    .line 2370
    :cond_2
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v14, v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 2372
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

    .line 2376
    :goto_5
    new-instance v33, Lorg/jtransforms/fft/DoubleFFT_2D$34;

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

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$34;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

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

    .line 2394
    :try_start_1
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2398
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

    .line 2396
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2401
    :goto_6
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    rem-long v0, v0, v17

    cmp-long v0, v0, v29

    if-nez v0, :cond_6

    .line 2402
    :goto_7
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v29, v0

    if-gez v0, :cond_5

    mul-long v0, v21, v27

    add-long v0, v0, v29

    .line 2403
    iget-wide v2, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v2, v2, v29

    add-long v2, v2, v23

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v29, v29, v23

    goto :goto_7

    .line 2406
    :cond_5
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v21, v27

    move/from16 v3, p2

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_9

    :cond_6
    move/from16 v3, p2

    .line 2409
    :goto_8
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v29, v0

    if-gez v0, :cond_7

    mul-long v0, v29, v17

    .line 2411
    iget-wide v4, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v4, v4, v29

    mul-long v6, v21, v27

    add-long/2addr v6, v0

    mul-long v0, v21, v17

    add-long/2addr v0, v4

    .line 2413
    invoke-virtual {v13, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v14, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v23

    add-long v4, v4, v23

    .line 2414
    invoke-virtual {v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v14, v6, v7, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v29, v29, v23

    goto :goto_8

    .line 2416
    :cond_7
    iget-object v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v1, v21, v27

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2419
    :goto_9
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    div-long v17, v0, v38

    move/from16 v0, v35

    move/from16 v11, v40

    :goto_a
    if-ge v0, v11, :cond_9

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_8

    .line 2422
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_b

    :cond_8
    add-long v1, v3, v17

    :goto_b
    move-wide v5, v1

    .line 2423
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_2D$35;

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

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/DoubleFFT_2D$35;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

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

    .line 2440
    :try_start_2
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2444
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

    .line 2442
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

    .line 2449
    iget-wide v1, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_e

    :cond_a
    add-long v1, v3, v17

    :goto_e
    move-wide v5, v1

    .line 2450
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_2D$36;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide/from16 v7, v19

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$36;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v37, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v13

    goto :goto_d

    :cond_b
    move-object/from16 v12, p0

    .line 2472
    :try_start_3
    invoke-static/range {v37 .. v37}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2476
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

    .line 2474
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

    .line 2479
    :goto_f
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_d

    .line 2480
    iget-object v2, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v4, v0

    move-object/from16 v6, p1

    invoke-virtual {v2, v6, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v0, v0, v23

    goto :goto_f

    :cond_d
    move-object/from16 v6, p1

    move-wide/from16 v0, v29

    .line 2482
    :goto_10
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_e

    .line 2483
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v4, v0

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-object/from16 v2, v41

    invoke-virtual {v2, v0, v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_10

    :cond_e
    move-object/from16 v2, v41

    .line 2485
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    move-wide/from16 v0, v23

    :goto_11
    cmp-long v4, v0, v21

    if-gez v4, :cond_10

    mul-long v4, v0, v17

    move-wide/from16 v7, v29

    .line 2489
    :goto_12
    iget-wide v9, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_f

    mul-long v9, v7, v17

    .line 2491
    iget-wide v13, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v13, v7

    add-long/2addr v13, v4

    mul-long v15, v0, v27

    add-long/2addr v9, v15

    move-wide v15, v4

    .line 2492
    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v13, v13, v23

    .line 2493
    invoke-virtual {v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v23

    move-wide v4, v15

    goto :goto_12

    .line 2495
    :cond_f
    iget-object v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v7, v0, v27

    invoke-virtual {v4, v2, v7, v8, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v0, v0, v23

    goto :goto_11

    .line 2498
    :cond_10
    iget-wide v0, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    rem-long v0, v0, v17

    cmp-long v0, v0, v29

    if-nez v0, :cond_12

    move-wide/from16 v0, v29

    .line 2499
    :goto_13
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_11

    mul-long v4, v21, v27

    add-long/2addr v4, v0

    .line 2500
    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    add-long v7, v7, v23

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v2, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_13

    .line 2503
    :cond_11
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v4, v21, v27

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    goto :goto_15

    :cond_12
    move-wide/from16 v0, v29

    .line 2506
    :goto_14
    iget-wide v4, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_13

    mul-long v4, v0, v17

    .line 2508
    iget-wide v7, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v7, v0

    mul-long v9, v21, v27

    add-long/2addr v9, v4

    mul-long v4, v21, v17

    add-long/2addr v4, v7

    .line 2510
    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v7, v7, v23

    .line 2511
    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v2, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v0, v0, v23

    goto :goto_14

    .line 2513
    :cond_13
    iget-object v0, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v4, v21, v27

    invoke-virtual {v0, v2, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    :goto_15
    move-wide/from16 v0, v29

    .line 2516
    :goto_16
    iget-wide v3, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

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

    move-wide v15, v3

    .line 2521
    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v6, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v23

    add-long v9, v9, v23

    .line 2522
    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v6, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v23

    move-wide v3, v15

    goto :goto_17

    :cond_14
    add-long v0, v0, v23

    goto :goto_16

    :cond_15
    move-wide/from16 v0, v23

    .line 2527
    :goto_18
    iget-wide v2, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    mul-long v4, v0, v19

    sub-long/2addr v2, v0

    add-long v2, v2, v23

    mul-long v2, v2, v19

    move-wide/from16 v7, v25

    .line 2530
    :goto_19
    iget-wide v9, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_16

    mul-long v13, v7, v17

    sub-long/2addr v9, v7

    mul-long v9, v9, v17

    .line 2533
    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v6, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v13, v23

    add-long v9, v9, v23

    .line 2534
    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v6, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v4, v13

    sub-long v11, v2, v13

    .line 2537
    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v6, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    add-long v11, v11, v23

    .line 2538
    invoke-virtual {v6, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v6, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

.method private mixedRadixRealInverseFull([DZ)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v8, p2

    .line 2129
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v13, 0x2

    .line 2130
    div-int/lit8 v14, v0, 0x2

    add-int/lit8 v15, v14, 0x1

    .line 2131
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v0, v13

    new-array v1, v13, [I

    const/4 v7, 0x1

    aput v0, v1, v7

    const/16 v16, 0x0

    aput v15, v1, v16

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[D

    .line 2133
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    if-le v6, v7, :cond_c

    .line 2134
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v0, v6, :cond_c

    add-int/lit8 v5, v14, -0x1

    if-lt v5, v6, :cond_c

    .line 2135
    new-array v4, v6, [Ljava/util/concurrent/Future;

    .line 2136
    div-int/2addr v0, v6

    move/from16 v3, v16

    :goto_0
    if-ge v3, v6, :cond_1

    mul-int v18, v3, v0

    add-int/lit8 v1, v6, -0x1

    if-ne v3, v1, :cond_0

    .line 2139
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v1, v18, v0

    :goto_1
    move/from16 v19, v1

    .line 2140
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_2D$29;

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

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$29;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[DZ)V

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

    .line 2151
    :try_start_0
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2155
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

    .line 2153
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move/from16 v0, v16

    .line 2158
    :goto_3
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_2

    .line 2159
    aget-object v1, v17, v16

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    aget-wide v2, v10, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2161
    :cond_2
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v16

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    .line 2163
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

    .line 2167
    :goto_5
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_2D$30;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v20, v5

    move-object/from16 v5, v17

    move/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, p1

    move/from16 v22, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$30;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D[DZ)V

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

    .line 2185
    :try_start_1
    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2189
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

    .line 2187
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2192
    :goto_6
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    move/from16 v0, v16

    .line 2193
    :goto_7
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 2194
    aget-object v1, v17, v14

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v10, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2197
    :cond_5
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    goto :goto_9

    :cond_6
    move/from16 v0, v16

    .line 2200
    :goto_8
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 2202
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 2204
    aget-object v3, v17, v14

    mul-int/lit8 v4, v14, 0x2

    add-int/2addr v4, v2

    aget-wide v4, v10, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2205
    aget-wide v4, v10, v2

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2207
    :cond_7
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    .line 2210
    :goto_9
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    div-int v14, v0, v13

    move/from16 v0, v16

    :goto_a
    if-ge v0, v13, :cond_9

    mul-int v3, v0, v14

    add-int/lit8 v6, v13, -0x1

    if-ne v0, v6, :cond_8

    .line 2213
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v14

    :goto_b
    move v4, v1

    .line 2214
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_2D$31;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v15

    move/from16 v6, v21

    move-object/from16 v7, p1

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D$31;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[D[[D)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2231
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

    .line 2235
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

    .line 2233
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

    .line 2240
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v14

    :goto_e
    move v4, v1

    .line 2241
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_2D$32;

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v21

    move v6, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$32;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2263
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

    .line 2267
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

    .line 2265
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

    .line 2270
    :goto_f
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 2271
    iget-object v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v10, v2, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    move/from16 v0, v16

    .line 2273
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    .line 2274
    aget-object v1, v17, v16

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    aget-wide v2, v10, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2276
    :cond_e
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v16

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    move/from16 v7, v22

    :goto_11
    if-ge v7, v14, :cond_10

    mul-int/lit8 v0, v7, 0x2

    move/from16 v1, v16

    .line 2280
    :goto_12
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v1, v2, :cond_f

    mul-int/lit8 v2, v1, 0x2

    .line 2282
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 2283
    aget-object v4, v17, v7

    aget-wide v5, v10, v3

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2284
    aget-wide v5, v10, v3

    aput-wide v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2286
    :cond_f
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v7

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 2289
    :cond_10
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_12

    move/from16 v0, v16

    .line 2290
    :goto_13
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_11

    .line 2291
    aget-object v1, v17, v14

    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v10, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2294
    :cond_11
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    goto :goto_15

    :cond_12
    move/from16 v0, v16

    .line 2297
    :goto_14
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_13

    mul-int/lit8 v1, v0, 0x2

    .line 2299
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    .line 2301
    aget-object v3, v17, v14

    mul-int/lit8 v4, v14, 0x2

    add-int/2addr v4, v2

    aget-wide v4, v10, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2302
    aget-wide v4, v10, v2

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2304
    :cond_13
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v17, v14

    invoke-virtual {v0, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    :goto_15
    move/from16 v0, v16

    .line 2307
    :goto_16
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_15

    mul-int/lit8 v1, v0, 0x2

    move/from16 v2, v16

    :goto_17
    if-ge v2, v15, :cond_14

    mul-int/lit8 v3, v2, 0x2

    mul-int v12, v0, v21

    add-int/2addr v12, v3

    .line 2312
    aget-object v3, v17, v2

    aget-wide v4, v3, v1

    aput-wide v4, v10, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 2313
    aget-wide v4, v3, v7

    aput-wide v4, v10, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_15
    move/from16 v7, v22

    .line 2318
    :goto_18
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v7, v0, :cond_17

    mul-int v12, v7, v21

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v21

    move v1, v15

    .line 2321
    :goto_19
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    .line 2324
    aget-wide v5, v10, v2

    aput-wide v5, v10, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 2325
    aget-wide v13, v10, v2

    neg-double v13, v13

    aput-wide v13, v10, v5

    add-int v2, v12, v3

    sub-int v3, v0, v3

    .line 2328
    aget-wide v5, v10, v3

    aput-wide v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2329
    aget-wide v5, v10, v3

    neg-double v5, v5

    aput-wide v5, v10, v2

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

.method private mixedRadixRealInverseFull([[DZ)V
    .locals 22

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 1930
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_2D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v11, 0x2

    div-int/lit8 v12, v0, 0x2

    add-int/lit8 v13, v12, 0x1

    .line 1931
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    mul-int/2addr v0, v11

    new-array v1, v11, [I

    const/4 v14, 0x1

    aput v0, v1, v14

    const/4 v15, 0x0

    aput v13, v1, v15

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[D

    .line 1933
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v7

    if-le v7, v14, :cond_c

    .line 1934
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v0, v7, :cond_c

    add-int/lit8 v6, v12, -0x1

    if-lt v6, v7, :cond_c

    .line 1935
    new-array v5, v7, [Ljava/util/concurrent/Future;

    .line 1936
    div-int/2addr v0, v7

    move v4, v15

    :goto_0
    if-ge v4, v7, :cond_1

    mul-int v3, v4, v0

    add-int/lit8 v1, v7, -0x1

    if-ne v4, v1, :cond_0

    .line 1939
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_1

    :cond_0
    add-int v1, v3, v0

    :goto_1
    move/from16 v17, v1

    .line 1940
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_2D$25;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move/from16 v20, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$25;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[DZ)V

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

    .line 1951
    :try_start_0
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1955
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

    .line 1953
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v15

    .line 1958
    :goto_3
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_2

    .line 1959
    aget-object v1, v16, v15

    aget-object v2, p1, v0

    aget-wide v3, v2, v15

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1961
    :cond_2
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v15

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    .line 1963
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

    .line 1967
    :goto_5
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_2D$26;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v19, v5

    move-object/from16 v5, v16

    move-object v15, v6

    move-object/from16 v6, p1

    move/from16 v21, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$26;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D[[DZ)V

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

    .line 1984
    :try_start_1
    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1988
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

    .line 1986
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1991
    :goto_6
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1992
    :goto_7
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_5

    .line 1993
    aget-object v1, v16, v12

    aget-object v2, p1, v0

    aget-wide v3, v2, v14

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1996
    :cond_5
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    .line 1999
    :goto_8
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    .line 2002
    aget-object v2, v16, v12

    aget-object v3, p1, v0

    mul-int/lit8 v4, v12, 0x2

    aget-wide v4, v3, v4

    aput-wide v4, v2, v1

    add-int/2addr v1, v14

    .line 2003
    aget-wide v4, v3, v14

    aput-wide v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2005
    :cond_7
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    .line 2009
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    move/from16 v9, v21

    div-int v11, v0, v9

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v9, :cond_9

    mul-int v3, v0, v11

    add-int/lit8 v7, v9, -0x1

    if-ne v0, v7, :cond_8

    .line 2012
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_b

    :cond_8
    add-int v1, v3, v11

    :goto_b
    move v4, v1

    .line 2013
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_2D$27;

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v13

    move-object/from16 v6, p1

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$27;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[[D[[D)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2029
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

    .line 2033
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

    .line 2031
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

    .line 2038
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_e

    :cond_a
    add-int v1, v3, v11

    :goto_e
    move v4, v1

    .line 2039
    new-instance v7, Lorg/jtransforms/fft/DoubleFFT_2D$28;

    move-object v1, v7

    move-object/from16 v2, p0

    move v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D$28;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[[D)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2058
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

    .line 2062
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

    .line 2060
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_c
    const/4 v0, 0x0

    .line 2066
    :goto_f
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_d

    .line 2067
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, p1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_d
    const/4 v3, 0x0

    move v0, v3

    .line 2070
    :goto_10
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_e

    .line 2071
    aget-object v1, v16, v3

    aget-object v2, p1, v0

    aget-wide v4, v2, v3

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2073
    :cond_e
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v3

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    move v0, v14

    :goto_11
    if-ge v0, v12, :cond_10

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    .line 2077
    :goto_12
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v2, :cond_f

    mul-int/lit8 v2, v3, 0x2

    .line 2079
    aget-object v4, v16, v0

    aget-object v5, p1, v3

    aget-wide v6, v5, v1

    aput-wide v6, v4, v2

    add-int/2addr v2, v14

    add-int/lit8 v6, v1, 0x1

    .line 2080
    aget-wide v6, v5, v6

    aput-wide v6, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2082
    :cond_f
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, v16, v0

    invoke-virtual {v1, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2085
    :cond_10
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_12

    const/4 v3, 0x0

    .line 2086
    :goto_13
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v0, :cond_11

    .line 2087
    aget-object v0, v16, v12

    aget-object v1, p1, v3

    aget-wide v4, v1, v14

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2090
    :cond_11
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    goto :goto_15

    :cond_12
    const/4 v3, 0x0

    .line 2093
    :goto_14
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v0, :cond_13

    mul-int/lit8 v0, v3, 0x2

    .line 2096
    aget-object v1, v16, v12

    aget-object v2, p1, v3

    mul-int/lit8 v4, v12, 0x2

    aget-wide v4, v2, v4

    aput-wide v4, v1, v0

    add-int/2addr v0, v14

    .line 2097
    aget-wide v4, v2, v14

    aput-wide v4, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2099
    :cond_13
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, v16, v12

    invoke-virtual {v0, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    :goto_15
    const/4 v3, 0x0

    .line 2103
    :goto_16
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v0, :cond_15

    mul-int/lit8 v0, v3, 0x2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v13, :cond_14

    mul-int/lit8 v2, v1, 0x2

    .line 2107
    aget-object v4, p1, v3

    aget-object v5, v16, v1

    aget-wide v6, v5, v0

    aput-wide v6, v4, v2

    add-int/2addr v2, v14

    add-int/lit8 v6, v0, 0x1

    .line 2108
    aget-wide v6, v5, v6

    aput-wide v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2113
    :cond_15
    :goto_18
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v14, v0, :cond_17

    sub-int/2addr v0, v14

    move v1, v13

    .line 2115
    :goto_19
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_16

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v1

    mul-int/2addr v2, v11

    const/4 v4, 0x0

    .line 2118
    aget-object v5, p1, v4

    aget-wide v6, v5, v2

    aput-wide v6, v5, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 2119
    aget-wide v9, v5, v7

    neg-double v9, v9

    aput-wide v9, v5, v6

    .line 2120
    aget-object v5, p1, v14

    aget-object v9, p1, v0

    aget-wide v15, v9, v2

    aput-wide v15, v5, v3

    .line 2121
    aget-wide v2, v9, v7

    neg-double v2, v2

    aput-wide v2, v5, v6

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

.method private rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2582
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x1

    if-gez p1, :cond_0

    move-wide v6, v4

    :goto_0
    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    .line 2585
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    sub-long/2addr v8, v6

    .line 2586
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v12, v6, v10

    mul-long/2addr v8, v10

    .line 2588
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v10, v14

    .line 2589
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2590
    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v4

    .line 2591
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-long/2addr v12, v4

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v10, v14

    .line 2592
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2593
    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v4

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_1
    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    .line 2597
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    sub-long/2addr v8, v6

    .line 2598
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v12, v6, v10

    mul-long/2addr v8, v10

    .line 2600
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v10, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v14

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2601
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    sub-double v10, v10, v16

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v4

    add-long/2addr v12, v4

    .line 2602
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v10, v10, v16

    mul-double/2addr v10, v14

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2603
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    sub-double/2addr v10, v8

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rdft2d_sub(I[D)V
    .locals 11

    .line 2550
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    if-gez p1, :cond_0

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2553
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v2, p1

    .line 2554
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int v4, p1, v3

    mul-int/2addr v2, v3

    .line 2556
    aget-wide v5, p2, v4

    aget-wide v7, p2, v2

    sub-double v9, v5, v7

    add-double/2addr v5, v7

    .line 2557
    aput-wide v5, p2, v4

    .line 2558
    aput-wide v9, p2, v2

    add-int/2addr v2, v1

    .line 2559
    aget-wide v5, p2, v2

    add-int/2addr v4, v1

    aget-wide v7, p2, v4

    sub-double v9, v5, v7

    add-double/2addr v7, v5

    .line 2560
    aput-wide v7, p2, v4

    .line 2561
    aput-wide v9, p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 2565
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v2, p1

    .line 2566
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int v4, p1, v3

    mul-int/2addr v2, v3

    .line 2568
    aget-wide v5, p2, v4

    aget-wide v7, p2, v2

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    aput-wide v5, p2, v2

    .line 2569
    aget-wide v9, p2, v4

    sub-double/2addr v9, v5

    aput-wide v9, p2, v4

    add-int/2addr v2, v1

    add-int/2addr v4, v1

    .line 2570
    aget-wide v5, p2, v4

    aget-wide v9, p2, v2

    add-double/2addr v5, v9

    mul-double/2addr v5, v7

    aput-wide v5, p2, v2

    .line 2571
    aget-wide v2, p2, v4

    sub-double/2addr v2, v5

    aput-wide v2, p2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private rdft2d_sub(I[[D)V
    .locals 11

    .line 2613
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gez p1, :cond_0

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2616
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v3, p1

    .line 2617
    aget-object v4, p2, p1

    aget-wide v5, v4, v2

    aget-object v3, p2, v3

    aget-wide v7, v3, v2

    sub-double v9, v5, v7

    add-double/2addr v5, v7

    .line 2618
    aput-wide v5, v4, v2

    .line 2619
    aput-wide v9, v3, v2

    .line 2620
    aget-wide v5, v3, v1

    aget-wide v7, v4, v1

    sub-double v9, v5, v7

    add-double/2addr v7, v5

    .line 2621
    aput-wide v7, v4, v1

    .line 2622
    aput-wide v9, v3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 2626
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    sub-int/2addr v3, p1

    .line 2627
    aget-object v3, p2, v3

    aget-object v4, p2, p1

    aget-wide v5, v4, v2

    aget-wide v7, v3, v2

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    aput-wide v5, v3, v2

    .line 2628
    aget-wide v9, v4, v2

    sub-double/2addr v9, v5

    aput-wide v9, v4, v2

    .line 2629
    aget-wide v5, v4, v1

    aget-wide v9, v3, v1

    add-double/2addr v5, v9

    mul-double/2addr v5, v7

    aput-wide v5, v3, v1

    .line 2630
    aget-wide v7, v4, v1

    sub-double/2addr v7, v5

    aput-wide v7, v4, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private xdft2d0_subth1(II[DZ)V
    .locals 14

    .line 3102
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3104
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3107
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$37;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$37;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[DZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3134
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3138
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

    .line 3136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth1(II[[DZ)V
    .locals 14

    .line 3270
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3272
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3275
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$41;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$41;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3302
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3306
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

    .line 3304
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 15

    .line 3144
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    move-object v13, p0

    iget-wide v4, v13, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v4, v0

    :goto_0
    long-to-int v0, v4

    .line 3146
    new-array v2, v0, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3149
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_2D$38;

    move-object v4, v14

    move-object v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move v9, v3

    move v10, v0

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lorg/jtransforms/fft/DoubleFFT_2D$38;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JIIILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3176
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3180
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

    .line 3178
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(II[DZ)V
    .locals 14

    .line 3186
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3188
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3191
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$39;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$39;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[DZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3218
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3222
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

    .line 3220
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(II[[DZ)V
    .locals 14

    .line 3312
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object v10, p0

    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3314
    new-array v11, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_1

    .line 3317
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$42;

    move-object v2, v13

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move v6, v12

    move v7, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$42;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3344
    :try_start_0
    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3348
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

    .line 3346
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft2d0_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 16

    .line 3228
    const-class v1, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    move-object/from16 v12, p0

    iget v2, v12, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    :goto_0
    move v0, v2

    .line 3230
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move v14, v2

    :goto_1
    if-ge v14, v0, :cond_1

    int-to-long v7, v14

    .line 3233
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_2D$40;

    move-object v2, v15

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move v9, v0

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$40;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3260
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 3264
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

    .line 3262
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
.method public complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 232
    const-class v12, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 233
    iget-boolean v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const/4 v14, 0x0

    const-wide/16 v7, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    .line 234
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v0, v7

    iput-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    const/4 v0, -0x1

    if-le v13, v9, :cond_0

    .line 235
    iget-boolean v1, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 236
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 237
    invoke-direct {v10, v0, v11, v9}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_1

    :cond_0
    :goto_0
    int-to-long v1, v14

    .line 239
    iget-wide v3, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 240
    iget-object v3, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v1, v4

    invoke-virtual {v3, v11, v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {v10, v0, v11, v9}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 244
    :goto_1
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    div-long/2addr v0, v7

    iput-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    goto/16 :goto_b

    .line 246
    :cond_2
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v15, v0, v7

    if-le v13, v9, :cond_7

    .line 247
    iget-boolean v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget-wide v2, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    int-to-long v5, v13

    cmp-long v4, v2, v5

    if-ltz v4, :cond_7

    cmp-long v0, v0, v5

    if-ltz v0, :cond_7

    .line 248
    new-array v8, v13, [Ljava/util/concurrent/Future;

    .line 249
    div-long v17, v2, v5

    move v0, v14

    :goto_2
    if-ge v0, v13, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 252
    iget-wide v1, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_3

    :cond_3
    add-long v1, v3, v17

    :goto_3
    move-wide/from16 v19, v1

    .line 253
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_2D$3;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v22, v5

    move-wide/from16 v5, v19

    move-object/from16 v7, p1

    move-object/from16 v19, v8

    move-wide v8, v15

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$3;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v19

    move-wide/from16 v5, v22

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v5

    move-object/from16 v19, v8

    const/4 v9, 0x0

    .line 264
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 268
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

    .line 266
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :goto_4
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    div-long v17, v0, v22

    :goto_5
    if-ge v14, v13, :cond_6

    int-to-long v0, v14

    mul-long v3, v0, v17

    add-int/lit8 v0, v13, -0x1

    if-ne v14, v0, :cond_5

    .line 273
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    goto :goto_6

    :cond_5
    add-long v0, v3, v17

    :goto_6
    move-wide v5, v0

    .line 274
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v7, v15

    move/from16 v20, v13

    move-object v13, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_2D$4;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object v9, v13

    move/from16 v13, v20

    goto :goto_5

    :cond_6
    move-object v13, v9

    .line 299
    :try_start_1
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 303
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

    .line 301
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_7
    const-wide/16 v2, 0x0

    .line 306
    :goto_7
    iget-wide v4, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_8

    .line 307
    iget-object v4, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v12, v2, v15

    invoke-virtual {v4, v11, v12, v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long/2addr v2, v5

    goto :goto_7

    .line 309
    :cond_8
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v3, v7

    invoke-direct {v2, v3, v4, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 310
    :goto_8
    iget-wide v12, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v9, v3, v12

    if-gez v9, :cond_b

    mul-long v12, v3, v7

    const-wide/16 v17, 0x0

    .line 312
    :goto_9
    iget-wide v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v17, v0

    if-gez v0, :cond_9

    mul-long v0, v17, v7

    mul-long v21, v17, v15

    add-long v7, v21, v12

    move-wide/from16 v21, v3

    .line 315
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    add-long/2addr v7, v5

    .line 316
    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v17, v17, v5

    move-wide/from16 v3, v21

    const-wide/16 v7, 0x2

    goto :goto_9

    :cond_9
    move-wide/from16 v21, v3

    .line 318
    iget-object v0, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v0, 0x0

    .line 319
    :goto_a
    iget-wide v3, v10, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_a

    const-wide/16 v3, 0x2

    mul-long v7, v0, v3

    mul-long v17, v0, v15

    add-long v3, v17, v12

    .line 322
    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v11, v3, v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v5

    add-long/2addr v7, v5

    .line 323
    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v11, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-object/from16 v10, p0

    goto :goto_a

    :cond_a
    add-long v3, v21, v5

    move-object/from16 v10, p0

    const-wide/16 v7, 0x2

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexForward([D)V
    .locals 14

    .line 117
    const-class v0, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 118
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 119
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 120
    iget-boolean v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, v3, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[DZ)V

    .line 122
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v1, :cond_1

    .line 125
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    .line 129
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto/16 :goto_b

    .line 131
    :cond_2
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v11, v2, 0x2

    if-le v1, v4, :cond_7

    .line 132
    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v5, v1, :cond_7

    if-lt v2, v1, :cond_7

    .line 133
    new-array v2, v1, [Ljava/util/concurrent/Future;

    .line 134
    div-int v4, v5, v1

    move v12, v3

    :goto_2
    if-ge v12, v1, :cond_4

    mul-int v7, v12, v4

    add-int/lit8 v5, v1, -0x1

    if-ne v12, v5, :cond_3

    .line 137
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v5, v7, v4

    :goto_3
    move v8, v5

    .line 138
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$1;

    move-object v5, v13

    move-object v6, p0

    move-object v9, p1

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$1;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[DI)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 149
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int v12, v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v7, v3, v12

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_5

    .line 158
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v5, v7, v12

    :goto_6
    move v8, v5

    .line 159
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_2D$2;

    move-object v5, v13

    move-object v6, p0

    move v9, v11

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$2;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[D)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 184
    :cond_6
    :try_start_1
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 191
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 192
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-int v2, v0, v11

    invoke-virtual {v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 194
    new-array v0, v1, [D

    move v1, v3

    .line 195
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 197
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    mul-int v7, v5, v11

    add-int/2addr v7, v2

    .line 200
    aget-wide v8, p1, v7

    aput-wide v8, v0, v6

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    .line 201
    aget-wide v7, p1, v7

    aput-wide v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 203
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v5, v3

    .line 204
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    mul-int v7, v5, v11

    add-int/2addr v7, v2

    .line 207
    aget-wide v8, v0, v6

    aput-wide v8, p1, v7

    add-int/2addr v7, v4

    add-int/2addr v6, v4

    .line 208
    aget-wide v8, v0, v6

    aput-wide v8, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexForward([[D)V
    .locals 11

    .line 347
    const-class v0, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 348
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 349
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    const/4 v0, -0x1

    if-le v1, v4, :cond_0

    .line 350
    iget-boolean v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0, v3, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V

    .line 352
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    goto :goto_1

    .line 354
    :cond_0
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v1, :cond_1

    .line 355
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, v0, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    .line 359
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto/16 :goto_b

    :cond_2
    if-le v1, v4, :cond_7

    .line 360
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-lt v5, v1, :cond_7

    .line 361
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 362
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_3

    .line 365
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v7, v6, v2

    .line 366
    :goto_3
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_2D$5;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_2D$5;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 377
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 381
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 379
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_5

    .line 386
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v7, v6, v5

    .line 387
    :goto_6
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_2D$6;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_2D$6;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 410
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 414
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 417
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 418
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 420
    new-array v0, v1, [D

    move v1, v3

    .line 421
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 423
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    .line 425
    aget-object v7, p1, v5

    aget-wide v8, v7, v2

    aput-wide v8, v0, v6

    add-int/2addr v6, v4

    add-int/lit8 v8, v2, 0x1

    .line 426
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 428
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v5, v3

    .line 429
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    .line 431
    aget-object v7, p1, v5

    aget-wide v8, v0, v6

    aput-wide v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v6, v4

    .line 432
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 577
    const-class v14, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    .line 578
    iget-boolean v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const-wide/16 v7, 0x2

    const/4 v9, 0x1

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_2

    .line 579
    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v5, v7

    iput-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    if-le v15, v9, :cond_0

    .line 580
    iget-boolean v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 581
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 582
    invoke-direct {v11, v9, v12, v13}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 585
    :goto_0
    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v1, v5

    if-gez v0, :cond_1

    .line 586
    iget-object v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v5, v1

    invoke-virtual {v0, v12, v5, v6, v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v1, v3

    goto :goto_0

    .line 588
    :cond_1
    invoke-direct {v11, v9, v12, v13}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 590
    :goto_1
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    div-long/2addr v0, v7

    iput-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    goto/16 :goto_b

    .line 592
    :cond_2
    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long v16, v5, v7

    const/4 v10, 0x0

    if-le v15, v9, :cond_7

    .line 593
    iget-boolean v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_7

    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    int-to-long v12, v15

    cmp-long v0, v1, v12

    if-ltz v0, :cond_7

    cmp-long v0, v5, v12

    if-ltz v0, :cond_7

    .line 594
    new-array v8, v15, [Ljava/util/concurrent/Future;

    .line 595
    div-long v18, v1, v12

    move v0, v10

    :goto_2
    if-ge v0, v15, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v18

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_3

    .line 598
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    goto :goto_3

    :cond_3
    add-long v1, v3, v18

    :goto_3
    move-wide v5, v1

    .line 599
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_2D$9;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v21, v8

    move-wide/from16 v8, v16

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$9;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v21, v8

    const/4 v10, 0x0

    .line 610
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 614
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

    .line 612
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    :goto_4
    iget-wide v0, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    div-long v12, v0, v12

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v15, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v12

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_5

    .line 619
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    goto :goto_6

    :cond_5
    add-long v1, v3, v12

    :goto_6
    move-wide v5, v1

    .line 620
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_2D$10;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v7, v16

    move-object/from16 v9, p1

    move-wide/from16 v19, v12

    move-object v12, v10

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_2D$10;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move-object v10, v12

    move-wide/from16 v12, v19

    goto :goto_5

    :cond_6
    move-object v12, v10

    .line 645
    :try_start_1
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 649
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

    .line 647
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_7
    const-wide/16 v0, 0x0

    .line 652
    :goto_7
    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_8

    .line 653
    iget-object v2, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-long v5, v0, v16

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual {v2, v9, v5, v6, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v0, v3

    goto :goto_7

    :cond_8
    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 655
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    mul-long/2addr v1, v7

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 656
    :goto_8
    iget-wide v5, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_b

    mul-long v5, v1, v7

    const-wide/16 v12, 0x0

    .line 658
    :goto_9
    iget-wide v14, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_9

    mul-long v14, v12, v7

    mul-long v20, v12, v16

    add-long v7, v20, v5

    move-wide/from16 v20, v1

    .line 661
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v14, v15, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v3

    add-long/2addr v7, v3

    .line 662
    invoke-virtual {v9, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v14, v15, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v3

    move-wide/from16 v1, v20

    const-wide/16 v7, 0x2

    goto :goto_9

    :cond_9
    move-wide/from16 v20, v1

    .line 664
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 665
    :goto_a
    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_a

    const-wide/16 v7, 0x2

    mul-long v12, v1, v7

    mul-long v14, v1, v16

    add-long/2addr v14, v5

    .line 668
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v9, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v3

    add-long/2addr v12, v3

    .line 669
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v9, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v3

    goto :goto_a

    :cond_a
    add-long v1, v20, v3

    const-wide/16 v7, 0x2

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexInverse([DZ)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 458
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    .line 459
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const/4 v13, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 460
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-le v12, v1, :cond_0

    .line 461
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {v8, v13, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[DZ)V

    .line 463
    invoke-direct {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    goto :goto_1

    .line 466
    :cond_0
    :goto_0
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v13, v0, :cond_1

    .line 467
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v13

    invoke-virtual {v0, v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    .line 471
    :goto_1
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto/16 :goto_b

    .line 473
    :cond_2
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v14, v0, 0x2

    if-le v12, v1, :cond_7

    .line 474
    iget-boolean v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v2, v12, :cond_7

    if-lt v0, v12, :cond_7

    .line 475
    new-array v15, v12, [Ljava/util/concurrent/Future;

    .line 476
    div-int v0, v2, v12

    move v7, v13

    :goto_2
    if-ge v7, v12, :cond_4

    mul-int v3, v7, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v7, v1, :cond_3

    .line 479
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v1, v3, v0

    :goto_3
    move v4, v1

    .line 480
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_2D$7;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move v6, v14

    move/from16 v17, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$7;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[DIZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 491
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 495
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

    .line 493
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    :goto_4
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/2addr v0, v12

    :goto_5
    if-ge v13, v12, :cond_6

    mul-int v3, v13, v0

    add-int/lit8 v1, v12, -0x1

    if-ne v13, v1, :cond_5

    .line 500
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v1, v3, v0

    :goto_6
    move v4, v1

    .line 501
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_2D$8;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v14

    move-object/from16 v6, p1

    move/from16 v17, v12

    move-object v12, v7

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D$8;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object v7, v12

    move/from16 v12, v17

    goto :goto_5

    :cond_6
    move-object v12, v7

    .line 526
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 530
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

    .line 528
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v13

    .line 533
    :goto_7
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_8

    .line 534
    iget-object v2, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    mul-int v3, v0, v14

    invoke-virtual {v2, v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v2, v2, 0x2

    .line 536
    new-array v0, v2, [D

    move v2, v13

    .line 537
    :goto_8
    iget v3, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v2, v3, :cond_b

    mul-int/lit8 v3, v2, 0x2

    move v4, v13

    .line 539
    :goto_9
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v4, v5, :cond_9

    mul-int/lit8 v5, v4, 0x2

    mul-int v6, v4, v14

    add-int/2addr v6, v3

    .line 542
    aget-wide v11, v9, v6

    aput-wide v11, v0, v5

    add-int/2addr v5, v1

    add-int/2addr v6, v1

    .line 543
    aget-wide v6, v9, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 545
    :cond_9
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v4, v0, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v4, v13

    .line 546
    :goto_a
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v4, v5, :cond_a

    mul-int/lit8 v5, v4, 0x2

    mul-int v6, v4, v14

    add-int/2addr v6, v3

    .line 549
    aget-wide v11, v0, v5

    aput-wide v11, v9, v6

    add-int/2addr v6, v1

    add-int/2addr v5, v1

    .line 550
    aget-wide v11, v0, v5

    aput-wide v11, v9, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public complexInverse([[DZ)V
    .locals 13

    .line 696
    const-class v0, Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 697
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 698
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-le v1, v4, :cond_0

    .line 699
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0, v3, v4, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V

    .line 701
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    goto :goto_1

    .line 704
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v3, v0, :cond_1

    .line 705
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 707
    :cond_1
    invoke-direct {p0, v4, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    .line 709
    :goto_1
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto/16 :goto_b

    :cond_2
    if-le v1, v4, :cond_7

    .line 710
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-lt v2, v1, :cond_7

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-lt v5, v1, :cond_7

    .line 711
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 712
    div-int/2addr v2, v1

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    mul-int v8, v5, v2

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_3

    .line 715
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    goto :goto_3

    :cond_3
    add-int v6, v8, v2

    :goto_3
    move v9, v6

    .line 716
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_2D$11;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$11;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 727
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 731
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v5

    .line 729
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    :goto_4
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    div-int/2addr v5, v1

    :goto_5
    if-ge v3, v1, :cond_6

    mul-int v8, v3, v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_5

    .line 736
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    goto :goto_6

    :cond_5
    add-int v6, v8, v5

    :goto_6
    move v9, v6

    .line 737
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_2D$12;

    move-object v6, v12

    move-object v7, p0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/DoubleFFT_2D$12;-><init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[DZ)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 760
    :cond_6
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception p1

    .line 764
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception p1

    .line 762
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_7
    move v0, v3

    .line 767
    :goto_7
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_8

    .line 768
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v1, v1, 0x2

    .line 770
    new-array v0, v1, [D

    move v1, v3

    .line 771
    :goto_8
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    if-ge v1, v2, :cond_b

    mul-int/lit8 v2, v1, 0x2

    move v5, v3

    .line 773
    :goto_9
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_9

    mul-int/lit8 v6, v5, 0x2

    .line 775
    aget-object v7, p1, v5

    aget-wide v8, v7, v2

    aput-wide v8, v0, v6

    add-int/2addr v6, v4

    add-int/lit8 v8, v2, 0x1

    .line 776
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 778
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v5, v3

    .line 779
    :goto_a
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v5, v6, :cond_a

    mul-int/lit8 v6, v5, 0x2

    .line 781
    aget-object v7, p1, v5

    aget-wide v8, v0, v6

    aput-wide v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v6, v4

    .line 782
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_b
    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 9

    .line 874
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 877
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 878
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-wide/16 v4, 0x1

    move-object v3, p0

    move-object v7, p1

    .line 879
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 880
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 881
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    .line 883
    :goto_0
    iget-wide v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 884
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, p1, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 886
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 887
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_1
    return-void

    .line 875
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([D)V
    .locals 5

    .line 822
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 825
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 826
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[DZ)V

    .line 828
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    .line 829
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 831
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 832
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    .line 835
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    :goto_1
    return-void

    .line 823
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([[D)V
    .locals 5

    .line 926
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 929
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 930
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 931
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V

    .line 932
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    .line 933
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 935
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 936
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    .line 939
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    :goto_1
    return-void

    .line 927
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 9

    .line 991
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 992
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 993
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-wide/16 v4, 0x1

    move-object v3, p0

    move-object v7, p1

    .line 994
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 995
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 996
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    .line 998
    :goto_0
    iget-wide v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 999
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, p1, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 1001
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1002
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1004
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_2

    .line 1006
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_2
    return-void
.end method

.method public realForwardFull([D)V
    .locals 5

    .line 958
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 959
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 960
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 961
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[DZ)V

    .line 962
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    .line 963
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 965
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 966
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    .line 969
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    .line 971
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([D)V

    goto :goto_2

    .line 973
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull([D)V

    :goto_2
    return-void
.end method

.method public realForwardFull([[D)V
    .locals 5

    .line 1024
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1025
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1026
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-direct {p0, v2, v2, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V

    .line 1028
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    .line 1029
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1031
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v3, :cond_1

    .line 1032
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    .line 1035
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    .line 1037
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([[D)V

    goto :goto_2

    .line 1039
    :cond_2
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull([[D)V

    :goto_2
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 9

    .line 1133
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1136
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1137
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1138
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1139
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v4, 0x1

    const/4 v6, -0x1

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    .line 1140
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_1

    .line 1142
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1143
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 1144
    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1145
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v3, v0

    invoke-virtual {v2, p1, v3, v4, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1134
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([DZ)V
    .locals 3

    .line 1079
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1082
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1083
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1084
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    .line 1085
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    .line 1086
    invoke-direct {p0, v2, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[DZ)V

    goto :goto_1

    .line 1088
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    .line 1089
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    const/4 v0, 0x0

    .line 1090
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_1

    .line 1091
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1080
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([[DZ)V
    .locals 3

    .line 1187
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1190
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1191
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1192
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    .line 1193
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    .line 1194
    invoke-direct {p0, v2, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V

    goto :goto_1

    .line 1196
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    .line 1197
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    const/4 v0, 0x0

    .line 1198
    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v1, :cond_1

    .line 1199
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 1188
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 8

    .line 1256
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1257
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1258
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    .line 1259
    invoke-direct/range {v2 .. v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1260
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1261
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 1263
    :goto_0
    iget-wide v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rowsl:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1264
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columnsl:J

    mul-long/2addr v4, v2

    invoke-virtual {v0, p1, v4, v5, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 1266
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1267
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1269
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_2

    .line 1271
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    :goto_2
    return-void
.end method

.method public realInverseFull([DZ)V
    .locals 4

    .line 1221
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1222
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1223
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1224
    invoke-direct {p0, v1, v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth2(II[DZ)V

    .line 1225
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V

    .line 1226
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1228
    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v0, v2, :cond_1

    .line 1229
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->columns:I

    mul-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1231
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[DZ)V

    .line 1232
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[D)V

    .line 1234
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([D)V

    goto :goto_2

    .line 1236
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull([DZ)V

    :goto_2
    return-void
.end method

.method public realInverseFull([[DZ)V
    .locals 5

    .line 1291
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_2

    .line 1292
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1293
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1294
    invoke-direct {p0, v1, v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth2(II[[DZ)V

    .line 1295
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V

    .line 1296
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1298
    :goto_0
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->rows:I

    if-ge v2, v3, :cond_1

    .line 1299
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v0, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_sub(I[[DZ)V

    .line 1302
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->rdft2d_sub(I[[D)V

    .line 1304
    :goto_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([[D)V

    goto :goto_2

    .line 1306
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull([[DZ)V

    :goto_2
    return-void
.end method
