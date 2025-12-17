.class public Lorg/jtransforms/fft/FloatFFT_3D;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

.field private fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

.field private fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

.field private isPowerOfTwo:Z

.field private rowStride:I

.field private rowStridel:J

.field private rows:I

.field private rowsl:J

.field private sliceStride:I

.field private sliceStridel:J

.field private slices:I

.field private slicesl:J

.field private useThreads:Z


# direct methods
.method public constructor <init>(JJJ)V
    .locals 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    .line 78
    iput-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    cmp-long v3, p3, v1

    if-lez v3, :cond_6

    cmp-long v1, p5, v1

    if-lez v1, :cond_6

    long-to-int v1, p1

    .line 93
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    long-to-int v1, p3

    .line 94
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    long-to-int v1, p5

    .line 95
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 96
    iput-wide p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 97
    iput-wide p3, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    .line 98
    iput-wide p5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long v2, p3, p5

    long-to-int v4, v2

    .line 99
    iput v4, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 100
    iput v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    .line 101
    iput-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 102
    iput-wide p5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v1, p1, p3

    mul-long/2addr v1, p5

    .line 104
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 105
    iput-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    .line 107
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p5, p6}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iput-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    :cond_1
    const-wide/16 v3, 0x2

    mul-long/2addr v3, p1

    mul-long/2addr v3, p3

    mul-long/2addr v3, p5

    .line 110
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 111
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    .line 113
    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    goto :goto_0

    .line 115
    :cond_3
    new-instance v0, Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p3, p4}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    :goto_0
    cmp-long p1, p1, p5

    if-nez p1, :cond_4

    .line 118
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    goto :goto_1

    :cond_4
    cmp-long p1, p3, p5

    if-nez p1, :cond_5

    .line 120
    iget-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    goto :goto_1

    .line 122
    :cond_5
    new-instance p1, Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-direct {p1, p5, p6}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    :goto_1
    return-void

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    return p0
.end method

.method static synthetic access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    return p0
.end method

.method static synthetic access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    return-object p0
.end method

.method static synthetic access$800(Lorg/jtransforms/fft/FloatFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    return-wide v0
.end method

.method private cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 4749
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 4750
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 4754
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    shr-long/2addr v3, v7

    goto :goto_1

    :cond_1
    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    const/4 v7, 0x2

    goto :goto_0

    .line 4759
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v21, 0x2

    const-wide/16 v23, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_c

    .line 4761
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_6

    const-wide/16 v2, 0x0

    .line 4762
    :goto_2
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_16

    .line 4763
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v25, 0x0

    .line 4764
    :goto_3
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v25, v11

    if-gez v6, :cond_5

    const-wide/16 v11, 0x0

    .line 4765
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_3

    .line 4766
    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v9, v11

    add-long/2addr v9, v4

    add-long v9, v9, v25

    move-wide/from16 v27, v2

    mul-long v2, v11, v21

    mul-long v29, v13, v21

    move-wide/from16 v31, v4

    add-long v4, v29, v2

    mul-long v29, v13, v21

    move-wide/from16 v33, v11

    add-long v11, v4, v29

    mul-long v13, v13, v21

    add-long/2addr v13, v11

    .line 4771
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v23

    move-wide/from16 v29, v13

    add-long v13, v9, v23

    .line 4772
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v9, v21

    .line 4773
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v23

    add-long v2, v9, v17

    .line 4774
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x4

    add-long v4, v9, v2

    .line 4775
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v23

    const-wide/16 v2, 0x5

    add-long v13, v9, v2

    .line 4776
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v9, v15

    .line 4777
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    move-wide/from16 v11, v29

    invoke-virtual {v7, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v11, v23

    const-wide/16 v2, 0x7

    add-long/2addr v9, v2

    .line 4778
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v33, v23

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    const-wide/16 v9, 0x4

    goto :goto_4

    :cond_3
    move-wide/from16 v27, v2

    move-wide/from16 v31, v4

    .line 4780
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4781
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long v3, v3, v21

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4782
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4783
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4784
    :goto_5
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 4785
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v8, v2

    add-long v8, v8, v31

    add-long v8, v8, v25

    mul-long v10, v2, v21

    mul-long v12, v4, v21

    add-long/2addr v12, v10

    mul-long v29, v4, v21

    move-wide/from16 v33, v2

    add-long v2, v12, v29

    mul-long v4, v4, v21

    add-long/2addr v4, v2

    .line 4790
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v4

    add-long v4, v8, v23

    add-long v10, v10, v23

    .line 4791
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v21

    .line 4792
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v17

    add-long v12, v12, v23

    .line 4793
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4794
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v23

    .line 4795
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v8, v15

    move-wide/from16 v4, v29

    .line 4796
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v4, v4, v23

    .line 4797
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v33, v23

    goto :goto_5

    :cond_4
    const-wide/16 v2, 0x8

    add-long v25, v25, v2

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    const-wide/16 v9, 0x4

    goto/16 :goto_3

    :cond_5
    move-wide/from16 v27, v2

    add-long v2, v27, v23

    const-wide/16 v9, 0x4

    goto/16 :goto_2

    :cond_6
    move-wide v4, v9

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    const-wide/16 v2, 0x0

    .line 4802
    :goto_6
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 4803
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 4804
    :goto_7
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    .line 4805
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v4

    mul-long v14, v8, v21

    mul-long v10, v10, v21

    add-long/2addr v10, v14

    .line 4808
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v23

    move-wide/from16 v19, v2

    add-long v2, v12, v23

    .line 4809
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v12, v21

    .line 4810
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v23

    add-long v12, v12, v17

    .line 4811
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v23

    move-wide/from16 v2, v19

    goto :goto_7

    :cond_7
    move-wide/from16 v19, v2

    .line 4813
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4814
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long v8, v8, v21

    invoke-virtual {v2, v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4815
    :goto_8
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v2, v8

    if-gez v6, :cond_8

    .line 4816
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v2

    add-long/2addr v10, v4

    mul-long v12, v2, v21

    mul-long v8, v8, v21

    add-long/2addr v8, v12

    .line 4819
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v10, v23

    add-long v12, v12, v23

    .line 4820
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v10, v21

    .line 4821
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v17

    add-long v8, v8, v23

    .line 4822
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v23

    goto :goto_8

    :cond_8
    add-long v2, v19, v23

    goto/16 :goto_6

    :cond_9
    cmp-long v2, v2, v21

    if-nez v2, :cond_16

    const-wide/16 v2, 0x0

    .line 4826
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 4827
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 4828
    :goto_a
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_a

    .line 4829
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    mul-long v12, v8, v21

    .line 4831
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v23

    add-long v10, v10, v23

    .line 4832
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v23

    goto :goto_a

    .line 4834
    :cond_a
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v8, 0x0

    .line 4835
    :goto_b
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_b

    .line 4836
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    mul-long v12, v8, v21

    .line 4838
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v23

    add-long v12, v12, v23

    .line 4839
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v23

    goto :goto_b

    :cond_b
    add-long v2, v2, v23

    goto :goto_9

    .line 4843
    :cond_c
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v8, v3, v5

    if-lez v8, :cond_10

    const-wide/16 v3, 0x0

    .line 4844
    :goto_c
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_16

    .line 4845
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 4846
    :goto_d
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    const-wide/16 v10, 0x0

    .line 4847
    :goto_e
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_d

    move-wide/from16 v25, v3

    .line 4848
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v3, v8

    move-wide/from16 v27, v8

    mul-long v8, v10, v21

    mul-long v29, v12, v21

    move-wide/from16 v31, v5

    add-long v5, v29, v8

    mul-long v29, v12, v21

    move-wide/from16 v33, v10

    add-long v10, v5, v29

    mul-long v12, v12, v21

    add-long/2addr v12, v10

    .line 4853
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    invoke-virtual {v7, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v23

    move-wide/from16 v29, v12

    add-long v12, v3, v23

    .line 4854
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v7, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v3, v21

    .line 4855
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v23

    add-long v8, v3, v17

    .line 4856
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 4857
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v23

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 4858
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v3, v15

    .line 4859
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v10, v23

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 4860
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v7, v12, v13, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v33, v23

    move-wide/from16 v3, v25

    move-wide/from16 v8, v27

    move-wide/from16 v5, v31

    goto :goto_e

    :cond_d
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move-wide/from16 v27, v8

    .line 4862
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4863
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long v4, v4, v21

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4864
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4865
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4866
    :goto_f
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_e

    .line 4867
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v8, v3

    add-long v8, v8, v31

    add-long v8, v8, v27

    mul-long v10, v3, v21

    mul-long v12, v5, v21

    add-long/2addr v12, v10

    mul-long v29, v5, v21

    move-wide/from16 v33, v3

    add-long v2, v12, v29

    mul-long v5, v5, v21

    add-long/2addr v5, v2

    .line 4872
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v5

    add-long v4, v8, v23

    add-long v10, v10, v23

    .line 4873
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v21

    .line 4874
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v17

    add-long v12, v12, v23

    .line 4875
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4876
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v23

    .line 4877
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 4878
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v23

    .line 4879
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v33, v23

    move/from16 v2, p3

    move-wide v3, v8

    goto :goto_f

    :cond_e
    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v8, 0x8

    add-long v10, v27, v8

    move/from16 v2, p3

    move-wide v8, v10

    move-wide/from16 v3, v25

    move-wide/from16 v5, v31

    goto/16 :goto_d

    :cond_f
    move-wide/from16 v25, v3

    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v8, 0x8

    add-long v10, v25, v23

    move/from16 v2, p3

    move-wide v3, v10

    goto/16 :goto_c

    :cond_10
    const-wide/16 v5, 0x4

    cmp-long v2, v3, v5

    if-nez v2, :cond_13

    const-wide/16 v3, 0x0

    .line 4884
    :goto_10
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_16

    .line 4885
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 4886
    :goto_11
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_11

    .line 4887
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v5

    mul-long v14, v8, v21

    mul-long v10, v10, v21

    add-long/2addr v10, v14

    .line 4890
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v23

    move-wide/from16 v19, v3

    add-long v2, v12, v23

    .line 4891
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v12, v21

    .line 4892
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v23

    add-long v12, v12, v17

    .line 4893
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v23

    move-wide/from16 v3, v19

    goto :goto_11

    :cond_11
    move-wide/from16 v19, v3

    .line 4895
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v8, p3

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4896
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    mul-long v3, v3, v21

    invoke-virtual {v2, v7, v3, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4897
    :goto_12
    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v2, v3, v9

    if-gez v2, :cond_12

    .line 4898
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v3

    add-long/2addr v11, v5

    mul-long v13, v3, v21

    mul-long v9, v9, v21

    add-long/2addr v9, v13

    .line 4901
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide v15, v5

    add-long v5, v11, v23

    add-long v13, v13, v23

    .line 4902
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v11, v21

    .line 4903
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    add-long v9, v9, v23

    .line 4904
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v23

    move-wide v5, v15

    goto :goto_12

    :cond_12
    add-long v3, v19, v23

    goto/16 :goto_10

    :cond_13
    move/from16 v8, p3

    cmp-long v2, v3, v21

    if-nez v2, :cond_16

    const-wide/16 v3, 0x0

    .line 4908
    :goto_13
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_16

    .line 4909
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v9, 0x0

    .line 4910
    :goto_14
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v2, v9, v11

    if-gez v2, :cond_14

    .line 4911
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v9

    add-long/2addr v11, v5

    mul-long v13, v9, v21

    .line 4913
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v23

    add-long v11, v11, v23

    .line 4914
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v23

    goto :goto_14

    .line 4916
    :cond_14
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v7, v9, v10, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v11, v9

    .line 4917
    :goto_15
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v2, v11, v13

    if-gez v2, :cond_15

    .line 4918
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v13, v11

    add-long/2addr v13, v5

    mul-long v9, v11, v21

    .line 4920
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v23

    add-long v9, v9, v23

    .line 4921
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v23

    const-wide/16 v9, 0x0

    goto :goto_15

    :cond_15
    add-long v3, v3, v23

    goto :goto_13

    :cond_16
    return-void
.end method

.method private cdft3db_sub(I[FZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 4568
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 4569
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4573
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4578
    :cond_2
    :goto_0
    new-array v2, v2, [F

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v5, :cond_c

    if-le v3, v4, :cond_6

    move v1, v6

    .line 4581
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4582
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v5, v6

    .line 4583
    :goto_2
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v8, :cond_5

    move v8, v6

    .line 4584
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v8, v9, :cond_3

    .line 4585
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v12, v9, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    .line 4590
    aget v14, p2, v10

    aput v14, v2, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v10, 0x1

    .line 4591
    aget v14, p2, v14

    aput v14, v2, v11

    add-int/lit8 v11, v10, 0x2

    .line 4592
    aget v11, p2, v11

    aput v11, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v10, 0x3

    .line 4593
    aget v11, p2, v11

    aput v11, v2, v12

    add-int/lit8 v11, v10, 0x4

    .line 4594
    aget v11, p2, v11

    aput v11, v2, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v10, 0x5

    .line 4595
    aget v11, p2, v11

    aput v11, v2, v13

    add-int/lit8 v11, v10, 0x6

    .line 4596
    aget v11, p2, v11

    aput v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x7

    .line 4597
    aget v10, p2, v10

    aput v10, v2, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4599
    :cond_3
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v8, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4600
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4601
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v9, v4

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4602
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v6

    .line 4603
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v8, v9, :cond_4

    .line 4604
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v12, v9, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    .line 4609
    aget v14, v2, v11

    aput v14, p2, v10

    add-int/lit8 v14, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 4610
    aget v11, v2, v11

    aput v11, p2, v14

    add-int/lit8 v11, v10, 0x2

    .line 4611
    aget v14, v2, v12

    aput v14, p2, v11

    add-int/lit8 v11, v10, 0x3

    add-int/lit8 v12, v12, 0x1

    .line 4612
    aget v12, v2, v12

    aput v12, p2, v11

    add-int/lit8 v11, v10, 0x4

    .line 4613
    aget v12, v2, v13

    aput v12, p2, v11

    add-int/lit8 v11, v10, 0x5

    add-int/lit8 v13, v13, 0x1

    .line 4614
    aget v12, v2, v13

    aput v12, p2, v11

    add-int/lit8 v11, v10, 0x6

    .line 4615
    aget v12, v2, v9

    aput v12, p2, v11

    add-int/lit8 v10, v10, 0x7

    add-int/lit8 v9, v9, 0x1

    .line 4616
    aget v9, v2, v9

    aput v9, p2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    if-ne v3, v4, :cond_9

    move v1, v6

    .line 4621
    :goto_5
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4622
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v4, v6

    .line 4623
    :goto_6
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_7

    .line 4624
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    .line 4627
    aget v10, p2, v8

    aput v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v8, 0x1

    .line 4628
    aget v10, p2, v10

    aput v10, v2, v9

    add-int/lit8 v9, v8, 0x2

    .line 4629
    aget v9, p2, v9

    aput v9, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 4630
    aget v8, p2, v8

    aput v8, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4632
    :cond_7
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v4, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4633
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v5, v7

    invoke-virtual {v4, v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v4, v6

    .line 4634
    :goto_7
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_8

    .line 4635
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    .line 4638
    aget v10, v2, v9

    aput v10, p2, v8

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 4639
    aget v9, v2, v9

    aput v9, p2, v10

    add-int/lit8 v9, v8, 0x2

    .line 4640
    aget v10, v2, v5

    aput v10, p2, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 4641
    aget v5, v2, v5

    aput v5, p2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v7, :cond_16

    move v1, v6

    .line 4645
    :goto_8
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4646
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v4, v6

    .line 4647
    :goto_9
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_a

    .line 4648
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    mul-int/lit8 v7, v4, 0x2

    .line 4650
    aget v8, p2, v5

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 4651
    aget v5, p2, v5

    aput v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4653
    :cond_a
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v4, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v4, v6

    .line 4654
    :goto_a
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_b

    .line 4655
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    mul-int/lit8 v7, v4, 0x2

    .line 4657
    aget v8, v2, v7

    aput v8, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 4658
    aget v7, v2, v7

    aput v7, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-le v3, v4, :cond_10

    move v3, v6

    .line 4663
    :goto_b
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v5, :cond_16

    .line 4664
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v3

    move v8, v6

    .line 4665
    :goto_c
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v8, v9, :cond_f

    move v9, v6

    .line 4666
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v9, v10, :cond_d

    .line 4667
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 4672
    aget v15, p2, v11

    aput v15, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 4673
    aget v15, p2, v15

    aput v15, v2, v12

    add-int/lit8 v12, v11, 0x2

    .line 4674
    aget v12, p2, v12

    aput v12, v2, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 4675
    aget v12, p2, v12

    aput v12, v2, v13

    add-int/lit8 v12, v11, 0x4

    .line 4676
    aget v12, p2, v12

    aput v12, v2, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 4677
    aget v12, p2, v12

    aput v12, v2, v14

    add-int/lit8 v12, v11, 0x6

    .line 4678
    aget v12, p2, v12

    aput v12, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 4679
    aget v11, p2, v11

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4681
    :cond_d
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4682
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4683
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4684
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4685
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v9, v10, :cond_e

    .line 4686
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 4691
    aget v15, v2, v12

    aput v15, p2, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 4692
    aget v12, v2, v12

    aput v12, p2, v15

    add-int/lit8 v12, v11, 0x2

    .line 4693
    aget v15, v2, v13

    aput v15, p2, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 4694
    aget v13, v2, v13

    aput v13, p2, v12

    add-int/lit8 v12, v11, 0x4

    .line 4695
    aget v13, v2, v14

    aput v13, p2, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 4696
    aget v13, v2, v14

    aput v13, p2, v12

    add-int/lit8 v12, v11, 0x6

    .line 4697
    aget v13, v2, v10

    aput v13, p2, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 4698
    aget v10, v2, v10

    aput v10, p2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_10
    if-ne v3, v4, :cond_13

    move v3, v6

    .line 4703
    :goto_f
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    .line 4704
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    move v5, v6

    .line 4705
    :goto_10
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v8, :cond_11

    .line 4706
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    .line 4709
    aget v11, p2, v9

    aput v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 4710
    aget v11, p2, v11

    aput v11, v2, v10

    add-int/lit8 v10, v9, 0x2

    .line 4711
    aget v10, p2, v10

    aput v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x3

    .line 4712
    aget v9, p2, v9

    aput v9, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 4714
    :cond_11
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4715
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v8, v7

    invoke-virtual {v5, v2, v8, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v5, v6

    .line 4716
    :goto_11
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v8, :cond_12

    .line 4717
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    .line 4720
    aget v11, v2, v10

    aput v11, p2, v9

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 4721
    aget v10, v2, v10

    aput v10, p2, v11

    add-int/lit8 v10, v9, 0x2

    .line 4722
    aget v11, v2, v8

    aput v11, p2, v10

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v8, v8, 0x1

    .line 4723
    aget v8, v2, v8

    aput v8, p2, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    if-ne v3, v7, :cond_16

    move v3, v6

    .line 4727
    :goto_12
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    .line 4728
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    move v5, v6

    .line 4729
    :goto_13
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v7, :cond_14

    .line 4730
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    mul-int/lit8 v8, v5, 0x2

    .line 4732
    aget v9, p2, v7

    aput v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 4733
    aget v7, p2, v7

    aput v7, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 4735
    :cond_14
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v5, v6

    .line 4736
    :goto_14
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v7, :cond_15

    .line 4737
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    mul-int/lit8 v8, v5, 0x2

    .line 4739
    aget v9, v2, v8

    aput v9, p2, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 4740
    aget v8, v2, v8

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_16
    return-void
.end method

.method private cdft3db_sub(I[[[FZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 4930
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 4931
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4935
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4940
    :cond_2
    :goto_0
    new-array v2, v2, [F

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v10, p1

    if-ne v10, v5, :cond_c

    if-le v3, v4, :cond_6

    move v1, v7

    .line 4943
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 4944
    :goto_2
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v5, :cond_5

    move v5, v7

    .line 4945
    :goto_3
    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_3

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 4950
    aget-object v13, p2, v5

    aget-object v13, v13, v1

    aget v14, v13, v3

    aput v14, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v14, v3, 0x1

    .line 4951
    aget v14, v13, v14

    aput v14, v2, v10

    add-int/lit8 v10, v3, 0x2

    .line 4952
    aget v10, v13, v10

    aput v10, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v10, v3, 0x3

    .line 4953
    aget v10, v13, v10

    aput v10, v2, v11

    add-int/lit8 v10, v3, 0x4

    .line 4954
    aget v10, v13, v10

    aput v10, v2, v12

    add-int/2addr v12, v9

    add-int/lit8 v10, v3, 0x5

    .line 4955
    aget v10, v13, v10

    aput v10, v2, v12

    add-int/lit8 v10, v3, 0x6

    .line 4956
    aget v10, v13, v10

    aput v10, v2, v6

    add-int/2addr v6, v9

    add-int/lit8 v10, v3, 0x7

    .line 4957
    aget v10, v13, v10

    aput v10, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4959
    :cond_3
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v2, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4960
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v6, v8

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4961
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v6, v4

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4962
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v5, v7

    .line 4963
    :goto_4
    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 4968
    aget-object v13, p2, v5

    aget-object v13, v13, v1

    aget v14, v2, v10

    aput v14, v13, v3

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v10, v9

    .line 4969
    aget v10, v2, v10

    aput v10, v13, v14

    add-int/lit8 v10, v3, 0x2

    .line 4970
    aget v14, v2, v11

    aput v14, v13, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v9

    .line 4971
    aget v11, v2, v11

    aput v11, v13, v10

    add-int/lit8 v10, v3, 0x4

    .line 4972
    aget v11, v2, v12

    aput v11, v13, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v9

    .line 4973
    aget v11, v2, v12

    aput v11, v13, v10

    add-int/lit8 v10, v3, 0x6

    .line 4974
    aget v11, v2, v6

    aput v11, v13, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v6, v9

    .line 4975
    aget v6, v2, v6

    aput v6, v13, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    if-ne v3, v4, :cond_9

    move v1, v7

    .line 4980
    :goto_5
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 4981
    :goto_6
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_7

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 4984
    aget-object v10, p2, v3

    aget-object v10, v10, v1

    aget v11, v10, v7

    aput v11, v2, v5

    add-int/2addr v5, v9

    .line 4985
    aget v11, v10, v9

    aput v11, v2, v5

    .line 4986
    aget v5, v10, v8

    aput v5, v2, v4

    add-int/2addr v4, v9

    .line 4987
    aget v5, v10, v6

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4989
    :cond_7
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4990
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v7

    .line 4991
    :goto_7
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_8

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 4994
    aget-object v10, p2, v3

    aget-object v10, v10, v1

    aget v11, v2, v5

    aput v11, v10, v7

    add-int/2addr v5, v9

    .line 4995
    aget v5, v2, v5

    aput v5, v10, v9

    .line 4996
    aget v5, v2, v4

    aput v5, v10, v8

    add-int/2addr v4, v9

    .line 4997
    aget v4, v2, v4

    aput v4, v10, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v8, :cond_16

    move v1, v7

    .line 5001
    :goto_8
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 5002
    :goto_9
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_a

    mul-int/lit8 v4, v3, 0x2

    .line 5004
    aget-object v5, p2, v3

    aget-object v5, v5, v1

    aget v6, v5, v7

    aput v6, v2, v4

    add-int/2addr v4, v9

    .line 5005
    aget v5, v5, v9

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 5007
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v7

    .line 5008
    :goto_a
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_b

    mul-int/lit8 v4, v3, 0x2

    .line 5010
    aget-object v5, p2, v3

    aget-object v5, v5, v1

    aget v6, v2, v4

    aput v6, v5, v7

    add-int/2addr v4, v9

    .line 5011
    aget v4, v2, v4

    aput v4, v5, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-le v3, v4, :cond_10

    move v3, v7

    .line 5016
    :goto_b
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v5, :cond_16

    move v5, v7

    .line 5017
    :goto_c
    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_f

    move v6, v7

    .line 5018
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v10, :cond_d

    mul-int/lit8 v11, v6, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 5023
    aget-object v14, p2, v6

    aget-object v14, v14, v3

    aget v15, v14, v5

    aput v15, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v15, v5, 0x1

    .line 5024
    aget v15, v14, v15

    aput v15, v2, v11

    add-int/lit8 v11, v5, 0x2

    .line 5025
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/2addr v12, v9

    add-int/lit8 v11, v5, 0x3

    .line 5026
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/lit8 v11, v5, 0x4

    .line 5027
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/2addr v13, v9

    add-int/lit8 v11, v5, 0x5

    .line 5028
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/lit8 v11, v5, 0x6

    .line 5029
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v11, v5, 0x7

    .line 5030
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 5032
    :cond_d
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v2, v7, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5033
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v10, v8

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5034
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v10, v4

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5035
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v6, v7

    .line 5036
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v10, :cond_e

    mul-int/lit8 v11, v6, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 5041
    aget-object v14, p2, v6

    aget-object v14, v14, v3

    aget v15, v2, v11

    aput v15, v14, v5

    add-int/lit8 v15, v5, 0x1

    add-int/2addr v11, v9

    .line 5042
    aget v11, v2, v11

    aput v11, v14, v15

    add-int/lit8 v11, v5, 0x2

    .line 5043
    aget v15, v2, v12

    aput v15, v14, v11

    add-int/lit8 v11, v5, 0x3

    add-int/2addr v12, v9

    .line 5044
    aget v12, v2, v12

    aput v12, v14, v11

    add-int/lit8 v11, v5, 0x4

    .line 5045
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v5, 0x5

    add-int/2addr v13, v9

    .line 5046
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v5, 0x6

    .line 5047
    aget v12, v2, v10

    aput v12, v14, v11

    add-int/lit8 v11, v5, 0x7

    add-int/2addr v10, v9

    .line 5048
    aget v10, v2, v10

    aput v10, v14, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_10
    if-ne v3, v4, :cond_13

    move v3, v7

    .line 5053
    :goto_f
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    move v4, v7

    .line 5054
    :goto_10
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_11

    mul-int/lit8 v10, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    .line 5057
    aget-object v11, p2, v4

    aget-object v11, v11, v3

    aget v12, v11, v7

    aput v12, v2, v10

    add-int/2addr v10, v9

    .line 5058
    aget v12, v11, v9

    aput v12, v2, v10

    .line 5059
    aget v10, v11, v8

    aput v10, v2, v5

    add-int/2addr v5, v9

    .line 5060
    aget v10, v11, v6

    aput v10, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 5062
    :cond_11
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v4, v2, v7, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5063
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/2addr v5, v8

    invoke-virtual {v4, v2, v5, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v4, v7

    .line 5064
    :goto_11
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_12

    mul-int/lit8 v10, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    .line 5067
    aget-object v11, p2, v4

    aget-object v11, v11, v3

    aget v12, v2, v10

    aput v12, v11, v7

    add-int/2addr v10, v9

    .line 5068
    aget v10, v2, v10

    aput v10, v11, v9

    .line 5069
    aget v10, v2, v5

    aput v10, v11, v8

    add-int/2addr v5, v9

    .line 5070
    aget v5, v2, v5

    aput v5, v11, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    if-ne v3, v8, :cond_16

    move v3, v7

    .line 5074
    :goto_12
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    move v4, v7

    .line 5075
    :goto_13
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_14

    mul-int/lit8 v5, v4, 0x2

    .line 5077
    aget-object v6, p2, v4

    aget-object v6, v6, v3

    aget v8, v6, v7

    aput v8, v2, v5

    add-int/2addr v5, v9

    .line 5078
    aget v6, v6, v9

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 5080
    :cond_14
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v4, v2, v7, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v4, v7

    .line 5081
    :goto_14
    iget v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v5, :cond_15

    mul-int/lit8 v5, v4, 0x2

    .line 5083
    aget-object v6, p2, v4

    aget-object v6, v6, v3

    aget v8, v2, v5

    aput v8, v6, v7

    add-int/2addr v5, v9

    .line 5084
    aget v5, v2, v5

    aput v5, v6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_16
    return-void
.end method

.method private cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 6531
    const-class v12, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 6532
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 6533
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 6537
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    shr-long/2addr v1, v3

    goto :goto_1

    :cond_1
    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    move-wide v13, v1

    .line 6543
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_3

    int-to-long v6, v10

    .line 6546
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$58;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_3D$58;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JIJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6723
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6727
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

    .line 6725
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private cdft3db_subth(I[FZ)V
    .locals 15

    move-object v9, p0

    .line 6328
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6329
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 6330
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6334
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v11, v1

    .line 6340
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_3

    .line 6343
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_3D$57;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$57;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6520
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6524
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

    .line 6522
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private cdft3db_subth(I[[[FZ)V
    .locals 15

    move-object v9, p0

    .line 6734
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6735
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 6736
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6740
    iget v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v11, v1

    .line 6746
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_3

    .line 6749
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_3D$59;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$59;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[[[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6908
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6912
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

    .line 6910
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
    .locals 37

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 7624
    const-class v16, Lorg/jtransforms/fft/FloatFFT_3D;

    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v2, 0x2

    mul-long v17, v0, v2

    .line 7625
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    div-long v19, v0, v2

    .line 7626
    iget-wide v4, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v21, v4, v2

    mul-long v23, v0, v17

    const-wide/16 v11, 0x1

    sub-long/2addr v4, v11

    :goto_0
    cmp-long v0, v4, v11

    const/4 v13, 0x0

    if-ltz v0, :cond_2

    .line 7634
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v0, v4

    mul-long v8, v0, v2

    const-wide/16 v25, 0x0

    .line 7636
    :goto_1
    iget-wide v6, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v25, v6

    if-gez v6, :cond_1

    .line 7637
    iget-wide v6, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v6, v6, v25

    mul-long v29, v6, v2

    const-wide/16 v31, 0x0

    .line 7639
    :goto_2
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v2, v31, v2

    if-gez v2, :cond_0

    add-long v2, v0, v6

    add-long v2, v2, v31

    add-long v35, v8, v29

    add-long v11, v35, v31

    .line 7642
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v15, v11, v12, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7643
    invoke-virtual {v15, v2, v3, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v35, 0x1

    add-long v2, v2, v35

    add-long v11, v11, v35

    .line 7646
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v15, v11, v12, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7647
    invoke-virtual {v15, v2, v3, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x2

    add-long v31, v31, v2

    move-wide/from16 v11, v35

    goto :goto_2

    :cond_0
    move-wide/from16 v35, v11

    add-long v25, v25, v35

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_1
    move-wide/from16 v35, v11

    sub-long v4, v4, v35

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v35, 0x1

    .line 7652
    :goto_3
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v35, v0

    if-gez v2, :cond_4

    sub-long v2, v0, v35

    .line 7653
    iget-wide v4, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v2, v4

    sub-long v0, v0, v35

    mul-long v0, v0, v17

    const-wide/16 v4, 0x0

    .line 7655
    :goto_4
    iget-wide v6, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    add-long v6, v2, v4

    add-long v8, v0, v4

    .line 7658
    invoke-virtual {v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v15, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7659
    invoke-virtual {v15, v6, v7, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    add-long/2addr v8, v11

    .line 7662
    invoke-virtual {v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v15, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7663
    invoke-virtual {v15, v6, v7, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    goto :goto_4

    :cond_3
    const-wide/16 v11, 0x1

    add-long v35, v35, v11

    goto :goto_3

    :cond_4
    const-wide/16 v11, 0x1

    .line 7667
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    const/4 v0, 0x1

    if-le v9, v0, :cond_b

    .line 7668
    iget-boolean v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_b

    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    int-to-long v2, v9

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    .line 7669
    new-array v10, v9, [Ljava/util/concurrent/Future;

    .line 7670
    div-long v25, v0, v2

    const/16 v27, 0x0

    move/from16 v0, v27

    :goto_5
    if-ge v0, v9, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v25

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_5

    .line 7673
    iget-wide v1, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_6

    :cond_5
    add-long v1, v3, v25

    :goto_6
    move-wide v5, v1

    .line 7674
    new-instance v28, Lorg/jtransforms/fft/FloatFFT_3D$66;

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move v15, v9

    move-object/from16 v29, v10

    move-wide/from16 v9, v17

    move-wide/from16 v11, v17

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/FloatFFT_3D$66;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v28 .. v28}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v29, v0

    add-int/lit8 v0, v0, 0x1

    move v9, v15

    move-object/from16 v10, v29

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v15, p1

    goto :goto_5

    :cond_6
    move v15, v9

    move-object/from16 v29, v10

    const/4 v13, 0x0

    .line 7696
    :try_start_0
    invoke-static/range {v29 .. v29}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7700
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 7698
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move/from16 v0, v27

    :goto_8
    if-ge v0, v15, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v25

    add-int/lit8 v9, v15, -0x1

    if-ne v0, v9, :cond_7

    .line 7706
    iget-wide v1, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_9

    :cond_7
    add-long v1, v3, v25

    :goto_9
    move-wide v5, v1

    .line 7707
    new-instance v28, Lorg/jtransforms/fft/FloatFFT_3D$67;

    move-object/from16 v1, v28

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-wide/from16 v9, v19

    move-wide/from16 v11, v17

    move-object v14, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/FloatFFT_3D$67;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v28 .. v28}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v29, v0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v14

    move-object/from16 v14, p0

    goto :goto_8

    :cond_8
    move-object v14, v13

    .line 7730
    :try_start_1
    invoke-static/range {v29 .. v29}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7734
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 7732
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    move/from16 v0, v27

    :goto_b
    if-ge v0, v15, :cond_a

    int-to-long v1, v0

    mul-long v3, v1, v25

    add-int/lit8 v9, v15, -0x1

    move-object v13, v14

    move-object/from16 v14, p0

    if-ne v0, v9, :cond_9

    .line 7738
    iget-wide v1, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_c

    :cond_9
    add-long v1, v3, v25

    :goto_c
    move-wide v5, v1

    .line 7739
    new-instance v27, Lorg/jtransforms/fft/FloatFFT_3D$68;

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-wide/from16 v9, v19

    move-wide/from16 v11, v17

    move/from16 v28, v15

    move-object v15, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/FloatFFT_3D$68;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v27 .. v27}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v29, v0

    add-int/lit8 v0, v0, 0x1

    move-object v14, v15

    move/from16 v15, v28

    goto :goto_b

    :cond_a
    move-object v15, v14

    move-object/from16 v14, p0

    .line 7758
    :try_start_2
    invoke-static/range {v29 .. v29}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 7762
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 7760
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    move-object/from16 v4, p1

    goto/16 :goto_15

    :cond_b
    const-wide/16 v0, 0x0

    .line 7767
    :goto_e
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    sub-long v4, v2, v0

    .line 7768
    rem-long/2addr v4, v2

    mul-long v4, v4, v23

    mul-long v2, v0, v23

    const-wide/16 v6, 0x0

    .line 7770
    :goto_f
    iget-wide v8, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_d

    sub-long v10, v8, v6

    .line 7771
    rem-long/2addr v10, v8

    mul-long v10, v10, v17

    mul-long v8, v6, v17

    move-wide v15, v0

    const-wide/16 v12, 0x1

    .line 7773
    :goto_10
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_c

    add-long v0, v4, v10

    add-long v0, v0, v17

    sub-long/2addr v0, v12

    add-long v25, v2, v8

    add-long v25, v25, v12

    move-wide/from16 v31, v2

    const-wide/16 v29, 0x2

    add-long v2, v25, v29

    move-wide/from16 v33, v4

    move-object/from16 v4, p1

    .line 7776
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v4, v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide/from16 v35, v8

    add-long v8, v25, v2

    .line 7777
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v29

    move-wide/from16 v2, v31

    move-wide/from16 v4, v33

    move-wide/from16 v8, v35

    goto :goto_10

    :cond_c
    move-wide/from16 v31, v2

    move-wide/from16 v33, v4

    const-wide/16 v2, 0x1

    const-wide/16 v29, 0x2

    move-object/from16 v4, p1

    add-long/2addr v6, v2

    move-wide v0, v15

    move-wide/from16 v2, v31

    move-wide/from16 v4, v33

    goto :goto_f

    :cond_d
    move-object/from16 v4, p1

    move-wide v15, v0

    const-wide/16 v2, 0x1

    const-wide/16 v29, 0x2

    add-long v0, v15, v2

    goto :goto_e

    :cond_e
    move-object/from16 v4, p1

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 7783
    :goto_11
    iget-wide v5, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_10

    sub-long v7, v5, v0

    .line 7784
    rem-long/2addr v7, v5

    mul-long v7, v7, v23

    mul-long v5, v0, v23

    move-wide v11, v2

    :goto_12
    cmp-long v9, v11, v19

    if-gez v9, :cond_f

    .line 7787
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v9, v11

    mul-long v9, v9, v17

    add-long/2addr v9, v5

    mul-long v15, v11, v17

    add-long/2addr v15, v7

    .line 7788
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    move-wide/from16 v25, v5

    add-long v5, v15, v2

    add-long/2addr v2, v9

    move-wide/from16 v29, v7

    const-wide/16 v15, 0x1

    add-long v7, v9, v15

    .line 7791
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v5, v6, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7792
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v4, v2, v3, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v15

    .line 7793
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v2, v15

    .line 7794
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v11, v15

    move-wide v2, v15

    move-wide/from16 v5, v25

    move-wide/from16 v7, v29

    goto :goto_12

    :cond_f
    move-wide v15, v2

    add-long/2addr v0, v15

    goto :goto_11

    :cond_10
    const-wide/16 v6, 0x0

    .line 7799
    :goto_13
    iget-wide v0, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v2, v6, v0

    if-gez v2, :cond_12

    sub-long v2, v0, v6

    .line 7800
    rem-long/2addr v2, v0

    mul-long v2, v2, v23

    mul-long v0, v6, v23

    const-wide/16 v11, 0x1

    :goto_14
    cmp-long v5, v11, v19

    if-gez v5, :cond_11

    .line 7803
    iget-wide v8, v14, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v8, v11

    mul-long v8, v8, v17

    add-long/2addr v8, v2

    mul-long v15, v11, v17

    move-wide/from16 v25, v2

    add-long v2, v0, v15

    .line 7805
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v8, v9, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v15, 0x1

    add-long/2addr v8, v15

    add-long/2addr v2, v15

    .line 7806
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v4, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v11, v15

    move-wide/from16 v2, v25

    goto :goto_14

    :cond_11
    const-wide/16 v15, 0x1

    add-long/2addr v6, v15

    goto :goto_13

    :cond_12
    :goto_15
    const-wide/16 v11, 0x1

    :goto_16
    cmp-long v0, v11, v21

    if-gez v0, :cond_13

    mul-long v0, v11, v23

    .line 7815
    iget-wide v2, v14, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long/2addr v2, v11

    mul-long v2, v2, v23

    mul-long v5, v19, v17

    add-long v7, v0, v5

    add-long/2addr v5, v2

    .line 7819
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v0

    move-wide/from16 v25, v5

    move-wide v15, v11

    const-wide/16 v11, 0x1

    add-long v5, v2, v11

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7820
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v2

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7821
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v0

    add-long/2addr v9, v11

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    neg-float v13, v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7822
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v2

    add-long/2addr v9, v11

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7823
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v7

    move-wide/from16 v27, v5

    add-long v5, v25, v11

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7824
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long v9, v25, v9

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7825
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v7

    add-long/2addr v9, v11

    move-wide/from16 v11, v25

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    neg-float v13, v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7826
    iget-wide v9, v14, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v9, v11

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7827
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v4, v2, v3, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 7828
    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    move-wide/from16 v9, v27

    invoke-virtual {v4, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7829
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v4, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v7, v2

    .line 7830
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v4, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v15, v2

    move-object/from16 v14, p0

    goto/16 :goto_16

    :cond_13
    move-object v1, v14

    const-wide/16 v2, 0x1

    .line 7835
    iget-wide v5, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v4, v5, v6, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const/4 v5, 0x0

    .line 7836
    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    mul-long v19, v19, v17

    mul-long v21, v21, v23

    add-long v6, v19, v21

    .line 7840
    iget-wide v8, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long v8, v19, v8

    add-long v10, v19, v2

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v4, v8, v9, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7841
    invoke-virtual {v4, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7842
    iget-wide v8, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long v8, v21, v8

    add-long v11, v21, v2

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v4, v8, v9, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7843
    invoke-virtual {v4, v11, v12, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7844
    iget-wide v8, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v8, v6

    add-long v11, v6, v2

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    invoke-virtual {v4, v8, v9, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7845
    invoke-virtual {v4, v11, v12, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7846
    iget-wide v8, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long v21, v21, v8

    add-long v8, v21, v2

    invoke-virtual {v4, v8, v9, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7847
    iget-wide v8, v1, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    return-void
.end method

.method private fillSymmetric([F)V
    .locals 22

    move-object/from16 v9, p0

    .line 7396
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v11, v0, 0x2

    .line 7397
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v12, v0, 0x2

    .line 7398
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v13, v1, 0x2

    mul-int v14, v0, v11

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    :goto_0
    const/16 v16, 0x0

    const/16 v17, 0x0

    if-lt v1, v15, :cond_2

    .line 7406
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x2

    move/from16 v3, v17

    .line 7408
    :goto_1
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_1

    .line 7409
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    mul-int/lit8 v5, v4, 0x2

    move/from16 v6, v17

    .line 7411
    :goto_2
    iget v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v6, v7, :cond_0

    add-int v7, v0, v4

    add-int/2addr v7, v6

    add-int v8, v2, v5

    add-int/2addr v8, v6

    .line 7414
    aget v18, p1, v7

    aput v18, p1, v8

    .line 7415
    aput v16, p1, v7

    add-int/2addr v7, v15

    add-int/2addr v8, v15

    .line 7418
    aget v18, p1, v7

    aput v18, p1, v8

    .line 7419
    aput v16, p1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v0, v15

    .line 7424
    :goto_3
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v1, :cond_4

    sub-int v2, v1, v0

    .line 7425
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v0

    mul-int/2addr v1, v11

    move/from16 v3, v17

    .line 7427
    :goto_4
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v4, :cond_3

    add-int v4, v2, v3

    add-int v5, v1, v3

    .line 7430
    aget v6, p1, v4

    aput v6, p1, v5

    .line 7431
    aput v16, p1, v4

    add-int/2addr v4, v15

    add-int/2addr v5, v15

    .line 7434
    aget v6, p1, v4

    aput v6, p1, v5

    .line 7435
    aput v16, p1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7439
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    if-le v8, v15, :cond_b

    .line 7440
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_b

    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v8, :cond_b

    .line 7441
    new-array v7, v8, [Ljava/util/concurrent/Future;

    .line 7442
    div-int v18, v0, v8

    move/from16 v0, v17

    :goto_5
    if-ge v0, v8, :cond_6

    mul-int v3, v0, v18

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_5

    .line 7445
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_6

    :cond_5
    add-int v1, v3, v18

    :goto_6
    move v4, v1

    .line 7446
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_3D$63;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v14

    move v6, v11

    move-object/from16 v20, v7

    move v7, v11

    move v15, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$63;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v20, v0

    add-int/lit8 v0, v0, 0x1

    move v8, v15

    move-object/from16 v7, v20

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v20, v7

    move v15, v8

    const/4 v8, 0x0

    .line 7468
    :try_start_0
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7472
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 7470
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move/from16 v0, v17

    :goto_8
    if-ge v0, v15, :cond_8

    mul-int v3, v0, v18

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_7

    .line 7478
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_9

    :cond_7
    add-int v1, v3, v18

    :goto_9
    move v4, v1

    .line 7479
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_3D$64;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move v5, v14

    move v6, v12

    move v7, v11

    move/from16 v21, v13

    move-object v13, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$64;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v20, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v13

    move/from16 v13, v21

    goto :goto_8

    :cond_8
    move/from16 v21, v13

    move-object v13, v8

    .line 7502
    :try_start_1
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7506
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 7504
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    move/from16 v0, v17

    :goto_b
    if-ge v0, v15, :cond_a

    mul-int v3, v0, v18

    add-int/lit8 v8, v15, -0x1

    if-ne v0, v8, :cond_9

    .line 7510
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_c

    :cond_9
    add-int v1, v3, v18

    :goto_c
    move v4, v1

    .line 7511
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$65;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move v5, v14

    move v6, v12

    move v7, v11

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$65;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v20, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7530
    :cond_a
    :try_start_2
    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 7534
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 7532
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_b
    move/from16 v21, v13

    move/from16 v0, v17

    .line 7539
    :goto_d
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_e

    sub-int v2, v1, v0

    .line 7540
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    move/from16 v3, v17

    .line 7542
    :goto_e
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_d

    sub-int v5, v4, v3

    .line 7543
    rem-int/2addr v5, v4

    mul-int/2addr v5, v11

    mul-int v4, v3, v11

    const/4 v6, 0x1

    .line 7545
    :goto_f
    iget v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v6, v7, :cond_c

    add-int v7, v2, v5

    add-int/2addr v7, v11

    sub-int/2addr v7, v6

    add-int v8, v1, v4

    add-int/2addr v8, v6

    add-int/lit8 v10, v8, 0x2

    .line 7548
    aget v10, p1, v10

    neg-float v10, v10

    aput v10, p1, v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    add-int/2addr v8, v10

    .line 7549
    aget v8, p1, v8

    aput v8, p1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_f

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_e
    move/from16 v0, v17

    .line 7555
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_10

    sub-int v2, v1, v0

    .line 7556
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    const/4 v3, 0x1

    :goto_11
    if-ge v3, v12, :cond_f

    .line 7559
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v4, v3

    mul-int/2addr v4, v11

    add-int/2addr v4, v1

    mul-int v5, v3, v11

    add-int/2addr v5, v2

    .line 7560
    iget v6, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v5, v6

    add-int/2addr v6, v4

    add-int/lit8 v7, v4, 0x1

    .line 7563
    aget v8, p1, v7

    aput v8, p1, v5

    .line 7564
    aget v7, p1, v7

    aput v7, p1, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 7565
    aget v8, p1, v4

    neg-float v8, v8

    aput v8, p1, v5

    add-int/2addr v6, v7

    .line 7566
    aget v4, p1, v4

    aput v4, p1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_10
    move/from16 v0, v17

    .line 7571
    :goto_12
    iget v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_12

    sub-int v2, v1, v0

    .line 7572
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    const/4 v3, 0x1

    :goto_13
    if-ge v3, v12, :cond_11

    .line 7575
    iget v4, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v4, v3

    mul-int/2addr v4, v11

    add-int/2addr v4, v2

    mul-int v5, v3, v11

    add-int/2addr v5, v1

    .line 7577
    aget v6, p1, v5

    aput v6, p1, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    .line 7578
    aget v5, p1, v5

    neg-float v5, v5

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_12
    :goto_14
    move/from16 v1, v21

    const/4 v0, 0x1

    :goto_15
    if-ge v0, v1, :cond_13

    mul-int v2, v0, v14

    .line 7587
    iget v3, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v3, v0

    mul-int/2addr v3, v14

    mul-int v4, v12, v11

    add-int v5, v2, v4

    add-int/2addr v4, v3

    .line 7591
    iget v6, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int v7, v2, v6

    add-int/lit8 v8, v3, 0x1

    aget v10, p1, v8

    aput v10, p1, v7

    add-int v7, v3, v6

    .line 7592
    aget v10, p1, v8

    aput v10, p1, v7

    add-int v7, v2, v6

    const/4 v10, 0x1

    add-int/2addr v7, v10

    .line 7593
    aget v13, p1, v3

    neg-float v13, v13

    aput v13, p1, v7

    add-int v7, v3, v6

    add-int/2addr v7, v10

    .line 7594
    aget v10, p1, v3

    aput v10, p1, v7

    add-int v7, v5, v6

    add-int/lit8 v10, v4, 0x1

    .line 7595
    aget v13, p1, v10

    aput v13, p1, v7

    add-int v7, v4, v6

    .line 7596
    aget v13, p1, v10

    aput v13, p1, v7

    add-int v7, v5, v6

    const/4 v13, 0x1

    add-int/2addr v7, v13

    .line 7597
    aget v15, p1, v4

    neg-float v15, v15

    aput v15, p1, v7

    add-int/2addr v6, v4

    add-int/2addr v6, v13

    .line 7598
    aget v7, p1, v4

    aput v7, p1, v6

    .line 7599
    aget v6, p1, v2

    aput v6, p1, v3

    add-int/2addr v2, v13

    .line 7600
    aget v2, p1, v2

    neg-float v2, v2

    aput v2, p1, v8

    .line 7601
    aget v2, p1, v5

    aput v2, p1, v4

    add-int/2addr v5, v13

    .line 7602
    aget v2, p1, v5

    neg-float v2, v2

    aput v2, p1, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_13
    const/4 v13, 0x1

    .line 7607
    iget v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    aget v2, p1, v13

    aput v2, p1, v0

    .line 7608
    aput v16, p1, v13

    mul-int/2addr v12, v11

    mul-int/2addr v1, v14

    add-int v2, v12, v1

    add-int v3, v12, v0

    add-int/2addr v12, v13

    .line 7612
    aget v4, p1, v12

    aput v4, p1, v3

    .line 7613
    aput v16, p1, v12

    add-int v3, v1, v0

    add-int/lit8 v4, v1, 0x1

    .line 7614
    aget v5, p1, v4

    aput v5, p1, v3

    .line 7615
    aput v16, p1, v4

    add-int v3, v2, v0

    add-int/lit8 v4, v2, 0x1

    .line 7616
    aget v5, p1, v4

    aput v5, p1, v3

    .line 7617
    aput v16, p1, v4

    add-int/2addr v1, v0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 7618
    aput v16, p1, v1

    add-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 7619
    aput v16, p1, v2

    return-void
.end method

.method private fillSymmetric([[[F)V
    .locals 18

    move-object/from16 v7, p0

    .line 7236
    const-class v8, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    .line 7237
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v9, v1, 0x2

    .line 7238
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v10, v1, 0x2

    .line 7239
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_6

    .line 7240
    iget-boolean v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_6

    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v1, v11, :cond_6

    .line 7241
    new-array v14, v11, [Ljava/util/concurrent/Future;

    .line 7242
    div-int v15, v1, v11

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_1

    mul-int v3, v6, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v6, v1, :cond_0

    .line 7245
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_1

    :cond_0
    add-int v1, v3, v15

    :goto_1
    move v4, v1

    .line 7246
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$60;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v0

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$60;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 7265
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7269
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 7267
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 7275
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_4

    :cond_2
    add-int v1, v3, v15

    :goto_4
    move v4, v1

    .line 7276
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$61;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v9

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$61;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object v6, v12

    goto :goto_3

    :cond_3
    move-object v12, v6

    .line 7294
    :try_start_1
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7298
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 7296
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 7303
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_7

    :cond_4
    add-int v1, v3, v15

    :goto_7
    move v4, v1

    .line 7304
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$62;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$62;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7320
    :cond_5
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 7324
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 7322
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_6
    const/4 v1, 0x0

    .line 7329
    :goto_8
    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_9

    sub-int v3, v2, v1

    .line 7330
    rem-int/2addr v3, v2

    const/4 v2, 0x0

    .line 7331
    :goto_9
    iget v4, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_8

    sub-int v5, v4, v2

    .line 7332
    rem-int/2addr v5, v4

    move v4, v13

    .line 7333
    :goto_a
    iget v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v4, v6, :cond_7

    sub-int v6, v0, v4

    .line 7335
    aget-object v8, p1, v3

    aget-object v8, v8, v5

    aget-object v11, p1, v1

    aget-object v11, v11, v2

    add-int/lit8 v12, v4, 0x2

    aget v14, v11, v12

    neg-float v14, v14

    aput v14, v8, v6

    sub-int/2addr v6, v13

    add-int/lit8 v4, v4, 0x1

    .line 7336
    aget v4, v11, v4

    aput v4, v8, v6

    move v4, v12

    goto :goto_a

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    .line 7342
    :goto_b
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_b

    sub-int v2, v1, v0

    .line 7343
    rem-int/2addr v2, v1

    move v1, v13

    :goto_c
    if-ge v1, v9, :cond_a

    .line 7345
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v1

    .line 7346
    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v3, v6, v3

    aget v6, v3, v13

    aput v6, v4, v5

    .line 7347
    aget v6, v3, v13

    aput v6, v3, v5

    add-int/lit8 v6, v5, 0x1

    const/4 v8, 0x0

    .line 7348
    aget v11, v3, v8

    neg-float v11, v11

    aput v11, v4, v6

    add-int/2addr v5, v13

    .line 7349
    aget v4, v3, v8

    aput v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v8, 0x0

    .line 7353
    :goto_d
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v8, v0, :cond_d

    sub-int v1, v0, v8

    .line 7354
    rem-int/2addr v1, v0

    move v0, v13

    :goto_e
    if-ge v0, v9, :cond_c

    .line 7356
    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v0

    .line 7357
    aget-object v3, p1, v1

    aget-object v2, v3, v2

    aget-object v3, p1, v8

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v5, v3, v4

    aput v5, v2, v4

    .line 7358
    aget v3, v3, v13

    neg-float v3, v3

    aput v3, v2, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_d
    :goto_f
    move v0, v13

    :goto_10
    if-ge v0, v10, :cond_e

    .line 7365
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    .line 7366
    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v1, p1, v1

    aget-object v6, v1, v3

    aget v8, v6, v13

    aput v8, v4, v5

    .line 7367
    aget v8, v6, v13

    aput v8, v6, v5

    add-int/lit8 v8, v5, 0x1

    .line 7368
    aget v11, v6, v3

    neg-float v11, v11

    aput v11, v4, v8

    add-int/lit8 v8, v5, 0x1

    .line 7369
    aget v11, v6, v3

    aput v11, v6, v8

    .line 7370
    aget-object v2, v2, v9

    aget-object v1, v1, v9

    aget v8, v1, v13

    aput v8, v2, v5

    .line 7371
    aget v8, v1, v13

    aput v8, v1, v5

    add-int/lit8 v8, v5, 0x1

    .line 7372
    aget v11, v1, v3

    neg-float v11, v11

    aput v11, v2, v8

    add-int/2addr v5, v13

    .line 7373
    aget v8, v1, v3

    aput v8, v1, v5

    .line 7374
    aget v5, v4, v3

    aput v5, v6, v3

    .line 7375
    aget v4, v4, v13

    neg-float v4, v4

    aput v4, v6, v13

    .line 7376
    aget v4, v2, v3

    aput v4, v1, v3

    .line 7377
    aget v2, v2, v13

    neg-float v2, v2

    aput v2, v1, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    .line 7382
    aget-object v0, p1, v3

    aget-object v1, v0, v3

    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    aget v4, v1, v13

    aput v4, v1, v2

    const/4 v4, 0x0

    .line 7383
    aput v4, v1, v13

    .line 7384
    aget-object v0, v0, v9

    aget v1, v0, v13

    aput v1, v0, v2

    .line 7385
    aput v4, v0, v13

    .line 7386
    aget-object v0, p1, v10

    aget-object v1, v0, v3

    aget v3, v1, v13

    aput v3, v1, v2

    .line 7387
    aput v4, v1, v13

    .line 7388
    aget-object v0, v0, v9

    aget v3, v0, v13

    aput v3, v0, v2

    .line 7389
    aput v4, v0, v13

    add-int/lit8 v3, v2, 0x1

    .line 7390
    aput v4, v1, v3

    add-int/2addr v2, v13

    .line 7391
    aput v4, v0, v2

    return-void
.end method

.method private mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2578
    const-class v16, Lorg/jtransforms/fft/FloatFFT_3D;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    mul-long v12, v0, v9

    .line 2579
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 2580
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    div-long v3, v1, v9

    const-wide/16 v17, 0x1

    add-long v19, v3, v17

    .line 2582
    rem-long v3, v1, v9

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-nez v3, :cond_0

    .line 2583
    div-long/2addr v1, v9

    goto :goto_0

    :cond_0
    add-long v1, v1, v17

    .line 2585
    div-long/2addr v1, v9

    :goto_0
    move-wide/from16 v23, v1

    .line 2588
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v25, v1, v9

    .line 2589
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v27, v1, v9

    .line 2590
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v29, v1, v9

    .line 2591
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-le v11, v1, :cond_d

    .line 2592
    iget-boolean v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    int-to-long v5, v11

    cmp-long v1, v29, v5

    if-ltz v1, :cond_d

    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_d

    cmp-long v1, v19, v5

    if-ltz v1, :cond_d

    .line 2593
    new-array v9, v11, [Ljava/util/concurrent/Future;

    .line 2594
    div-long v21, v29, v5

    move v0, v7

    :goto_1
    if-ge v0, v11, :cond_2

    .line 2596
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    int-to-long v3, v0

    mul-long v3, v3, v21

    sub-long v31, v1, v3

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_1

    add-long v1, v29, v17

    goto :goto_2

    :cond_1
    sub-long v1, v31, v21

    :goto_2
    move-wide/from16 v33, v1

    .line 2598
    new-instance v35, Lorg/jtransforms/fft/FloatFFT_3D$33;

    move-object/from16 v1, v35

    move-object/from16 v2, p0

    move-wide v3, v12

    move-wide/from16 v36, v5

    move-wide/from16 v5, v31

    move v10, v7

    move-wide/from16 v7, v33

    move-object/from16 v31, v9

    move-wide/from16 v9, v25

    move v14, v11

    move-object/from16 v11, p1

    move-wide/from16 v32, v12

    move-wide/from16 v12, v27

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/FloatFFT_3D$33;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move v11, v14

    move-object/from16 v9, v31

    move-wide/from16 v12, v32

    move-wide/from16 v5, v36

    const/4 v7, 0x0

    move-object/from16 v14, p1

    goto :goto_1

    :cond_2
    move-wide/from16 v36, v5

    move-object/from16 v31, v9

    move v14, v11

    move-wide/from16 v32, v12

    const/4 v13, 0x0

    .line 2616
    :try_start_0
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2620
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2618
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2623
    :goto_3
    new-instance v12, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v29, v29, v17

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v0, v0, v29

    mul-long v0, v0, v32

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v14, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v21

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_3

    move-wide/from16 v5, v29

    goto :goto_5

    :cond_3
    add-long v1, v3, v21

    move-wide v5, v1

    .line 2628
    :goto_5
    new-instance v11, Lorg/jtransforms/fft/FloatFFT_3D$34;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v8, v12

    move-wide/from16 v9, v32

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/FloatFFT_3D$34;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2643
    :cond_4
    :try_start_1
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2647
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2645
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v14, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v21

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_5

    move-wide/from16 v5, v29

    goto :goto_8

    :cond_5
    add-long v1, v3, v21

    move-wide v5, v1

    .line 2653
    :goto_8
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$35;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-object v9, v12

    move-wide/from16 v10, v32

    move-object/from16 v18, v12

    move-object/from16 v12, p1

    move-object v15, v13

    move/from16 v39, v14

    move-wide/from16 v13, v27

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/FloatFFT_3D$35;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v15

    move-object/from16 v12, v18

    move/from16 v14, v39

    move-object/from16 v15, p0

    goto :goto_7

    :cond_6
    move-object v15, v13

    move/from16 v39, v14

    .line 2667
    :try_start_2
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_9
    move-object v13, v15

    move-object/from16 v15, p0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2671
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2669
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 2674
    :goto_a
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v17, v0, v36

    move/from16 v14, v39

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v14, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_7

    .line 2677
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_c

    :cond_7
    add-long v1, v3, v17

    :goto_c
    move-wide v5, v1

    .line 2678
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_3D$36;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_3D$36;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2707
    :cond_8
    :try_start_3
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2711
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2709
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2714
    :goto_d
    div-long v17, v19, v36

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v14, :cond_a

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_9

    move-wide/from16 v5, v19

    goto :goto_f

    :cond_9
    add-long v1, v3, v17

    move-wide v5, v1

    .line 2718
    :goto_f
    new-instance v12, Lorg/jtransforms/fft/FloatFFT_3D$37;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_3D$37;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2747
    :cond_a
    :try_start_4
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 2751
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 2749
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2753
    :goto_10
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v17, v0, v36

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_c

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_b

    .line 2756
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_12

    :cond_b
    add-long v1, v3, v17

    :goto_12
    move-wide v5, v1

    .line 2757
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_3D$38;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    move/from16 v20, v14

    move-wide/from16 v13, v32

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D$38;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, p0

    move/from16 v14, v20

    const/4 v13, 0x0

    goto :goto_11

    .line 2784
    :cond_c
    :try_start_5
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 2788
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    .line 2786
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    move-object/from16 v11, p0

    goto/16 :goto_21

    :cond_d
    move-wide/from16 v32, v12

    move-object/from16 v11, p0

    .line 2792
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    move-wide v12, v1

    :goto_14
    cmp-long v1, v12, v21

    if-ltz v1, :cond_f

    .line 2793
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v14, v12, v1

    mul-long v29, v12, v25

    .line 2795
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long v1, v1, v17

    move-wide/from16 v34, v1

    :goto_15
    cmp-long v1, v34, v21

    if-ltz v1, :cond_e

    .line 2796
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v1, v1, v34

    add-long v2, v14, v1

    const-wide/16 v5, 0x0

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    move-object/from16 v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    .line 2797
    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    mul-long v1, v34, v27

    add-long v5, v29, v1

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move-wide/from16 v7, v32

    .line 2798
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    sub-long v34, v34, v17

    goto :goto_15

    :cond_e
    sub-long v12, v12, v17

    goto :goto_14

    .line 2802
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v1, v9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    .line 2804
    :goto_16
    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_13

    mul-long v4, v1, v25

    move-wide/from16 v6, v21

    .line 2806
    :goto_17
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_12

    mul-long v12, v6, v9

    move-wide/from16 v29, v4

    move-wide/from16 v14, v21

    .line 2808
    :goto_18
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_10

    mul-long v3, v14, v9

    mul-long v34, v14, v27

    add-long v34, v29, v34

    add-long v9, v34, v12

    move-object/from16 v5, p1

    .line 2811
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v0, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 2812
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v0, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    const-wide/16 v9, 0x2

    goto :goto_18

    :cond_10
    move-object/from16 v5, p1

    .line 2814
    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    move-wide/from16 v3, v21

    .line 2815
    :goto_19
    iget-wide v8, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_11

    const-wide/16 v8, 0x2

    mul-long v14, v3, v8

    mul-long v8, v3, v27

    add-long v8, v29, v8

    add-long/2addr v8, v12

    .line 2818
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v17

    add-long v14, v14, v17

    .line 2819
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    goto :goto_19

    :cond_11
    add-long v6, v6, v17

    move-wide/from16 v4, v29

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_17

    :cond_12
    move-object/from16 v5, p1

    add-long v1, v1, v17

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_16

    :cond_13
    move-object/from16 v5, p1

    .line 2824
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    :goto_1a
    cmp-long v6, v1, v19

    if-gez v6, :cond_17

    mul-long v6, v1, v27

    move-wide/from16 v8, v21

    .line 2828
    :goto_1b
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v10, v8, v12

    if-gez v10, :cond_16

    mul-long v12, v8, v3

    move-wide/from16 v14, v21

    .line 2830
    :goto_1c
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_14

    move-wide/from16 v29, v1

    const-wide/16 v3, 0x2

    mul-long v1, v14, v3

    mul-long v3, v14, v25

    add-long/2addr v3, v6

    add-long/2addr v3, v12

    .line 2833
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v0, v1, v2, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v17

    add-long v3, v3, v17

    .line 2834
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    move-wide/from16 v1, v29

    goto :goto_1c

    :cond_14
    move-wide/from16 v29, v1

    .line 2836
    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    move-wide/from16 v1, v21

    .line 2837
    :goto_1d
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_15

    const-wide/16 v3, 0x2

    mul-long v14, v1, v3

    mul-long v3, v1, v25

    add-long/2addr v3, v6

    add-long/2addr v3, v12

    .line 2840
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v3, v4, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    add-long v14, v14, v17

    .line 2841
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v3, v4, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v17

    goto :goto_1d

    :cond_15
    add-long v8, v8, v17

    move-wide/from16 v1, v29

    const-wide/16 v3, 0x2

    goto :goto_1b

    :cond_16
    move-wide/from16 v29, v1

    add-long v1, v29, v17

    const-wide/16 v3, 0x2

    goto :goto_1a

    :cond_17
    move-wide/from16 v0, v21

    .line 2846
    :goto_1e
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    sub-long v6, v2, v0

    .line 2847
    rem-long/2addr v6, v2

    mul-long v6, v6, v25

    mul-long v2, v0, v25

    move-wide/from16 v8, v17

    :goto_1f
    cmp-long v4, v8, v23

    if-gez v4, :cond_19

    .line 2851
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v12, v8

    mul-long v12, v12, v27

    mul-long v14, v8, v27

    add-long/2addr v12, v6

    move-wide/from16 v29, v6

    move-wide/from16 v19, v21

    .line 2855
    :goto_20
    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v4, v19, v6

    if-gez v4, :cond_18

    const-wide/16 v6, 0x2

    mul-long v34, v19, v6

    sub-long v36, v32, v34

    add-long v38, v2, v14

    add-long v6, v38, v34

    .line 2859
    rem-long v34, v36, v32

    move-wide/from16 v38, v2

    add-long v2, v12, v34

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v5, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v36, v36, v17

    .line 2860
    rem-long v36, v36, v32

    add-long v2, v12, v36

    add-long v6, v6, v17

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v5, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v19, v19, v17

    move-wide/from16 v2, v38

    goto :goto_20

    :cond_18
    move-wide/from16 v38, v2

    add-long v8, v8, v17

    move-wide/from16 v6, v29

    goto :goto_1f

    :cond_19
    add-long v0, v0, v17

    goto :goto_1e

    :cond_1a
    :goto_21
    return-void
.end method

.method private mixedRadixRealForwardFull([F)V
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2286
    const-class v12, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v9, 0x2

    mul-int/lit8 v13, v0, 0x2

    .line 2287
    new-array v0, v13, [F

    .line 2288
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v1, 0x2

    const/4 v14, 0x1

    add-int/lit8 v15, v2, 0x1

    .line 2290
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 2291
    div-int/2addr v1, v9

    goto :goto_0

    :cond_0
    add-int/2addr v1, v14

    .line 2293
    div-int/2addr v1, v9

    :goto_0
    move v8, v1

    .line 2296
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v16, v1, 0x2

    .line 2297
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/lit8 v17, v1, 0x2

    .line 2298
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v7, v1, 0x2

    .line 2299
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    const/4 v5, 0x0

    if-le v6, v14, :cond_d

    .line 2300
    iget-boolean v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    if-lt v7, v6, :cond_d

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v1, v6, :cond_d

    if-lt v15, v6, :cond_d

    .line 2301
    new-array v4, v6, [Ljava/util/concurrent/Future;

    .line 2302
    div-int v18, v7, v6

    move v0, v5

    :goto_1
    if-ge v0, v6, :cond_2

    .line 2304
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v14

    mul-int v2, v0, v18

    sub-int v19, v1, v2

    add-int/lit8 v1, v6, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v1, v7, 0x1

    goto :goto_2

    :cond_1
    sub-int v1, v19, v18

    :goto_2
    move/from16 v20, v1

    .line 2306
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_3D$27;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v22, v4

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v24, v6

    move/from16 v6, v16

    move/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v20, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$27;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FI)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v4, v22

    move/from16 v6, v24

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v22, v4

    move/from16 v24, v6

    move/from16 v19, v7

    move/from16 v20, v8

    const/4 v8, 0x0

    .line 2324
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2328
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2326
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 2331
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v13, v1, v9

    aput v0, v1, v14

    const/4 v14, 0x0

    aput v19, v1, v14

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [[[F

    move v0, v14

    move/from16 v9, v24

    :goto_4
    if-ge v0, v9, :cond_4

    mul-int v3, v0, v18

    add-int/lit8 v6, v9, -0x1

    if-ne v0, v6, :cond_3

    move/from16 v4, v19

    goto :goto_5

    :cond_3
    add-int v1, v3, v18

    move v4, v1

    .line 2336
    :goto_5
    new-instance v7, Lorg/jtransforms/fft/FloatFFT_3D$28;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$28;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F[[[F)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2351
    :cond_4
    :try_start_1
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2355
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2353
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move v0, v14

    :goto_7
    if-ge v0, v9, :cond_6

    mul-int v3, v0, v18

    add-int/lit8 v6, v9, -0x1

    if-ne v0, v6, :cond_5

    move/from16 v4, v19

    goto :goto_8

    :cond_5
    add-int v1, v3, v18

    move v4, v1

    .line 2361
    :goto_8
    new-instance v23, Lorg/jtransforms/fft/FloatFFT_3D$29;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v5, v16

    move-object/from16 v6, v21

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, v17

    move/from16 v25, v9

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$29;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    move/from16 v9, v25

    const/4 v14, 0x0

    goto :goto_7

    :cond_6
    move-object v14, v8

    move/from16 v25, v9

    .line 2375
    :try_start_2
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2379
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2377
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2382
    :goto_9
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    move/from16 v9, v25

    div-int/2addr v0, v9

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v9, :cond_8

    mul-int v3, v8, v0

    add-int/lit8 v6, v9, -0x1

    if-ne v8, v6, :cond_7

    .line 2385
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2386
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$30;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$30;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 2415
    :cond_8
    :try_start_3
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2419
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2417
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2422
    :goto_c
    div-int v0, v15, v9

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v9, :cond_a

    mul-int v3, v8, v0

    add-int/lit8 v6, v9, -0x1

    if-ne v8, v6, :cond_9

    move v4, v15

    goto :goto_e

    :cond_9
    add-int v1, v3, v0

    move v4, v1

    .line 2426
    :goto_e
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$31;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$31;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 2455
    :cond_a
    :try_start_4
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 2459
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 2457
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2461
    :goto_f
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/2addr v0, v9

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v9, :cond_c

    mul-int v3, v15, v0

    add-int/lit8 v6, v9, -0x1

    if-ne v15, v6, :cond_b

    .line 2464
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_11

    :cond_b
    add-int v1, v3, v0

    :goto_11
    move v4, v1

    .line 2465
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$32;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move v8, v13

    move/from16 v19, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$32;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIIII[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    goto :goto_10

    .line 2492
    :cond_c
    :try_start_5
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_1f

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 2496
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 2494
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    :cond_d
    move v1, v5

    move/from16 v20, v8

    .line 2500
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v2, v14

    :goto_12
    if-ltz v2, :cond_f

    .line 2501
    iget v3, v10, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    mul-int v4, v2, v16

    .line 2503
    iget v5, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v5, v14

    :goto_13
    if-ltz v5, :cond_e

    .line 2504
    iget v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    invoke-static {v11, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2505
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    mul-int v6, v5, v17

    add-int/2addr v6, v4

    .line 2506
    invoke-static {v0, v1, v11, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 2510
    :cond_f
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v0, v9

    new-array v0, v0, [F

    move v5, v1

    .line 2512
    :goto_14
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v2, :cond_13

    mul-int v2, v5, v16

    move v3, v1

    .line 2514
    :goto_15
    iget v4, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v4, :cond_12

    mul-int/lit8 v4, v3, 0x2

    move v6, v1

    .line 2516
    :goto_16
    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v7, :cond_10

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v17

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2519
    aget v12, v11, v8

    aput v12, v0, v7

    add-int/2addr v7, v14

    add-int/2addr v8, v14

    .line 2520
    aget v8, v11, v8

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 2522
    :cond_10
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v6, v1

    .line 2523
    :goto_17
    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v7, :cond_11

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v17

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2526
    aget v12, v0, v7

    aput v12, v11, v8

    add-int/2addr v8, v14

    add-int/2addr v7, v14

    .line 2527
    aget v7, v0, v7

    aput v7, v11, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_13
    mul-int/2addr v2, v9

    .line 2532
    new-array v0, v2, [F

    move v5, v1

    :goto_18
    if-ge v5, v15, :cond_17

    mul-int v2, v5, v17

    move v3, v1

    .line 2536
    :goto_19
    iget v4, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v4, :cond_16

    mul-int/lit8 v4, v3, 0x2

    move v6, v1

    .line 2538
    :goto_1a
    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v7, :cond_14

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v16

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2541
    aget v9, v11, v8

    aput v9, v0, v7

    add-int/2addr v7, v14

    add-int/2addr v8, v14

    .line 2542
    aget v8, v11, v8

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2544
    :cond_14
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v6, v1

    .line 2545
    :goto_1b
    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v7, :cond_15

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v16

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2548
    aget v9, v0, v7

    aput v9, v11, v8

    add-int/2addr v8, v14

    add-int/2addr v7, v14

    .line 2549
    aget v7, v0, v7

    aput v7, v11, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_17
    move v5, v1

    .line 2554
    :goto_1c
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v0, :cond_1a

    sub-int v2, v0, v5

    .line 2555
    rem-int/2addr v2, v0

    mul-int v2, v2, v16

    mul-int v0, v5, v16

    move v3, v14

    move/from16 v4, v20

    :goto_1d
    if-ge v3, v4, :cond_19

    .line 2559
    iget v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v3

    mul-int v6, v6, v17

    mul-int v7, v3, v17

    add-int/2addr v6, v2

    move v8, v1

    .line 2563
    :goto_1e
    iget v9, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v8, v9, :cond_18

    mul-int/lit8 v9, v8, 0x2

    sub-int v12, v13, v9

    add-int v15, v0, v7

    add-int/2addr v15, v9

    .line 2567
    rem-int v9, v12, v13

    add-int/2addr v9, v6

    aget v18, v11, v15

    aput v18, v11, v9

    add-int/2addr v12, v14

    .line 2568
    rem-int/2addr v12, v13

    add-int/2addr v12, v6

    add-int/2addr v15, v14

    aget v9, v11, v15

    neg-float v9, v9

    aput v9, v11, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_19
    add-int/lit8 v5, v5, 0x1

    move/from16 v20, v4

    goto :goto_1c

    :cond_1a
    :goto_1f
    return-void
.end method

.method private mixedRadixRealForwardFull([[[F)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1875
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    .line 1876
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1877
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v11, v4, 0x2

    .line 1879
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    .line 1880
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    .line 1882
    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v12, v0

    .line 1885
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    const/4 v4, 0x0

    if-le v13, v3, :cond_9

    .line 1886
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v13, :cond_9

    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v5, v13, :cond_9

    if-lt v2, v13, :cond_9

    .line 1887
    new-array v14, v13, [Ljava/util/concurrent/Future;

    .line 1888
    div-int v1, v0, v13

    move v0, v4

    :goto_1
    if-ge v0, v13, :cond_2

    mul-int v3, v0, v1

    add-int/lit8 v5, v13, -0x1

    if-ne v0, v5, :cond_1

    .line 1891
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_1
    add-int v5, v3, v1

    .line 1893
    :goto_2
    new-instance v6, Lorg/jtransforms/fft/FloatFFT_3D$19;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/FloatFFT_3D$19;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 1906
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1910
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5, v15, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 1908
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5, v15, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v0, v4

    :goto_4
    if-ge v0, v13, :cond_4

    mul-int v3, v0, v1

    add-int/lit8 v5, v13, -0x1

    if-ne v0, v5, :cond_3

    .line 1915
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_3
    add-int v5, v3, v1

    .line 1917
    :goto_5
    new-instance v6, Lorg/jtransforms/fft/FloatFFT_3D$20;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/FloatFFT_3D$20;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1943
    :cond_4
    :try_start_1
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1947
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1945
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1950
    :goto_6
    div-int v0, v2, v13

    move v1, v4

    :goto_7
    if-ge v1, v13, :cond_6

    mul-int v3, v1, v0

    add-int/lit8 v5, v13, -0x1

    if-ne v1, v5, :cond_5

    move v5, v2

    goto :goto_8

    :cond_5
    add-int v5, v3, v0

    .line 1955
    :goto_8
    new-instance v6, Lorg/jtransforms/fft/FloatFFT_3D$21;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/FloatFFT_3D$21;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1981
    :cond_6
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1985
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1983
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1987
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/2addr v0, v13

    move v7, v4

    :goto_a
    if-ge v7, v13, :cond_8

    mul-int v3, v7, v0

    add-int/lit8 v1, v13, -0x1

    if-ne v7, v1, :cond_7

    .line 1990
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 1992
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$22;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$22;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_a

    .line 2013
    :cond_8
    :try_start_3
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_19

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2017
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2015
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_9
    move v0, v4

    .line 2021
    :goto_c
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v5, :cond_b

    move v5, v4

    .line 2022
    :goto_d
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v6, :cond_a

    .line 2023
    iget-object v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v7, v9, v0

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v4

    .line 2027
    :goto_e
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v5, :cond_f

    move v5, v4

    .line 2028
    :goto_f
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_e

    mul-int/lit8 v6, v5, 0x2

    move v7, v4

    .line 2030
    :goto_10
    iget v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v7, v10, :cond_c

    mul-int/lit8 v10, v7, 0x2

    .line 2032
    aget-object v13, v9, v0

    aget-object v13, v13, v7

    aget v14, v13, v6

    aput v14, v1, v10

    add-int/2addr v10, v3

    add-int/lit8 v14, v6, 0x1

    .line 2033
    aget v13, v13, v14

    aput v13, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2035
    :cond_c
    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v7, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v7, v4

    .line 2036
    :goto_11
    iget v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v7, v10, :cond_d

    mul-int/lit8 v10, v7, 0x2

    .line 2038
    aget-object v13, v9, v0

    aget-object v13, v13, v7

    aget v14, v1, v10

    aput v14, v13, v6

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v10, v3

    .line 2039
    aget v10, v1, v10

    aput v10, v13, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    mul-int/lit8 v5, v5, 0x2

    .line 2044
    new-array v0, v5, [F

    move v1, v4

    :goto_12
    if-ge v1, v2, :cond_13

    move v5, v4

    .line 2047
    :goto_13
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_12

    mul-int/lit8 v6, v5, 0x2

    move v7, v4

    .line 2049
    :goto_14
    iget v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v7, v10, :cond_10

    mul-int/lit8 v10, v7, 0x2

    .line 2051
    aget-object v13, v9, v7

    aget-object v13, v13, v1

    aget v14, v13, v6

    aput v14, v0, v10

    add-int/2addr v10, v3

    add-int/lit8 v14, v6, 0x1

    .line 2052
    aget v13, v13, v14

    aput v13, v0, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 2054
    :cond_10
    iget-object v7, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v7, v4

    .line 2055
    :goto_15
    iget v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v7, v10, :cond_11

    mul-int/lit8 v10, v7, 0x2

    .line 2057
    aget-object v13, v9, v7

    aget-object v13, v13, v1

    aget v14, v0, v10

    aput v14, v13, v6

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v10, v3

    .line 2058
    aget v10, v0, v10

    aput v10, v13, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    move v0, v4

    .line 2063
    :goto_16
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_16

    sub-int v2, v1, v0

    .line 2064
    rem-int/2addr v2, v1

    move v1, v3

    :goto_17
    if-ge v1, v12, :cond_15

    .line 2066
    iget v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v5, v1

    move v6, v4

    .line 2067
    :goto_18
    iget v7, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v6, v7, :cond_14

    mul-int/lit8 v7, v6, 0x2

    sub-int v10, v11, v7

    .line 2070
    aget-object v13, v9, v2

    aget-object v13, v13, v5

    rem-int v14, v10, v11

    aget-object v15, v9, v0

    aget-object v15, v15, v1

    aget v16, v15, v7

    aput v16, v13, v14

    add-int/2addr v10, v3

    .line 2071
    rem-int/2addr v10, v11

    add-int/2addr v7, v3

    aget v7, v15, v7

    neg-float v7, v7

    aput v7, v13, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_16
    :goto_19
    return-void
.end method

.method private mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    .line 3164
    const-class v16, Lorg/jtransforms/fft/FloatFFT_3D;

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    mul-long v11, v0, v9

    .line 3165
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v0, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 3166
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    div-long v3, v1, v9

    const-wide/16 v17, 0x1

    add-long v19, v3, v17

    .line 3168
    rem-long v3, v1, v9

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-nez v3, :cond_0

    .line 3169
    div-long/2addr v1, v9

    goto :goto_0

    :cond_0
    add-long v1, v1, v17

    .line 3171
    div-long/2addr v1, v9

    :goto_0
    move-wide/from16 v23, v1

    .line 3174
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v25, v1, v9

    .line 3175
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v27, v1, v9

    .line 3176
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v29, v1, v9

    .line 3178
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v7

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-le v7, v1, :cond_d

    .line 3179
    iget-boolean v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    int-to-long v5, v7

    cmp-long v1, v29, v5

    if-ltz v1, :cond_d

    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_d

    cmp-long v1, v19, v5

    if-ltz v1, :cond_d

    .line 3180
    new-array v9, v7, [Ljava/util/concurrent/Future;

    .line 3181
    div-long v21, v29, v5

    move v0, v8

    :goto_1
    if-ge v0, v7, :cond_2

    .line 3183
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    int-to-long v3, v0

    mul-long v3, v3, v21

    sub-long v31, v1, v3

    add-int/lit8 v1, v7, -0x1

    if-ne v0, v1, :cond_1

    add-long v1, v29, v17

    goto :goto_2

    :cond_1
    sub-long v1, v31, v21

    :goto_2
    move-wide/from16 v33, v1

    .line 3185
    new-instance v35, Lorg/jtransforms/fft/FloatFFT_3D$45;

    move-object/from16 v1, v35

    move-object/from16 v2, p0

    move-wide v3, v11

    move-wide/from16 v36, v5

    move-wide/from16 v5, v31

    move/from16 v38, v7

    move v10, v8

    move-wide/from16 v7, v33

    move-object/from16 v31, v9

    move-wide/from16 v9, v25

    move-wide/from16 v32, v11

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v13, v27

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/FloatFFT_3D$45;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;ZJ)V

    invoke-static/range {v35 .. v35}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v9, v31

    move-wide/from16 v11, v32

    move-wide/from16 v5, v36

    move/from16 v7, v38

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move-wide/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v31, v9

    move-wide/from16 v32, v11

    const/4 v13, 0x0

    .line 3203
    :try_start_0
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3207
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3205
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3210
    :goto_3
    new-instance v14, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v29, v29, v17

    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v0, v0, v29

    mul-long v0, v0, v32

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    move/from16 v12, v38

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v12, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v21

    add-int/lit8 v7, v12, -0x1

    if-ne v0, v7, :cond_3

    move-wide/from16 v5, v29

    goto :goto_5

    :cond_3
    add-long v1, v3, v21

    move-wide v5, v1

    .line 3215
    :goto_5
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$46;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v8, v14

    move-wide/from16 v9, v32

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/FloatFFT_3D$46;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3230
    :cond_4
    :try_start_1
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3234
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 3232
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v12, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v21

    add-int/lit8 v7, v12, -0x1

    if-ne v0, v7, :cond_5

    move-wide/from16 v5, v29

    goto :goto_8

    :cond_5
    add-long v1, v3, v21

    move-wide v5, v1

    .line 3240
    :goto_8
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$47;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-object v9, v14

    move-wide/from16 v10, v32

    move/from16 v40, v12

    move-object/from16 v12, p1

    move-object v15, v13

    move-object/from16 v18, v14

    move-wide/from16 v13, v27

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/FloatFFT_3D$47;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v15

    move-object/from16 v14, v18

    move/from16 v12, v40

    move-object/from16 v15, p0

    goto :goto_7

    :cond_6
    move/from16 v40, v12

    move-object v15, v13

    .line 3254
    :try_start_2
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_9
    move-object v13, v15

    move-object/from16 v15, p0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 3258
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 3256
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3261
    :goto_a
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v17, v0, v36

    move/from16 v14, v40

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v14, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v7, v14, -0x1

    if-ne v0, v7, :cond_7

    .line 3264
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_c

    :cond_7
    add-long v1, v3, v17

    :goto_c
    move-wide v5, v1

    .line 3265
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_3D$48;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_3D$48;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3294
    :cond_8
    :try_start_3
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 3298
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 3296
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3301
    :goto_d
    div-long v17, v19, v36

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v14, :cond_a

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v7, v14, -0x1

    if-ne v0, v7, :cond_9

    move-wide/from16 v5, v19

    goto :goto_f

    :cond_9
    add-long v1, v3, v17

    move-wide v5, v1

    .line 3305
    :goto_f
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_3D$49;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_3D$49;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3334
    :cond_a
    :try_start_4
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 3338
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 3336
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3341
    :goto_10
    iget-wide v0, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    div-long v17, v0, v36

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_c

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v7, v14, -0x1

    if-ne v0, v7, :cond_b

    .line 3344
    iget-wide v1, v15, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_12

    :cond_b
    add-long v1, v3, v17

    :goto_12
    move-wide v5, v1

    .line 3345
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_3D$50;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    move/from16 v20, v14

    move-wide/from16 v13, v32

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D$50;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, p0

    move/from16 v14, v20

    const/4 v13, 0x0

    goto :goto_11

    .line 3372
    :cond_c
    :try_start_5
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 3376
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    .line 3374
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    move-object/from16 v11, p0

    goto/16 :goto_21

    :cond_d
    move-wide/from16 v32, v11

    move-object/from16 v11, p0

    .line 3380
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    move-wide v12, v1

    :goto_14
    cmp-long v1, v12, v21

    if-ltz v1, :cond_f

    .line 3381
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v14, v12, v1

    mul-long v29, v12, v25

    .line 3383
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long v1, v1, v17

    move-wide/from16 v34, v1

    :goto_15
    cmp-long v1, v34, v21

    if-ltz v1, :cond_e

    .line 3384
    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v1, v1, v34

    add-long v2, v14, v1

    const-wide/16 v5, 0x0

    iget-wide v7, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    move-object/from16 v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    .line 3385
    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v7, p2

    invoke-virtual {v1, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    mul-long v1, v34, v27

    add-long v5, v29, v1

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move-wide/from16 v7, v32

    .line 3386
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V

    sub-long v34, v34, v17

    goto :goto_15

    :cond_e
    sub-long v12, v12, v17

    goto :goto_14

    .line 3390
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v1, v9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    .line 3392
    :goto_16
    iget-wide v4, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_13

    mul-long v4, v1, v25

    move-wide/from16 v6, v21

    .line 3394
    :goto_17
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_12

    mul-long v12, v6, v9

    move-wide/from16 v29, v4

    move-wide/from16 v14, v21

    .line 3396
    :goto_18
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_10

    mul-long v3, v14, v9

    mul-long v34, v14, v27

    add-long v34, v29, v34

    add-long v9, v34, v12

    move-object/from16 v5, p1

    .line 3399
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v0, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 3400
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v0, v3, v4, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    const-wide/16 v9, 0x2

    goto :goto_18

    :cond_10
    move-object/from16 v5, p1

    .line 3402
    iget-object v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    move-wide/from16 v8, v21

    .line 3403
    :goto_19
    iget-wide v14, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v3, v8, v14

    if-gez v3, :cond_11

    const-wide/16 v14, 0x2

    mul-long v3, v8, v14

    mul-long v14, v8, v27

    add-long v14, v29, v14

    add-long/2addr v14, v12

    .line 3406
    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v14, v15, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    add-long v3, v3, v17

    .line 3407
    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v5, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v17

    move/from16 v4, p2

    goto :goto_19

    :cond_11
    add-long v6, v6, v17

    move-wide/from16 v4, v29

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_17

    :cond_12
    move-object/from16 v5, p1

    add-long v1, v1, v17

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_16

    :cond_13
    move-object/from16 v5, p1

    .line 3412
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    :goto_1a
    cmp-long v6, v1, v19

    if-gez v6, :cond_17

    mul-long v6, v1, v27

    move-wide/from16 v8, v21

    .line 3416
    :goto_1b
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v10, v8, v12

    if-gez v10, :cond_16

    mul-long v12, v8, v3

    move-wide/from16 v14, v21

    .line 3418
    :goto_1c
    iget-wide v3, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_14

    move-wide/from16 v29, v1

    const-wide/16 v3, 0x2

    mul-long v1, v14, v3

    mul-long v3, v14, v25

    add-long/2addr v3, v6

    add-long/2addr v3, v12

    .line 3421
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v0, v1, v2, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v17

    add-long v3, v3, v17

    .line 3422
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    move-wide/from16 v1, v29

    goto :goto_1c

    :cond_14
    move-wide/from16 v29, v1

    .line 3424
    iget-object v1, v11, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    move-wide/from16 v3, v21

    .line 3425
    :goto_1d
    iget-wide v14, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v1, v3, v14

    if-gez v1, :cond_15

    const-wide/16 v14, 0x2

    mul-long v1, v3, v14

    mul-long v14, v3, v25

    add-long/2addr v14, v6

    add-long/2addr v14, v12

    .line 3428
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v5, v14, v15, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v17

    add-long v1, v1, v17

    .line 3429
    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v5, v14, v15, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v17

    move/from16 v2, p2

    goto :goto_1d

    :cond_15
    add-long v8, v8, v17

    move-wide/from16 v1, v29

    const-wide/16 v3, 0x2

    goto :goto_1b

    :cond_16
    move-wide/from16 v29, v1

    add-long v1, v29, v17

    const-wide/16 v3, 0x2

    goto :goto_1a

    :cond_17
    move-wide/from16 v0, v21

    .line 3434
    :goto_1e
    iget-wide v2, v11, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    sub-long v6, v2, v0

    .line 3435
    rem-long/2addr v6, v2

    mul-long v6, v6, v25

    mul-long v2, v0, v25

    move-wide/from16 v8, v17

    :goto_1f
    cmp-long v4, v8, v23

    if-gez v4, :cond_19

    .line 3439
    iget-wide v12, v11, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v12, v8

    mul-long v12, v12, v27

    mul-long v14, v8, v27

    add-long/2addr v12, v6

    move-wide/from16 v29, v6

    move-wide/from16 v19, v21

    .line 3443
    :goto_20
    iget-wide v6, v11, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v4, v19, v6

    if-gez v4, :cond_18

    const-wide/16 v6, 0x2

    mul-long v34, v19, v6

    sub-long v36, v32, v34

    add-long v38, v2, v14

    add-long v6, v38, v34

    .line 3447
    rem-long v34, v36, v32

    move-wide/from16 v38, v2

    add-long v2, v12, v34

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v5, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v36, v36, v17

    .line 3448
    rem-long v36, v36, v32

    add-long v2, v12, v36

    add-long v6, v6, v17

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v5, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v19, v19, v17

    move-wide/from16 v2, v38

    goto :goto_20

    :cond_18
    move-wide/from16 v38, v2

    add-long v8, v8, v17

    move-wide/from16 v6, v29

    goto :goto_1f

    :cond_19
    add-long v0, v0, v17

    goto :goto_1e

    :cond_1a
    :goto_21
    return-void
.end method

.method private mixedRadixRealInverseFull([FZ)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    .line 2870
    const-class v13, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v14, 0x2

    mul-int/lit8 v15, v0, 0x2

    .line 2871
    new-array v0, v15, [F

    .line 2872
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v1, 0x2

    const/4 v9, 0x1

    add-int/lit8 v8, v2, 0x1

    .line 2874
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 2875
    div-int/2addr v1, v14

    goto :goto_0

    :cond_0
    add-int/2addr v1, v9

    .line 2877
    div-int/2addr v1, v14

    :goto_0
    move v7, v1

    .line 2880
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v16, v1, 0x2

    .line 2881
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/lit8 v17, v1, 0x2

    .line 2882
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v6, v1, 0x2

    .line 2884
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    const/4 v4, 0x0

    if-le v5, v9, :cond_d

    .line 2885
    iget-boolean v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    if-lt v6, v5, :cond_d

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v1, v5, :cond_d

    if-lt v8, v5, :cond_d

    .line 2886
    new-array v3, v5, [Ljava/util/concurrent/Future;

    .line 2887
    div-int v18, v6, v5

    move v0, v4

    :goto_1
    if-ge v0, v5, :cond_2

    .line 2889
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v9

    mul-int v2, v0, v18

    sub-int v19, v1, v2

    add-int/lit8 v1, v5, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v1, v6, 0x1

    goto :goto_2

    :cond_1
    sub-int v1, v19, v18

    :goto_2
    move/from16 v20, v1

    .line 2891
    new-instance v21, Lorg/jtransforms/fft/FloatFFT_3D$39;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v22, v3

    move v3, v15

    move/from16 v4, v19

    move/from16 v24, v5

    move/from16 v5, v20

    move/from16 v19, v6

    move/from16 v6, v16

    move/from16 v20, v7

    move-object/from16 v7, p1

    move/from16 v25, v8

    move/from16 v8, p2

    move/from16 v26, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$39;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZI)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v3, v22

    move/from16 v5, v24

    move/from16 v8, v25

    move/from16 v9, v26

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v22, v3

    move/from16 v24, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v25, v8

    move/from16 v26, v9

    const/4 v9, 0x0

    .line 2909
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2913
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2911
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 2916
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v15, v1, v14

    aput v0, v1, v26

    const/4 v14, 0x0

    aput v19, v1, v14

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [[[F

    move v0, v14

    move/from16 v8, v24

    :goto_4
    if-ge v0, v8, :cond_4

    mul-int v3, v0, v18

    add-int/lit8 v5, v8, -0x1

    if-ne v0, v5, :cond_3

    move/from16 v4, v19

    goto :goto_5

    :cond_3
    add-int v1, v3, v18

    move v4, v1

    .line 2921
    :goto_5
    new-instance v23, Lorg/jtransforms/fft/FloatFFT_3D$40;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$40;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F[[[FZ)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2936
    :cond_4
    :try_start_1
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2940
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2938
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move v0, v14

    :goto_7
    if-ge v0, v8, :cond_6

    mul-int v3, v0, v18

    add-int/lit8 v5, v8, -0x1

    if-ne v0, v5, :cond_5

    move/from16 v4, v19

    goto :goto_8

    :cond_5
    add-int v1, v3, v18

    move v4, v1

    .line 2946
    :goto_8
    new-instance v23, Lorg/jtransforms/fft/FloatFFT_3D$41;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v5, v16

    move-object/from16 v6, v21

    move-object/from16 v7, p1

    move v14, v8

    move/from16 v8, v17

    move-object v12, v9

    move v9, v15

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$41;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    move-object v9, v12

    move v8, v14

    const/4 v14, 0x0

    move/from16 v12, p2

    goto :goto_7

    :cond_6
    move v14, v8

    move-object v12, v9

    .line 2960
    :try_start_2
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2964
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2962
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2967
    :goto_9
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/2addr v0, v14

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v14, :cond_8

    mul-int v3, v9, v0

    add-int/lit8 v5, v14, -0x1

    if-ne v9, v5, :cond_7

    .line 2970
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2971
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$42;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$42;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 3000
    :cond_8
    :try_start_3
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_c
    move/from16 v9, v25

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 3004
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 3002
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 3007
    :goto_d
    div-int v0, v9, v14

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v14, :cond_a

    mul-int v3, v8, v0

    add-int/lit8 v5, v14, -0x1

    if-ne v8, v5, :cond_9

    move v4, v9

    goto :goto_f

    :cond_9
    add-int v1, v3, v0

    move v4, v1

    .line 3011
    :goto_f
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$43;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move-object/from16 v7, p1

    move/from16 v19, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$43;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v19

    add-int/lit8 v8, v19, 0x1

    goto :goto_e

    .line 3040
    :cond_a
    :try_start_4
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 3044
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 3042
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3047
    :goto_10
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/2addr v0, v14

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v14, :cond_c

    mul-int v3, v9, v0

    add-int/lit8 v5, v14, -0x1

    if-ne v9, v5, :cond_b

    .line 3050
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_12

    :cond_b
    add-int v1, v3, v0

    :goto_12
    move v4, v1

    .line 3051
    new-instance v18, Lorg/jtransforms/fft/FloatFFT_3D$44;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move v8, v15

    move/from16 v24, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$44;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIIII[F)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v24

    add-int/lit8 v9, v24, 0x1

    goto :goto_11

    .line 3078
    :cond_c
    :try_start_5
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_20

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 3082
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 3080
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_d
    move v1, v4

    move/from16 v20, v7

    move/from16 v26, v9

    move v9, v8

    .line 3086
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_f

    .line 3087
    iget v3, v10, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    mul-int v4, v2, v16

    .line 3089
    iget v5, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v5, v5, -0x1

    :goto_14
    if-ltz v5, :cond_e

    .line 3090
    iget v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    iget v7, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    invoke-static {v11, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3091
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v7, p2

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    mul-int v6, v5, v17

    add-int/2addr v6, v4

    .line 3092
    invoke-static {v0, v1, v11, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_e
    move/from16 v7, p2

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_f
    move/from16 v7, p2

    .line 3096
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v0, v14

    new-array v0, v0, [F

    move v4, v1

    .line 3098
    :goto_15
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v2, :cond_13

    mul-int v2, v4, v16

    move v3, v1

    .line 3100
    :goto_16
    iget v5, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v5, :cond_12

    mul-int/lit8 v5, v3, 0x2

    move v6, v1

    .line 3102
    :goto_17
    iget v8, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v8, :cond_10

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v17

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3105
    aget v13, v11, v12

    aput v13, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3106
    aget v12, v11, v12

    aput v12, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 3108
    :cond_10
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v6, v1

    .line 3109
    :goto_18
    iget v8, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v8, :cond_11

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v17

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3112
    aget v13, v0, v8

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 3113
    aget v8, v0, v8

    aput v8, v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_13
    mul-int/2addr v2, v14

    .line 3118
    new-array v0, v2, [F

    move v4, v1

    :goto_19
    if-ge v4, v9, :cond_17

    mul-int v2, v4, v17

    move v3, v1

    .line 3122
    :goto_1a
    iget v5, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v5, :cond_16

    mul-int/lit8 v5, v3, 0x2

    move v6, v1

    .line 3124
    :goto_1b
    iget v8, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v8, :cond_14

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v16

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3127
    aget v13, v11, v12

    aput v13, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3128
    aget v12, v11, v12

    aput v12, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 3130
    :cond_14
    iget-object v6, v10, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v6, v1

    .line 3131
    :goto_1c
    iget v8, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v8, :cond_15

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v16

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3134
    aget v13, v0, v8

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 3135
    aget v8, v0, v8

    aput v8, v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_17
    move v4, v1

    .line 3140
    :goto_1d
    iget v0, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v0, :cond_1a

    sub-int v2, v0, v4

    .line 3141
    rem-int/2addr v2, v0

    mul-int v2, v2, v16

    mul-int v0, v4, v16

    move/from16 v3, v20

    move/from16 v9, v26

    :goto_1e
    if-ge v9, v3, :cond_19

    .line 3145
    iget v5, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v5, v9

    mul-int v5, v5, v17

    mul-int v6, v9, v17

    add-int/2addr v5, v2

    move v7, v1

    .line 3149
    :goto_1f
    iget v8, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v7, v8, :cond_18

    mul-int/lit8 v8, v7, 0x2

    sub-int v12, v15, v8

    add-int v13, v0, v6

    add-int/2addr v13, v8

    .line 3153
    rem-int v8, v12, v15

    add-int/2addr v8, v5

    aget v14, v11, v13

    aput v14, v11, v8

    add-int/lit8 v12, v12, 0x1

    .line 3154
    rem-int/2addr v12, v15

    add-int/2addr v12, v5

    add-int/lit8 v13, v13, 0x1

    aget v8, v11, v13

    neg-float v8, v8

    aput v8, v11, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v3

    goto :goto_1d

    :cond_1a
    :goto_20
    return-void
.end method

.method private mixedRadixRealInverseFull([[[FZ)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v7, p2

    .line 2081
    const-class v9, Lorg/jtransforms/fft/FloatFFT_3D;

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    .line 2082
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 2083
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v11, v2, 0x2

    .line 2085
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 2086
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    .line 2088
    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v12, v0

    .line 2091
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    if-le v13, v3, :cond_9

    .line 2092
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v13, :cond_9

    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v2, v13, :cond_9

    if-lt v10, v13, :cond_9

    .line 2093
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 2094
    div-int v16, v0, v13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v13, :cond_2

    mul-int v3, v0, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_1

    .line 2097
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v16

    :goto_2
    move v4, v1

    .line 2099
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$23;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$23;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 2112
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2116
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 2114
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v13, :cond_4

    mul-int v3, v0, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 2121
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_3
    add-int v1, v3, v16

    :goto_5
    move v4, v1

    .line 2123
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$24;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object v14, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$24;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v6, v14

    goto :goto_4

    :cond_4
    move-object v14, v6

    .line 2149
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2153
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 2151
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2156
    :goto_6
    div-int v0, v10, v13

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_6

    mul-int v3, v6, v0

    add-int/lit8 v1, v13, -0x1

    if-ne v6, v1, :cond_5

    move v4, v10

    goto :goto_8

    :cond_5
    add-int v1, v3, v0

    move v4, v1

    .line 2160
    :goto_8
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$25;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$25;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_7

    .line 2186
    :cond_6
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2190
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 2188
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2192
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/2addr v0, v13

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v13, :cond_8

    mul-int v3, v10, v0

    add-int/lit8 v1, v13, -0x1

    if-ne v10, v1, :cond_7

    .line 2195
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2197
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$26;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move v6, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$26;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[[[F)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2218
    :cond_8
    :try_start_3
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_19

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 2222
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 2220
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_9
    const/4 v0, 0x0

    .line 2226
    :goto_c
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_b

    const/4 v2, 0x0

    .line 2227
    :goto_d
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_a

    .line 2228
    iget-object v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-virtual {v4, v5, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2232
    :goto_e
    iget v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_f

    const/4 v2, 0x0

    .line 2233
    :goto_f
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v4, :cond_e

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    .line 2235
    :goto_10
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v6, :cond_c

    mul-int/lit8 v6, v5, 0x2

    .line 2237
    aget-object v9, p1, v0

    aget-object v9, v9, v5

    aget v13, v9, v4

    aput v13, v1, v6

    add-int/2addr v6, v3

    add-int/lit8 v13, v4, 0x1

    .line 2238
    aget v9, v9, v13

    aput v9, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 2240
    :cond_c
    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v1, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v5, 0x0

    .line 2241
    :goto_11
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v6, :cond_d

    mul-int/lit8 v6, v5, 0x2

    .line 2243
    aget-object v9, p1, v0

    aget-object v9, v9, v5

    aget v13, v1, v6

    aput v13, v9, v4

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v6, v3

    .line 2244
    aget v6, v1, v6

    aput v6, v9, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    mul-int/lit8 v2, v2, 0x2

    .line 2249
    new-array v0, v2, [F

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v10, :cond_13

    const/4 v2, 0x0

    .line 2252
    :goto_13
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v4, :cond_12

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    .line 2254
    :goto_14
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_10

    mul-int/lit8 v6, v5, 0x2

    .line 2256
    aget-object v9, p1, v5

    aget-object v9, v9, v1

    aget v13, v9, v4

    aput v13, v0, v6

    add-int/2addr v6, v3

    add-int/lit8 v13, v4, 0x1

    .line 2257
    aget v9, v9, v13

    aput v9, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 2259
    :cond_10
    iget-object v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v5, 0x0

    .line 2260
    :goto_15
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_11

    mul-int/lit8 v6, v5, 0x2

    .line 2262
    aget-object v9, p1, v5

    aget-object v9, v9, v1

    aget v13, v0, v6

    aput v13, v9, v4

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v6, v3

    .line 2263
    aget v6, v0, v6

    aput v6, v9, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    .line 2268
    :goto_16
    iget v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_16

    sub-int v2, v1, v0

    .line 2269
    rem-int/2addr v2, v1

    move v1, v3

    :goto_17
    if-ge v1, v12, :cond_15

    .line 2271
    iget v4, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    .line 2272
    :goto_18
    iget v6, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_14

    mul-int/lit8 v6, v5, 0x2

    sub-int v7, v11, v6

    .line 2275
    aget-object v9, p1, v2

    aget-object v9, v9, v4

    rem-int v10, v7, v11

    aget-object v13, p1, v0

    aget-object v13, v13, v1

    aget v14, v13, v6

    aput v14, v9, v10

    add-int/2addr v7, v3

    .line 2276
    rem-int/2addr v7, v11

    add-int/2addr v6, v3

    aget v6, v13, v6

    neg-float v6, v6

    aput v6, v9, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_16
    :goto_19
    return-void
.end method

.method private rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7035
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    .line 7036
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    shr-long v4, v5, v4

    if-gez p1, :cond_2

    const-wide/16 v8, 0x1

    :goto_0
    cmp-long v10, v8, v2

    if-gez v10, :cond_1

    .line 7039
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long/2addr v10, v8

    .line 7040
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v14, v8, v12

    mul-long v6, v10, v12

    mul-long v17, v8, v12

    move-wide/from16 v19, v2

    .line 7042
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v21, v4, v2

    move-wide/from16 v23, v8

    add-long v8, v17, v21

    mul-long/2addr v12, v10

    mul-long/2addr v2, v4

    add-long/2addr v12, v2

    .line 7044
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v2, v3

    .line 7045
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-float v3, v3, v17

    invoke-virtual {v1, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7046
    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    .line 7047
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-long/2addr v14, v2

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-float v2, v17, v2

    .line 7048
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-float v3, v3, v17

    invoke-virtual {v1, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7049
    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7050
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    sub-float/2addr v2, v3

    .line 7051
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    add-float/2addr v3, v6

    invoke-virtual {v1, v8, v9, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7052
    invoke-virtual {v1, v12, v13, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    .line 7053
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    add-long/2addr v8, v2

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    sub-float/2addr v6, v2

    .line 7054
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7055
    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    :goto_1
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 7057
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v6, v2

    .line 7058
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v12, v23, v8

    iget-wide v14, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v17, v2, v14

    add-long v12, v12, v17

    mul-long/2addr v8, v10

    mul-long/2addr v14, v6

    add-long/2addr v8, v14

    .line 7060
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    sub-float/2addr v14, v15

    .line 7061
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-float v15, v15, v17

    invoke-virtual {v1, v12, v13, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7062
    invoke-virtual {v1, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    .line 7063
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-long/2addr v12, v14

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float v14, v17, v14

    .line 7064
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v17

    add-float v15, v15, v17

    invoke-virtual {v1, v12, v13, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7065
    invoke-virtual {v1, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7066
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v12, v10, v8

    iget-wide v14, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v17, v2, v14

    add-long v12, v12, v17

    mul-long v8, v8, v23

    mul-long/2addr v6, v14

    add-long/2addr v8, v6

    .line 7068
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-float/2addr v6, v7

    .line 7069
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v7, v14

    invoke-virtual {v1, v12, v13, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7070
    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 7071
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-long/2addr v12, v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    sub-float/2addr v14, v15

    .line 7072
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v16

    add-float v15, v15, v16

    invoke-virtual {v1, v12, v13, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7073
    invoke-virtual {v1, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v2, v6

    goto/16 :goto_1

    :cond_0
    const-wide/16 v6, 0x1

    add-long v8, v23, v6

    move-wide/from16 v2, v19

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v19, v2

    const-wide/16 v2, 0x1

    :goto_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 7077
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v6, v2

    .line 7078
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v10, v2, v8

    mul-long/2addr v8, v6

    .line 7080
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    sub-float/2addr v12, v13

    .line 7081
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v1, v10, v11, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7082
    invoke-virtual {v1, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 7083
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v14, v12

    .line 7084
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v1, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7085
    invoke-virtual {v1, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7086
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v10, v19, v8

    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v14, v2, v12

    add-long/2addr v10, v14

    mul-long v8, v8, v19

    mul-long/2addr v6, v12

    add-long/2addr v8, v6

    .line 7088
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-float/2addr v6, v7

    .line 7089
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-float/2addr v7, v12

    invoke-virtual {v1, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7090
    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 7091
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-long/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    sub-float/2addr v12, v13

    .line 7092
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v1, v10, v11, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7093
    invoke-virtual {v1, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v2, v6

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v19, v2

    const-wide/16 v2, 0x1

    :goto_3
    cmp-long v6, v2, v19

    const/high16 v7, 0x3f000000    # 0.5f

    if-gez v6, :cond_4

    .line 7097
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    sub-long/2addr v8, v2

    .line 7098
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v12, v8, v10

    mul-long/2addr v10, v2

    .line 7100
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float/2addr v6, v14

    mul-float/2addr v6, v7

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7101
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float/2addr v6, v14

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    add-long/2addr v10, v14

    .line 7102
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v6, v14

    mul-float/2addr v6, v7

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7103
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v6, v12

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7104
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v12, v8, v10

    iget-wide v14, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v17, v4, v14

    add-long v12, v12, v17

    mul-long/2addr v10, v2

    mul-long/2addr v14, v4

    add-long/2addr v10, v14

    .line 7106
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float/2addr v6, v14

    mul-float/2addr v6, v7

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7107
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    sub-float/2addr v6, v14

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    add-long/2addr v10, v14

    .line 7108
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v6, v14

    mul-float/2addr v6, v7

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7109
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v6, v12

    invoke-virtual {v1, v10, v11, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v10, 0x1

    :goto_4
    cmp-long v6, v10, v4

    if-gez v6, :cond_3

    .line 7111
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v12, v10

    .line 7112
    iget-wide v14, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v17, v8, v14

    move-wide/from16 v21, v8

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v23, v12, v7

    move-wide/from16 v25, v4

    add-long v4, v17, v23

    mul-long/2addr v14, v2

    mul-long/2addr v7, v10

    add-long/2addr v14, v7

    .line 7114
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7115
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float/2addr v6, v8

    invoke-virtual {v1, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    add-long/2addr v14, v8

    .line 7116
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7117
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    sub-float/2addr v6, v4

    invoke-virtual {v1, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7118
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v6, v2, v4

    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v6, v12

    mul-long v4, v4, v21

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 7120
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    invoke-virtual {v1, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7121
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v8, v12

    invoke-virtual {v1, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    add-long/2addr v4, v12

    .line 7122
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    add-float/2addr v8, v14

    mul-float/2addr v8, v9

    invoke-virtual {v1, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7123
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    sub-float/2addr v8, v6

    invoke-virtual {v1, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v10, v12

    move-wide/from16 v8, v21

    move-wide/from16 v4, v25

    const/high16 v7, 0x3f000000    # 0.5f

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v25, v4

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    goto/16 :goto_3

    :cond_4
    move-wide/from16 v25, v4

    const-wide/16 v2, 0x1

    :goto_5
    cmp-long v4, v2, v25

    if-gez v4, :cond_5

    .line 7127
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    sub-long/2addr v4, v2

    .line 7128
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v8, v4, v6

    mul-long/2addr v6, v2

    .line 7130
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-virtual {v1, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7131
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v10, v12

    invoke-virtual {v1, v6, v7, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    add-long/2addr v6, v12

    .line 7132
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-float/2addr v10, v12

    mul-float/2addr v10, v11

    invoke-virtual {v1, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7133
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float/2addr v10, v8

    invoke-virtual {v1, v6, v7, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7134
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v8, v19, v6

    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v10

    add-long/2addr v8, v4

    mul-long v4, v19, v6

    mul-long/2addr v10, v2

    add-long/2addr v4, v10

    .line 7136
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7137
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    sub-float/2addr v6, v10

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    add-long/2addr v4, v10

    .line 7138
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    add-float/2addr v6, v12

    mul-float/2addr v6, v7

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7139
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-float/2addr v6, v8

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v2, v10

    goto/16 :goto_5

    :cond_5
    return-void
.end method

.method private rdft3d_sub(I[F)V
    .locals 13

    .line 6921
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 6922
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    shr-int/2addr v2, v1

    if-gez p1, :cond_2

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 6925
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v3, p1

    .line 6926
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v5, p1, v4

    mul-int v6, v3, v4

    mul-int v7, p1, v4

    .line 6928
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v9, v2, v8

    add-int/2addr v7, v9

    mul-int/2addr v4, v3

    mul-int/2addr v8, v2

    add-int/2addr v4, v8

    .line 6930
    aget v8, p2, v5

    aget v9, p2, v6

    sub-float v10, v8, v9

    add-float/2addr v8, v9

    .line 6931
    aput v8, p2, v5

    .line 6932
    aput v10, p2, v6

    add-int/2addr v6, v1

    .line 6933
    aget v8, p2, v6

    add-int/2addr v5, v1

    aget v9, p2, v5

    sub-float v10, v8, v9

    add-float/2addr v9, v8

    .line 6934
    aput v9, p2, v5

    .line 6935
    aput v10, p2, v6

    .line 6936
    aget v5, p2, v7

    aget v6, p2, v4

    sub-float v8, v5, v6

    add-float/2addr v5, v6

    .line 6937
    aput v5, p2, v7

    .line 6938
    aput v8, p2, v4

    add-int/2addr v4, v1

    .line 6939
    aget v5, p2, v4

    add-int/2addr v7, v1

    aget v6, p2, v7

    sub-float v8, v5, v6

    add-float/2addr v6, v5

    .line 6940
    aput v6, p2, v7

    .line 6941
    aput v8, p2, v4

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 6943
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v5, v4

    .line 6944
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v7, p1, v6

    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v9, v4, v8

    add-int/2addr v7, v9

    mul-int v9, v3, v6

    mul-int v10, v5, v8

    add-int/2addr v9, v10

    .line 6946
    aget v10, p2, v7

    aget v11, p2, v9

    sub-float v12, v10, v11

    add-float/2addr v10, v11

    .line 6947
    aput v10, p2, v7

    .line 6948
    aput v12, p2, v9

    add-int/2addr v9, v1

    .line 6949
    aget v10, p2, v9

    add-int/2addr v7, v1

    aget v11, p2, v7

    sub-float v12, v10, v11

    add-float/2addr v11, v10

    .line 6950
    aput v11, p2, v7

    .line 6951
    aput v12, p2, v9

    mul-int v7, v3, v6

    mul-int v9, v4, v8

    add-int/2addr v7, v9

    mul-int/2addr v6, p1

    mul-int/2addr v5, v8

    add-int/2addr v6, v5

    .line 6954
    aget v5, p2, v7

    aget v8, p2, v6

    sub-float v9, v5, v8

    add-float/2addr v5, v8

    .line 6955
    aput v5, p2, v7

    .line 6956
    aput v9, p2, v6

    add-int/2addr v6, v1

    .line 6957
    aget v5, p2, v6

    add-int/2addr v7, v1

    aget v8, p2, v7

    sub-float v9, v5, v8

    add-float/2addr v8, v5

    .line 6958
    aput v8, p2, v7

    .line 6959
    aput v9, p2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_1
    move p1, v1

    :goto_2
    if-ge p1, v2, :cond_5

    .line 6963
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, p1

    .line 6964
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v5, p1, v4

    mul-int v6, v3, v4

    .line 6966
    aget v7, p2, v5

    aget v8, p2, v6

    sub-float v9, v7, v8

    add-float/2addr v7, v8

    .line 6967
    aput v7, p2, v5

    .line 6968
    aput v9, p2, v6

    add-int/2addr v6, v1

    .line 6969
    aget v7, p2, v6

    add-int/2addr v5, v1

    aget v8, p2, v5

    sub-float v9, v7, v8

    add-float/2addr v8, v7

    .line 6970
    aput v8, p2, v5

    .line 6971
    aput v9, p2, v6

    .line 6972
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v6, v0, v5

    mul-int v7, p1, v4

    add-int/2addr v6, v7

    mul-int/2addr v5, v0

    mul-int/2addr v3, v4

    add-int/2addr v5, v3

    .line 6974
    aget v3, p2, v6

    aget v4, p2, v5

    sub-float v7, v3, v4

    add-float/2addr v3, v4

    .line 6975
    aput v3, p2, v6

    .line 6976
    aput v7, p2, v5

    add-int/2addr v5, v1

    .line 6977
    aget v3, p2, v5

    add-int/2addr v6, v1

    aget v4, p2, v6

    sub-float v7, v3, v4

    add-float/2addr v4, v3

    .line 6978
    aput v4, p2, v6

    .line 6979
    aput v7, p2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_3
    const/high16 v3, 0x3f000000    # 0.5f

    if-ge p1, v0, :cond_4

    .line 6983
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v4, p1

    .line 6984
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v6, v4, v5

    mul-int v7, p1, v5

    .line 6986
    aget v8, p2, v7

    aget v9, p2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    aput v8, p2, v6

    .line 6987
    aget v9, p2, v7

    sub-float/2addr v9, v8

    aput v9, p2, v7

    add-int/2addr v6, v1

    add-int/2addr v7, v1

    .line 6988
    aget v8, p2, v7

    aget v9, p2, v6

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    aput v8, p2, v6

    .line 6989
    aget v6, p2, v7

    sub-float/2addr v6, v8

    aput v6, p2, v7

    mul-int v6, v4, v5

    .line 6990
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v8, v2, v7

    add-int/2addr v6, v8

    mul-int/2addr v5, p1

    mul-int/2addr v7, v2

    add-int/2addr v5, v7

    .line 6992
    aget v7, p2, v5

    aget v8, p2, v6

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    aput v7, p2, v6

    .line 6993
    aget v8, p2, v5

    sub-float/2addr v8, v7

    aput v8, p2, v5

    add-int/2addr v6, v1

    add-int/2addr v5, v1

    .line 6994
    aget v7, p2, v5

    aget v8, p2, v6

    add-float/2addr v7, v8

    mul-float/2addr v7, v3

    aput v7, p2, v6

    .line 6995
    aget v6, p2, v5

    sub-float/2addr v6, v7

    aput v6, p2, v5

    move v5, v1

    :goto_4
    if-ge v5, v2, :cond_3

    .line 6997
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v5

    .line 6998
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v8, v4, v7

    iget v9, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v10, v6, v9

    add-int/2addr v8, v10

    mul-int v10, p1, v7

    mul-int v11, v5, v9

    add-int/2addr v10, v11

    .line 7000
    aget v11, p2, v10

    aget v12, p2, v8

    sub-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, p2, v8

    .line 7001
    aget v12, p2, v10

    sub-float/2addr v12, v11

    aput v12, p2, v10

    add-int/2addr v8, v1

    add-int/2addr v10, v1

    .line 7002
    aget v11, p2, v10

    aget v12, p2, v8

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, p2, v8

    .line 7003
    aget v8, p2, v10

    sub-float/2addr v8, v11

    aput v8, p2, v10

    mul-int v8, p1, v7

    mul-int/2addr v6, v9

    add-int/2addr v8, v6

    mul-int/2addr v7, v4

    mul-int/2addr v9, v5

    add-int/2addr v7, v9

    .line 7006
    aget v6, p2, v7

    aget v9, p2, v8

    sub-float/2addr v6, v9

    mul-float/2addr v6, v3

    aput v6, p2, v8

    .line 7007
    aget v9, p2, v7

    sub-float/2addr v9, v6

    aput v9, p2, v7

    add-int/2addr v8, v1

    add-int/2addr v7, v1

    .line 7008
    aget v6, p2, v7

    aget v9, p2, v8

    add-float/2addr v6, v9

    mul-float/2addr v6, v3

    aput v6, p2, v8

    .line 7009
    aget v8, p2, v7

    sub-float/2addr v8, v6

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_4
    move p1, v1

    :goto_5
    if-ge p1, v2, :cond_5

    .line 7013
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v4, p1

    .line 7014
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v6, v4, v5

    mul-int v7, p1, v5

    .line 7016
    aget v8, p2, v7

    aget v9, p2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    aput v8, p2, v6

    .line 7017
    aget v9, p2, v7

    sub-float/2addr v9, v8

    aput v9, p2, v7

    add-int/2addr v6, v1

    add-int/2addr v7, v1

    .line 7018
    aget v8, p2, v7

    aget v9, p2, v6

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    aput v8, p2, v6

    .line 7019
    aget v6, p2, v7

    sub-float/2addr v6, v8

    aput v6, p2, v7

    .line 7020
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v7, v0, v6

    mul-int/2addr v4, v5

    add-int/2addr v7, v4

    mul-int/2addr v6, v0

    mul-int/2addr v5, p1

    add-int/2addr v6, v5

    .line 7022
    aget v4, p2, v6

    aget v5, p2, v7

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, p2, v7

    .line 7023
    aget v5, p2, v6

    sub-float/2addr v5, v4

    aput v5, p2, v6

    add-int/2addr v7, v1

    add-int/2addr v6, v1

    .line 7024
    aget v4, p2, v6

    aget v5, p2, v7

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    aput v4, p2, v7

    .line 7025
    aget v5, p2, v6

    sub-float/2addr v5, v4

    aput v5, p2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private rdft3d_sub(I[[[F)V
    .locals 16

    move-object/from16 v0, p0

    .line 7149
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 7150
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    shr-int/2addr v3, v2

    const/4 v4, 0x0

    if-gez p1, :cond_2

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_1

    .line 7153
    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v6, v5

    .line 7154
    aget-object v7, p2, v5

    aget-object v8, v7, v4

    aget v9, v8, v4

    aget-object v10, p2, v6

    aget-object v11, v10, v4

    aget v12, v11, v4

    sub-float v13, v9, v12

    add-float/2addr v9, v12

    .line 7155
    aput v9, v8, v4

    .line 7156
    aput v13, v11, v4

    .line 7157
    aget v9, v11, v2

    aget v12, v8, v2

    sub-float v13, v9, v12

    add-float/2addr v12, v9

    .line 7158
    aput v12, v8, v2

    .line 7159
    aput v13, v11, v2

    .line 7160
    aget-object v7, v7, v3

    aget v8, v7, v4

    aget-object v9, v10, v3

    aget v10, v9, v4

    sub-float v11, v8, v10

    add-float/2addr v8, v10

    .line 7161
    aput v8, v7, v4

    .line 7162
    aput v11, v9, v4

    .line 7163
    aget v8, v9, v2

    aget v10, v7, v2

    sub-float v11, v8, v10

    add-float/2addr v10, v8

    .line 7164
    aput v10, v7, v2

    .line 7165
    aput v11, v9, v2

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_0

    .line 7167
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v8, v7

    .line 7168
    aget-object v9, p2, v5

    aget-object v10, v9, v7

    aget v11, v10, v4

    aget-object v12, p2, v6

    aget-object v13, v12, v8

    aget v14, v13, v4

    sub-float v15, v11, v14

    add-float/2addr v11, v14

    .line 7169
    aput v11, v10, v4

    .line 7170
    aput v15, v13, v4

    .line 7171
    aget v11, v13, v2

    aget v14, v10, v2

    sub-float v15, v11, v14

    add-float/2addr v14, v11

    .line 7172
    aput v14, v10, v2

    .line 7173
    aput v15, v13, v2

    .line 7174
    aget-object v10, v12, v7

    aget v11, v10, v4

    aget-object v8, v9, v8

    aget v9, v8, v4

    sub-float v12, v11, v9

    add-float/2addr v11, v9

    .line 7175
    aput v11, v10, v4

    .line 7176
    aput v12, v8, v4

    .line 7177
    aget v9, v8, v2

    aget v11, v10, v2

    sub-float v12, v9, v11

    add-float/2addr v11, v9

    .line 7178
    aput v11, v10, v2

    .line 7179
    aput v12, v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_5

    .line 7183
    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v5

    .line 7184
    aget-object v7, p2, v4

    aget-object v8, v7, v5

    aget v9, v8, v4

    aget-object v7, v7, v6

    aget v10, v7, v4

    sub-float v11, v9, v10

    add-float/2addr v9, v10

    .line 7185
    aput v9, v8, v4

    .line 7186
    aput v11, v7, v4

    .line 7187
    aget v9, v7, v2

    aget v10, v8, v2

    sub-float v11, v9, v10

    add-float/2addr v10, v9

    .line 7188
    aput v10, v8, v2

    .line 7189
    aput v11, v7, v2

    .line 7190
    aget-object v7, p2, v1

    aget-object v8, v7, v5

    aget v9, v8, v4

    aget-object v6, v7, v6

    aget v7, v6, v4

    sub-float v10, v9, v7

    add-float/2addr v9, v7

    .line 7191
    aput v9, v8, v4

    .line 7192
    aput v10, v6, v4

    .line 7193
    aget v7, v6, v2

    aget v9, v8, v2

    sub-float v10, v7, v9

    add-float/2addr v9, v7

    .line 7194
    aput v9, v8, v2

    .line 7195
    aput v10, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_3
    const/high16 v6, 0x3f000000    # 0.5f

    if-ge v5, v1, :cond_4

    .line 7199
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v7, v5

    .line 7200
    aget-object v8, p2, v7

    aget-object v9, v8, v4

    aget-object v10, p2, v5

    aget-object v11, v10, v4

    aget v12, v11, v4

    aget v13, v9, v4

    sub-float/2addr v12, v13

    mul-float/2addr v12, v6

    aput v12, v9, v4

    .line 7201
    aget v13, v11, v4

    sub-float/2addr v13, v12

    aput v13, v11, v4

    .line 7202
    aget v12, v11, v2

    aget v13, v9, v2

    add-float/2addr v12, v13

    mul-float/2addr v12, v6

    aput v12, v9, v2

    .line 7203
    aget v9, v11, v2

    sub-float/2addr v9, v12

    aput v9, v11, v2

    .line 7204
    aget-object v8, v8, v3

    aget-object v9, v10, v3

    aget v10, v9, v4

    aget v11, v8, v4

    sub-float/2addr v10, v11

    mul-float/2addr v10, v6

    aput v10, v8, v4

    .line 7205
    aget v11, v9, v4

    sub-float/2addr v11, v10

    aput v11, v9, v4

    .line 7206
    aget v10, v9, v2

    aget v11, v8, v2

    add-float/2addr v10, v11

    mul-float/2addr v10, v6

    aput v10, v8, v2

    .line 7207
    aget v8, v9, v2

    sub-float/2addr v8, v10

    aput v8, v9, v2

    move v8, v2

    :goto_4
    if-ge v8, v3, :cond_3

    .line 7209
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v9, v8

    .line 7210
    aget-object v10, p2, v7

    aget-object v11, v10, v9

    aget-object v12, p2, v5

    aget-object v13, v12, v8

    aget v14, v13, v4

    aget v15, v11, v4

    sub-float/2addr v14, v15

    mul-float/2addr v14, v6

    aput v14, v11, v4

    .line 7211
    aget v15, v13, v4

    sub-float/2addr v15, v14

    aput v15, v13, v4

    .line 7212
    aget v14, v13, v2

    aget v15, v11, v2

    add-float/2addr v14, v15

    mul-float/2addr v14, v6

    aput v14, v11, v2

    .line 7213
    aget v11, v13, v2

    sub-float/2addr v11, v14

    aput v11, v13, v2

    .line 7214
    aget-object v9, v12, v9

    aget-object v10, v10, v8

    aget v11, v10, v4

    aget v12, v9, v4

    sub-float/2addr v11, v12

    mul-float/2addr v11, v6

    aput v11, v9, v4

    .line 7215
    aget v12, v10, v4

    sub-float/2addr v12, v11

    aput v12, v10, v4

    .line 7216
    aget v11, v10, v2

    aget v12, v9, v2

    add-float/2addr v11, v12

    mul-float/2addr v11, v6

    aput v11, v9, v2

    .line 7217
    aget v9, v10, v2

    sub-float/2addr v9, v11

    aput v9, v10, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_4
    move v5, v2

    :goto_5
    if-ge v5, v3, :cond_5

    .line 7221
    iget v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v7, v5

    .line 7222
    aget-object v8, p2, v4

    aget-object v9, v8, v7

    aget-object v8, v8, v5

    aget v10, v8, v4

    aget v11, v9, v4

    sub-float/2addr v10, v11

    mul-float/2addr v10, v6

    aput v10, v9, v4

    .line 7223
    aget v11, v8, v4

    sub-float/2addr v11, v10

    aput v11, v8, v4

    .line 7224
    aget v10, v8, v2

    aget v11, v9, v2

    add-float/2addr v10, v11

    mul-float/2addr v10, v6

    aput v10, v9, v2

    .line 7225
    aget v9, v8, v2

    sub-float/2addr v9, v10

    aput v9, v8, v2

    .line 7226
    aget-object v8, p2, v1

    aget-object v7, v8, v7

    aget-object v8, v8, v5

    aget v9, v8, v4

    aget v10, v7, v4

    sub-float/2addr v9, v10

    mul-float/2addr v9, v6

    aput v9, v7, v4

    .line 7227
    aget v10, v8, v4

    sub-float/2addr v10, v9

    aput v10, v8, v4

    .line 7228
    aget v9, v8, v2

    aget v10, v7, v2

    add-float/2addr v9, v10

    mul-float/2addr v9, v6

    aput v9, v7, v2

    .line 7229
    aget v7, v8, v2

    sub-float/2addr v7, v9

    aput v7, v8, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private xdft3da_sub1(II[FZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 3459
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 3460
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    .line 3464
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v5, :cond_2

    shr-int/lit8 v3, v3, 0x2

    .line 3469
    :cond_2
    :goto_0
    new-array v3, v3, [F

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p2

    if-ne v8, v4, :cond_c

    move v2, v6

    .line 3471
    :goto_1
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_16

    .line 3472
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    if-nez p1, :cond_3

    move v8, v6

    .line 3474
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3475
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v6

    .line 3478
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3479
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3482
    :cond_4
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v8, v5, :cond_7

    move v8, v6

    .line 3483
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v8, v9, :cond_b

    move v9, v6

    .line 3484
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    .line 3485
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 3490
    aget v15, v1, v11

    aput v15, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 3491
    aget v15, v1, v15

    aput v15, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3492
    aget v12, v1, v12

    aput v12, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 3493
    aget v12, v1, v12

    aput v12, v3, v13

    add-int/lit8 v12, v11, 0x4

    .line 3494
    aget v12, v1, v12

    aput v12, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 3495
    aget v12, v1, v12

    aput v12, v3, v14

    add-int/lit8 v12, v11, 0x6

    .line 3496
    aget v12, v1, v12

    aput v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 3497
    aget v11, v1, v11

    aput v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3499
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3500
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3501
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v5

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3502
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v9, v6

    .line 3503
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    .line 3504
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 3509
    aget v15, v3, v12

    aput v15, v1, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3510
    aget v12, v3, v12

    aput v12, v1, v15

    add-int/lit8 v12, v11, 0x2

    .line 3511
    aget v15, v3, v13

    aput v15, v1, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 3512
    aget v13, v3, v13

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x4

    .line 3513
    aget v13, v3, v14

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 3514
    aget v13, v3, v14

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x6

    .line 3515
    aget v13, v3, v10

    aput v13, v1, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 3516
    aget v10, v3, v10

    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v8, v5, :cond_9

    move v8, v6

    .line 3520
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_8

    .line 3521
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3524
    aget v12, v1, v10

    aput v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 3525
    aget v12, v1, v12

    aput v12, v3, v11

    add-int/lit8 v11, v10, 0x2

    .line 3526
    aget v11, v1, v11

    aput v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 3527
    aget v10, v1, v10

    aput v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3529
    :cond_8
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3530
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v3, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v6

    .line 3531
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3532
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3535
    aget v12, v3, v11

    aput v12, v1, v10

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3536
    aget v11, v3, v11

    aput v11, v1, v12

    add-int/lit8 v11, v10, 0x2

    .line 3537
    aget v12, v3, v9

    aput v12, v1, v11

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 3538
    aget v9, v3, v9

    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    if-ne v8, v7, :cond_b

    move v8, v6

    .line 3541
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_a

    .line 3542
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3544
    aget v11, v1, v9

    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 3545
    aget v9, v1, v9

    aput v9, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3547
    :cond_a
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v6

    .line 3548
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3549
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3551
    aget v11, v3, v10

    aput v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3552
    aget v10, v3, v10

    aput v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    move v4, v6

    .line 3557
    :goto_b
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v8, :cond_16

    .line 3558
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    if-nez p1, :cond_d

    move v9, v6

    .line 3560
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_d

    .line 3561
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 3564
    :cond_d
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v9, v5, :cond_10

    move v9, v6

    .line 3565
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v9, v10, :cond_14

    move v10, v6

    .line 3566
    :goto_e
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_e

    .line 3567
    iget v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    mul-int/lit8 v13, v10, 0x2

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v14

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v15

    .line 3572
    aget v16, v1, v12

    aput v16, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 3573
    aget v16, v1, v16

    aput v16, v3, v13

    add-int/lit8 v13, v12, 0x2

    .line 3574
    aget v13, v1, v13

    aput v13, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v12, 0x3

    .line 3575
    aget v13, v1, v13

    aput v13, v3, v14

    add-int/lit8 v13, v12, 0x4

    .line 3576
    aget v13, v1, v13

    aput v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v12, 0x5

    .line 3577
    aget v13, v1, v13

    aput v13, v3, v15

    add-int/lit8 v13, v12, 0x6

    .line 3578
    aget v13, v1, v13

    aput v13, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x7

    .line 3579
    aget v12, v1, v12

    aput v12, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 3581
    :cond_e
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v10, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3582
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3583
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v5

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3584
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v10, v6

    .line 3585
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    .line 3586
    iget v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    mul-int/lit8 v13, v10, 0x2

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v14

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v15

    .line 3591
    aget v16, v3, v13

    aput v16, v1, v12

    add-int/lit8 v16, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 3592
    aget v13, v3, v13

    aput v13, v1, v16

    add-int/lit8 v13, v12, 0x2

    .line 3593
    aget v16, v3, v14

    aput v16, v1, v13

    add-int/lit8 v13, v12, 0x3

    add-int/lit8 v14, v14, 0x1

    .line 3594
    aget v14, v3, v14

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x4

    .line 3595
    aget v14, v3, v15

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x5

    add-int/lit8 v15, v15, 0x1

    .line 3596
    aget v14, v3, v15

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x6

    .line 3597
    aget v14, v3, v11

    aput v14, v1, v13

    add-int/lit8 v12, v12, 0x7

    add-int/lit8 v11, v11, 0x1

    .line 3598
    aget v11, v3, v11

    aput v11, v1, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_d

    :cond_10
    if-ne v9, v5, :cond_12

    move v9, v6

    .line 3602
    :goto_10
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_11

    .line 3603
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3606
    aget v13, v1, v11

    aput v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v11, 0x1

    .line 3607
    aget v13, v1, v13

    aput v13, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3608
    aget v12, v1, v12

    aput v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x3

    .line 3609
    aget v11, v1, v11

    aput v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 3611
    :cond_11
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3612
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 3613
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 3614
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3617
    aget v13, v3, v12

    aput v13, v1, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3618
    aget v12, v3, v12

    aput v12, v1, v13

    add-int/lit8 v12, v11, 0x2

    .line 3619
    aget v13, v3, v10

    aput v13, v1, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 3620
    aget v10, v3, v10

    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_12
    if-ne v9, v7, :cond_14

    move v9, v6

    .line 3623
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_13

    .line 3624
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 3626
    aget v12, v1, v10

    aput v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3627
    aget v10, v1, v10

    aput v10, v3, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 3629
    :cond_13
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 3630
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 3631
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 3633
    aget v12, v3, v11

    aput v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3634
    aget v11, v3, v11

    aput v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    if-eqz p1, :cond_15

    move v9, v6

    .line 3638
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 3639
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub1(II[[[FZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 4217
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 4218
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4222
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4227
    :cond_2
    :goto_0
    new-array v2, v2, [F

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v9, p2

    if-ne v9, v3, :cond_c

    move v1, v6

    .line 4229
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v3, :cond_16

    if-nez p1, :cond_3

    move v3, v6

    .line 4231
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4232
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    .line 4235
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4236
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4239
    :cond_4
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v3, v4, :cond_7

    move v3, v6

    .line 4240
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v9, :cond_b

    move v9, v6

    .line 4241
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4246
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget v15, v14, v3

    aput v15, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v15, v3, 0x1

    .line 4247
    aget v15, v14, v15

    aput v15, v2, v11

    add-int/lit8 v11, v3, 0x2

    .line 4248
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v11, v3, 0x3

    .line 4249
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/lit8 v11, v3, 0x4

    .line 4250
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v11, v3, 0x5

    .line 4251
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/lit8 v11, v3, 0x6

    .line 4252
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v3, 0x7

    .line 4253
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 4255
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4256
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4257
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4258
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v9, v6

    .line 4259
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4264
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget v15, v2, v11

    aput v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v11, v8

    .line 4265
    aget v11, v2, v11

    aput v11, v14, v15

    add-int/lit8 v11, v3, 0x2

    .line 4266
    aget v15, v2, v12

    aput v15, v14, v11

    add-int/lit8 v11, v3, 0x3

    add-int/2addr v12, v8

    .line 4267
    aget v12, v2, v12

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x4

    .line 4268
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x5

    add-int/2addr v13, v8

    .line 4269
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x6

    .line 4270
    aget v12, v2, v10

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x7

    add-int/2addr v10, v8

    .line 4271
    aget v10, v2, v10

    aput v10, v14, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v3, v4, :cond_9

    move v3, v6

    .line 4275
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_8

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4278
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget v12, v11, v6

    aput v12, v2, v10

    add-int/2addr v10, v8

    .line 4279
    aget v12, v11, v8

    aput v12, v2, v10

    .line 4280
    aget v10, v11, v7

    aput v10, v2, v9

    add-int/2addr v9, v8

    .line 4281
    aget v10, v11, v5

    aput v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4283
    :cond_8
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4284
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v3, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v6

    .line 4285
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4288
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget v12, v2, v10

    aput v12, v11, v6

    add-int/2addr v10, v8

    .line 4289
    aget v10, v2, v10

    aput v10, v11, v8

    .line 4290
    aget v10, v2, v9

    aput v10, v11, v7

    add-int/2addr v9, v8

    .line 4291
    aget v9, v2, v9

    aput v9, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    if-ne v3, v7, :cond_b

    move v3, v6

    .line 4294
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_a

    mul-int/lit8 v9, v3, 0x2

    .line 4296
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget v11, v10, v6

    aput v11, v2, v9

    add-int/2addr v9, v8

    .line 4297
    aget v10, v10, v8

    aput v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4299
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v6

    .line 4300
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v9, v3, 0x2

    .line 4302
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget v11, v2, v9

    aput v11, v10, v6

    add-int/2addr v9, v8

    .line 4303
    aget v9, v2, v9

    aput v9, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    move v3, v6

    .line 4308
    :goto_b
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v9, :cond_16

    if-nez p1, :cond_d

    move v9, v6

    .line 4310
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_d

    .line 4311
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4314
    :cond_d
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v9, v4, :cond_10

    move v9, v6

    .line 4315
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v9, v10, :cond_14

    move v10, v6

    .line 4316
    :goto_e
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_e

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4321
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget v16, v15, v9

    aput v16, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v16, v9, 0x1

    .line 4322
    aget v16, v15, v16

    aput v16, v2, v12

    add-int/lit8 v12, v9, 0x2

    .line 4323
    aget v12, v15, v12

    aput v12, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v12, v9, 0x3

    .line 4324
    aget v12, v15, v12

    aput v12, v2, v13

    add-int/lit8 v12, v9, 0x4

    .line 4325
    aget v12, v15, v12

    aput v12, v2, v14

    add-int/2addr v14, v8

    add-int/lit8 v12, v9, 0x5

    .line 4326
    aget v12, v15, v12

    aput v12, v2, v14

    add-int/lit8 v12, v9, 0x6

    .line 4327
    aget v12, v15, v12

    aput v12, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v12, v9, 0x7

    .line 4328
    aget v12, v15, v12

    aput v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 4330
    :cond_e
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v10, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4331
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4332
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v4

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4333
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v10, v6

    .line 4334
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4339
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget v16, v2, v12

    aput v16, v15, v9

    add-int/lit8 v16, v9, 0x1

    add-int/2addr v12, v8

    .line 4340
    aget v12, v2, v12

    aput v12, v15, v16

    add-int/lit8 v12, v9, 0x2

    .line 4341
    aget v16, v2, v13

    aput v16, v15, v12

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v13, v8

    .line 4342
    aget v13, v2, v13

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x4

    .line 4343
    aget v13, v2, v14

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x5

    add-int/2addr v14, v8

    .line 4344
    aget v13, v2, v14

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x6

    .line 4345
    aget v13, v2, v11

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x7

    add-int/2addr v11, v8

    .line 4346
    aget v11, v2, v11

    aput v11, v15, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_d

    :cond_10
    if-ne v9, v4, :cond_12

    move v9, v6

    .line 4350
    :goto_10
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_11

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4353
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget v13, v12, v6

    aput v13, v2, v11

    add-int/2addr v11, v8

    .line 4354
    aget v13, v12, v8

    aput v13, v2, v11

    .line 4355
    aget v11, v12, v7

    aput v11, v2, v10

    add-int/2addr v10, v8

    .line 4356
    aget v11, v12, v5

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 4358
    :cond_11
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4359
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4360
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4363
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget v13, v2, v11

    aput v13, v12, v6

    add-int/2addr v11, v8

    .line 4364
    aget v11, v2, v11

    aput v11, v12, v8

    .line 4365
    aget v11, v2, v10

    aput v11, v12, v7

    add-int/2addr v10, v8

    .line 4366
    aget v10, v2, v10

    aput v10, v12, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_12
    if-ne v9, v7, :cond_14

    move v9, v6

    .line 4369
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_13

    mul-int/lit8 v10, v9, 0x2

    .line 4371
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget v12, v11, v6

    aput v12, v2, v10

    add-int/2addr v10, v8

    .line 4372
    aget v11, v11, v8

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 4374
    :cond_13
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4375
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v10, v9, 0x2

    .line 4377
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget v12, v2, v10

    aput v12, v11, v6

    add-int/2addr v10, v8

    .line 4378
    aget v10, v2, v10

    aput v10, v11, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    if-eqz p1, :cond_15

    move v9, v6

    .line 4382
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 4383
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 3649
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 3650
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 3654
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    shr-long/2addr v3, v7

    goto :goto_1

    :cond_1
    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    const/4 v7, 0x2

    goto :goto_0

    .line 3659
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v5, 0x0

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_d

    move-wide v2, v5

    .line 3661
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v2, v11

    if-gez v4, :cond_19

    .line 3662
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v2

    cmp-long v4, p1, v5

    if-nez v4, :cond_3

    move-wide/from16 v23, v5

    .line 3664
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v23, v5

    if-gez v4, :cond_4

    .line 3665
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v5, v5, v23

    add-long/2addr v5, v11

    invoke-virtual {v4, v1, v5, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v23, v23, v21

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    .line 3668
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 3669
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v13, v4

    add-long/2addr v13, v11

    invoke-virtual {v6, v1, v13, v14}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v4, v4, v21

    goto :goto_4

    .line 3672
    :cond_4
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_8

    const-wide/16 v4, 0x0

    .line 3673
    :goto_5
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_7

    const-wide/16 v13, 0x0

    .line 3674
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v13, v9

    if-gez v6, :cond_5

    move-wide/from16 v25, v2

    .line 3675
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v2, v13

    add-long/2addr v2, v11

    add-long/2addr v2, v4

    move-wide/from16 v27, v4

    mul-long v4, v13, v19

    mul-long v29, v9, v19

    move-wide/from16 v31, v11

    add-long v11, v29, v4

    mul-long v29, v9, v19

    move-wide/from16 v33, v13

    add-long v13, v11, v29

    mul-long v9, v9, v19

    add-long/2addr v9, v13

    .line 3680
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    move-wide/from16 v29, v9

    add-long v8, v2, v21

    .line 3681
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v2, v19

    .line 3682
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v21

    add-long v4, v2, v17

    .line 3683
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v9, v2, v4

    .line 3684
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v21

    const-wide/16 v4, 0x5

    add-long v8, v2, v4

    .line 3685
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v2, v15

    .line 3686
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v13, v29

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v13, v21

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    .line 3687
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v33, v21

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v11, v31

    goto :goto_6

    :cond_5
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v31, v11

    .line 3689
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3690
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3691
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3692
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3693
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 3694
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    add-long v11, v11, v27

    mul-long v8, v2, v19

    mul-long v13, v4, v19

    add-long/2addr v13, v8

    mul-long v29, v4, v19

    move-wide/from16 v33, v2

    add-long v2, v13, v29

    mul-long v4, v4, v19

    add-long/2addr v4, v2

    .line 3699
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v4

    add-long v4, v11, v21

    add-long v8, v8, v21

    .line 3700
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v11, v19

    .line 3701
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v11, v17

    add-long v13, v13, v21

    .line 3702
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v9, v11, v4

    .line 3703
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v11, v4

    add-long v2, v2, v21

    .line 3704
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v11, v15

    move-wide/from16 v4, v29

    .line 3705
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v11, v2

    add-long v4, v4, v21

    .line 3706
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v33, v21

    goto :goto_7

    :cond_6
    const-wide/16 v2, 0x8

    add-long v4, v27, v2

    move-wide/from16 v2, v25

    move-wide/from16 v11, v31

    const-wide/16 v9, 0x4

    goto/16 :goto_5

    :cond_7
    move-wide/from16 v25, v2

    goto/16 :goto_c

    :cond_8
    move-wide/from16 v25, v2

    move-wide v2, v9

    move-wide/from16 v31, v11

    cmp-long v6, v4, v2

    if-nez v6, :cond_a

    const-wide/16 v2, 0x0

    .line 3710
    :goto_8
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    .line 3711
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 3714
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    add-long v13, v11, v21

    .line 3715
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v11, v19

    .line 3716
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    add-long v11, v11, v17

    .line 3717
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_8

    .line 3719
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3720
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3721
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 3722
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 3725
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v11, v21

    add-long v8, v8, v21

    .line 3726
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v13, v14, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v11, v19

    .line 3727
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    add-long v4, v4, v21

    .line 3728
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_9

    :cond_a
    cmp-long v2, v4, v19

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    .line 3731
    :goto_a
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 3732
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 3734
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    add-long v11, v11, v21

    .line 3735
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_a

    .line 3737
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3738
    :goto_b
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    .line 3739
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 3741
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v21

    add-long v4, v4, v21

    .line 3742
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_b

    :cond_c
    :goto_c
    add-long v2, v25, v21

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x4

    goto/16 :goto_2

    :cond_d
    const-wide/16 v3, 0x0

    .line 3747
    :goto_d
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_19

    .line 3748
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-nez v10, :cond_e

    const-wide/16 v8, 0x0

    .line 3750
    :goto_e
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v11, v8, v11

    if-gez v11, :cond_e

    .line 3751
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v5

    invoke-virtual {v11, v1, v12, v13, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_e

    .line 3754
    :cond_e
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v11, 0x4

    cmp-long v13, v8, v11

    if-lez v13, :cond_12

    const-wide/16 v8, 0x0

    .line 3755
    :goto_f
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v11, v8, v11

    if-gez v11, :cond_11

    const-wide/16 v11, 0x0

    .line 3756
    :goto_10
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v25, v11, v13

    if-gez v25, :cond_f

    move-wide/from16 v25, v3

    .line 3757
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v3, v11

    add-long/2addr v3, v5

    add-long/2addr v3, v8

    move-wide/from16 v27, v8

    mul-long v8, v11, v19

    mul-long v29, v13, v19

    move-wide/from16 v31, v5

    add-long v5, v29, v8

    mul-long v29, v13, v19

    move/from16 p3, v10

    move-wide/from16 v33, v11

    add-long v10, v5, v29

    mul-long v13, v13, v19

    add-long/2addr v13, v10

    .line 3762
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v7, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    move-wide/from16 v29, v13

    add-long v12, v3, v21

    .line 3763
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v7, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v3, v19

    .line 3764
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v21

    add-long v8, v3, v17

    .line 3765
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 3766
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 3767
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v3, v15

    .line 3768
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v10, v21

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 3769
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v7, v13, v14, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v33, v21

    move/from16 v10, p3

    move-wide/from16 v3, v25

    move-wide/from16 v8, v27

    move-wide/from16 v5, v31

    goto/16 :goto_10

    :cond_f
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move-wide/from16 v27, v8

    move/from16 p3, v10

    .line 3771
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3772
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3773
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3774
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 3775
    :goto_11
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_10

    .line 3776
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v3

    add-long v8, v31, v8

    add-long v8, v8, v27

    mul-long v10, v3, v19

    mul-long v12, v5, v19

    add-long/2addr v12, v10

    mul-long v29, v5, v19

    move-wide/from16 v33, v3

    add-long v2, v12, v29

    mul-long v5, v5, v19

    add-long/2addr v5, v2

    .line 3781
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v5

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 3782
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v19

    .line 3783
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 3784
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 3785
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 3786
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 3787
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 3788
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v33, v21

    move/from16 v2, p5

    move-wide v3, v8

    goto :goto_11

    :cond_10
    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    add-long v8, v27, v10

    move/from16 v10, p3

    move/from16 v2, p5

    move-wide/from16 v3, v25

    move-wide/from16 v5, v31

    goto/16 :goto_f

    :cond_11
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move/from16 p3, v10

    move/from16 v3, p5

    goto/16 :goto_16

    :cond_12
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move/from16 p3, v10

    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    cmp-long v6, v8, v12

    if-nez v6, :cond_14

    const-wide/16 v8, 0x0

    .line 3792
    :goto_12
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_13

    .line 3793
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v8

    add-long v5, v31, v4

    mul-long v10, v8, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 3796
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v12, v5, v21

    .line 3797
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v5, v19

    .line 3798
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    add-long v5, v5, v17

    .line 3799
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    goto :goto_12

    .line 3801
    :cond_13
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3802
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 3803
    :goto_13
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_16

    .line 3804
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v31, v10

    mul-long v12, v4, v19

    mul-long v8, v8, v19

    add-long/2addr v8, v12

    .line 3807
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v10, v21

    add-long v12, v12, v21

    .line 3808
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v10, v19

    .line 3809
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v12, v13, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v17

    add-long v8, v8, v21

    .line 3810
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    const-wide/16 v15, 0x6

    goto :goto_13

    :cond_14
    move/from16 v3, p5

    cmp-long v2, v8, v19

    if-nez v2, :cond_16

    const-wide/16 v4, 0x0

    .line 3813
    :goto_14
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_15

    .line 3814
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v4

    add-long v8, v31, v8

    mul-long v10, v4, v19

    .line 3816
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 3817
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    goto :goto_14

    .line 3819
    :cond_15
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v8, v4

    .line 3820
    :goto_15
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_17

    .line 3821
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    mul-long v12, v8, v19

    .line 3823
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 3824
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    goto :goto_15

    :cond_16
    :goto_16
    const-wide/16 v4, 0x0

    :cond_17
    if-eqz p3, :cond_18

    move-wide v8, v4

    .line 3828
    :goto_17
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_18

    .line 3829
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    invoke-virtual {v2, v1, v10, v11, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_17

    :cond_18
    add-long v8, v25, v21

    move v2, v3

    move-wide v3, v8

    const-wide/16 v15, 0x6

    goto/16 :goto_d

    :cond_19
    return-void
.end method

.method private xdft3da_sub2(II[FZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 3839
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 3840
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    .line 3844
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v5, :cond_2

    shr-int/lit8 v3, v3, 0x2

    .line 3849
    :cond_2
    :goto_0
    new-array v3, v3, [F

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p2

    if-ne v8, v4, :cond_c

    move v2, v6

    .line 3851
    :goto_1
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_16

    .line 3852
    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    if-nez p1, :cond_3

    move v8, v6

    .line 3854
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3855
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v6

    .line 3858
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3859
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3862
    :cond_4
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v8, v5, :cond_7

    move v8, v6

    .line 3863
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v8, v9, :cond_b

    move v9, v6

    .line 3864
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    .line 3865
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 3870
    aget v15, v1, v11

    aput v15, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 3871
    aget v15, v1, v15

    aput v15, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3872
    aget v12, v1, v12

    aput v12, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 3873
    aget v12, v1, v12

    aput v12, v3, v13

    add-int/lit8 v12, v11, 0x4

    .line 3874
    aget v12, v1, v12

    aput v12, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 3875
    aget v12, v1, v12

    aput v12, v3, v14

    add-int/lit8 v12, v11, 0x6

    .line 3876
    aget v12, v1, v12

    aput v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 3877
    aget v11, v1, v11

    aput v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3879
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3880
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3881
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v5

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3882
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v9, v6

    .line 3883
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    .line 3884
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v14

    .line 3889
    aget v15, v3, v12

    aput v15, v1, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3890
    aget v12, v3, v12

    aput v12, v1, v15

    add-int/lit8 v12, v11, 0x2

    .line 3891
    aget v15, v3, v13

    aput v15, v1, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 3892
    aget v13, v3, v13

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x4

    .line 3893
    aget v13, v3, v14

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 3894
    aget v13, v3, v14

    aput v13, v1, v12

    add-int/lit8 v12, v11, 0x6

    .line 3895
    aget v13, v3, v10

    aput v13, v1, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 3896
    aget v10, v3, v10

    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v8, v5, :cond_9

    move v8, v6

    .line 3900
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_8

    .line 3901
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3904
    aget v12, v1, v10

    aput v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 3905
    aget v12, v1, v12

    aput v12, v3, v11

    add-int/lit8 v11, v10, 0x2

    .line 3906
    aget v11, v1, v11

    aput v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 3907
    aget v10, v1, v10

    aput v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3909
    :cond_8
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3910
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v3, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v6

    .line 3911
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3912
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3915
    aget v12, v3, v11

    aput v12, v1, v10

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3916
    aget v11, v3, v11

    aput v11, v1, v12

    add-int/lit8 v11, v10, 0x2

    .line 3917
    aget v12, v3, v9

    aput v12, v1, v11

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 3918
    aget v9, v3, v9

    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    if-ne v8, v7, :cond_b

    move v8, v6

    .line 3921
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_a

    .line 3922
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3924
    aget v11, v1, v9

    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 3925
    aget v9, v1, v9

    aput v9, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3927
    :cond_a
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v6

    .line 3928
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3929
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3931
    aget v11, v3, v10

    aput v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3932
    aget v10, v3, v10

    aput v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    move v4, v6

    .line 3937
    :goto_b
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v4, v8, :cond_16

    .line 3938
    iget v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    if-nez p1, :cond_d

    move v9, v6

    .line 3940
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 3941
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v6

    .line 3944
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 3945
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 3948
    :cond_e
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v9, v5, :cond_11

    move v9, v6

    .line 3949
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v9, v10, :cond_15

    move v10, v6

    .line 3950
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    .line 3951
    iget v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    mul-int/lit8 v13, v10, 0x2

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v14

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v15

    .line 3956
    aget v16, v1, v12

    aput v16, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 3957
    aget v16, v1, v16

    aput v16, v3, v13

    add-int/lit8 v13, v12, 0x2

    .line 3958
    aget v13, v1, v13

    aput v13, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v12, 0x3

    .line 3959
    aget v13, v1, v13

    aput v13, v3, v14

    add-int/lit8 v13, v12, 0x4

    .line 3960
    aget v13, v1, v13

    aput v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v12, 0x5

    .line 3961
    aget v13, v1, v13

    aput v13, v3, v15

    add-int/lit8 v13, v12, 0x6

    .line 3962
    aget v13, v1, v13

    aput v13, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x7

    .line 3963
    aget v12, v1, v12

    aput v12, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 3965
    :cond_f
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v10, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3966
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3967
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v5

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3968
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v10, v6

    .line 3969
    :goto_10
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_10

    .line 3970
    iget v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v12, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    mul-int/lit8 v13, v10, 0x2

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v15, v11, 0x2

    add-int/2addr v15, v14

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v15

    .line 3975
    aget v16, v3, v13

    aput v16, v1, v12

    add-int/lit8 v16, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 3976
    aget v13, v3, v13

    aput v13, v1, v16

    add-int/lit8 v13, v12, 0x2

    .line 3977
    aget v16, v3, v14

    aput v16, v1, v13

    add-int/lit8 v13, v12, 0x3

    add-int/lit8 v14, v14, 0x1

    .line 3978
    aget v14, v3, v14

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x4

    .line 3979
    aget v14, v3, v15

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x5

    add-int/lit8 v15, v15, 0x1

    .line 3980
    aget v14, v3, v15

    aput v14, v1, v13

    add-int/lit8 v13, v12, 0x6

    .line 3981
    aget v14, v3, v11

    aput v14, v1, v13

    add-int/lit8 v12, v12, 0x7

    add-int/lit8 v11, v11, 0x1

    .line 3982
    aget v11, v3, v11

    aput v11, v1, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_e

    :cond_11
    if-ne v9, v5, :cond_13

    move v9, v6

    .line 3986
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_12

    .line 3987
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3990
    aget v13, v1, v11

    aput v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v11, 0x1

    .line 3991
    aget v13, v1, v13

    aput v13, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3992
    aget v12, v1, v12

    aput v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x3

    .line 3993
    aget v11, v1, v11

    aput v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 3995
    :cond_12
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3996
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 3997
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 3998
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 4001
    aget v13, v3, v12

    aput v13, v1, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 4002
    aget v12, v3, v12

    aput v12, v1, v13

    add-int/lit8 v12, v11, 0x2

    .line 4003
    aget v13, v3, v10

    aput v13, v1, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 4004
    aget v10, v3, v10

    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_13
    if-ne v9, v7, :cond_15

    move v9, v6

    .line 4007
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 4008
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 4010
    aget v12, v1, v10

    aput v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 4011
    aget v10, v1, v10

    aput v10, v3, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 4013
    :cond_14
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4014
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 4015
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 4017
    aget v12, v3, v11

    aput v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 4018
    aget v11, v3, v11

    aput v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub2(II[[[FZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 4393
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 4394
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4398
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4403
    :cond_2
    :goto_0
    new-array v2, v2, [F

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v9, p2

    if-ne v9, v3, :cond_c

    move v1, v6

    .line 4405
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v3, :cond_16

    if-nez p1, :cond_3

    move v3, v6

    .line 4407
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4408
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    .line 4411
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4412
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4415
    :cond_4
    iget v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v3, v4, :cond_7

    move v3, v6

    .line 4416
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v9, :cond_b

    move v9, v6

    .line 4417
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4422
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget v15, v14, v3

    aput v15, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v15, v3, 0x1

    .line 4423
    aget v15, v14, v15

    aput v15, v2, v11

    add-int/lit8 v11, v3, 0x2

    .line 4424
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v11, v3, 0x3

    .line 4425
    aget v11, v14, v11

    aput v11, v2, v12

    add-int/lit8 v11, v3, 0x4

    .line 4426
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v11, v3, 0x5

    .line 4427
    aget v11, v14, v11

    aput v11, v2, v13

    add-int/lit8 v11, v3, 0x6

    .line 4428
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v3, 0x7

    .line 4429
    aget v11, v14, v11

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 4431
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4432
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4433
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4434
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v9, v6

    .line 4435
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4440
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget v15, v2, v11

    aput v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v11, v8

    .line 4441
    aget v11, v2, v11

    aput v11, v14, v15

    add-int/lit8 v11, v3, 0x2

    .line 4442
    aget v15, v2, v12

    aput v15, v14, v11

    add-int/lit8 v11, v3, 0x3

    add-int/2addr v12, v8

    .line 4443
    aget v12, v2, v12

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x4

    .line 4444
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x5

    add-int/2addr v13, v8

    .line 4445
    aget v12, v2, v13

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x6

    .line 4446
    aget v12, v2, v10

    aput v12, v14, v11

    add-int/lit8 v11, v3, 0x7

    add-int/2addr v10, v8

    .line 4447
    aget v10, v2, v10

    aput v10, v14, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v3, v4, :cond_9

    move v3, v6

    .line 4451
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_8

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4454
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget v12, v11, v6

    aput v12, v2, v10

    add-int/2addr v10, v8

    .line 4455
    aget v12, v11, v8

    aput v12, v2, v10

    .line 4456
    aget v10, v11, v7

    aput v10, v2, v9

    add-int/2addr v9, v8

    .line 4457
    aget v10, v11, v5

    aput v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4459
    :cond_8
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 4460
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v3, v2, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v6

    .line 4461
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4464
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget v12, v2, v10

    aput v12, v11, v6

    add-int/2addr v10, v8

    .line 4465
    aget v10, v2, v10

    aput v10, v11, v8

    .line 4466
    aget v10, v2, v9

    aput v10, v11, v7

    add-int/2addr v9, v8

    .line 4467
    aget v9, v2, v9

    aput v9, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    if-ne v3, v7, :cond_b

    move v3, v6

    .line 4470
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_a

    mul-int/lit8 v9, v3, 0x2

    .line 4472
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget v11, v10, v6

    aput v11, v2, v9

    add-int/2addr v9, v8

    .line 4473
    aget v10, v10, v8

    aput v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4475
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v6

    .line 4476
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v9, v3, 0x2

    .line 4478
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget v11, v2, v9

    aput v11, v10, v6

    add-int/2addr v9, v8

    .line 4479
    aget v9, v2, v9

    aput v9, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    move v3, v6

    .line 4484
    :goto_b
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v9, :cond_16

    if-nez p1, :cond_d

    move v9, v6

    .line 4486
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 4487
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v6

    .line 4490
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 4491
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4494
    :cond_e
    iget v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v9, v4, :cond_11

    move v9, v6

    .line 4495
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v9, v10, :cond_15

    move v10, v6

    .line 4496
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4501
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget v16, v15, v9

    aput v16, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v16, v9, 0x1

    .line 4502
    aget v16, v15, v16

    aput v16, v2, v12

    add-int/lit8 v12, v9, 0x2

    .line 4503
    aget v12, v15, v12

    aput v12, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v12, v9, 0x3

    .line 4504
    aget v12, v15, v12

    aput v12, v2, v13

    add-int/lit8 v12, v9, 0x4

    .line 4505
    aget v12, v15, v12

    aput v12, v2, v14

    add-int/2addr v14, v8

    add-int/lit8 v12, v9, 0x5

    .line 4506
    aget v12, v15, v12

    aput v12, v2, v14

    add-int/lit8 v12, v9, 0x6

    .line 4507
    aget v12, v15, v12

    aput v12, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v12, v9, 0x7

    .line 4508
    aget v12, v15, v12

    aput v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 4510
    :cond_f
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v10, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4511
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4512
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v11, v4

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4513
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v10, v6

    .line 4514
    :goto_10
    iget v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v10, v11, :cond_10

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4519
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget v16, v2, v12

    aput v16, v15, v9

    add-int/lit8 v16, v9, 0x1

    add-int/2addr v12, v8

    .line 4520
    aget v12, v2, v12

    aput v12, v15, v16

    add-int/lit8 v12, v9, 0x2

    .line 4521
    aget v16, v2, v13

    aput v16, v15, v12

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v13, v8

    .line 4522
    aget v13, v2, v13

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x4

    .line 4523
    aget v13, v2, v14

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x5

    add-int/2addr v14, v8

    .line 4524
    aget v13, v2, v14

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x6

    .line 4525
    aget v13, v2, v11

    aput v13, v15, v12

    add-int/lit8 v12, v9, 0x7

    add-int/2addr v11, v8

    .line 4526
    aget v11, v2, v11

    aput v11, v15, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_e

    :cond_11
    if-ne v9, v4, :cond_13

    move v9, v6

    .line 4530
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_12

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4533
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget v13, v12, v6

    aput v13, v2, v11

    add-int/2addr v11, v8

    .line 4534
    aget v13, v12, v8

    aput v13, v2, v11

    .line 4535
    aget v11, v12, v7

    aput v11, v2, v10

    add-int/2addr v10, v8

    .line 4536
    aget v11, v12, v5

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 4538
    :cond_12
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 4539
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4540
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4543
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget v13, v2, v11

    aput v13, v12, v6

    add-int/2addr v11, v8

    .line 4544
    aget v11, v2, v11

    aput v11, v12, v8

    .line 4545
    aget v11, v2, v10

    aput v11, v12, v7

    add-int/2addr v10, v8

    .line 4546
    aget v10, v2, v10

    aput v10, v12, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_13
    if-ne v9, v7, :cond_15

    move v9, v6

    .line 4549
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v10, v9, 0x2

    .line 4551
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget v12, v11, v6

    aput v12, v2, v10

    add-int/2addr v10, v8

    .line 4552
    aget v11, v11, v8

    aput v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 4554
    :cond_14
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v9, v6

    .line 4555
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    mul-int/lit8 v10, v9, 0x2

    .line 4557
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget v12, v2, v10

    aput v12, v11, v6

    add-int/2addr v10, v8

    .line 4558
    aget v10, v2, v10

    aput v10, v11, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 4028
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 4029
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 4033
    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    shr-long/2addr v3, v7

    goto :goto_1

    :cond_1
    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    const/4 v7, 0x2

    goto :goto_0

    .line 4038
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v5, 0x0

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_d

    move-wide v2, v5

    .line 4040
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v4, v2, v11

    if-gez v4, :cond_19

    .line 4041
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v2

    cmp-long v4, p1, v5

    if-nez v4, :cond_3

    move-wide/from16 v23, v5

    .line 4043
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v23, v5

    if-gez v4, :cond_4

    .line 4044
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v5, v5, v23

    add-long/2addr v5, v11

    invoke-virtual {v4, v1, v5, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v23, v23, v21

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    .line 4047
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 4048
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v13, v4

    add-long/2addr v13, v11

    invoke-virtual {v6, v1, v13, v14}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v4, v4, v21

    goto :goto_4

    .line 4051
    :cond_4
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_8

    const-wide/16 v4, 0x0

    .line 4052
    :goto_5
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_7

    const-wide/16 v13, 0x0

    .line 4053
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v13, v9

    if-gez v6, :cond_5

    move-wide/from16 v25, v2

    .line 4054
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v2, v13

    add-long/2addr v2, v11

    add-long/2addr v2, v4

    move-wide/from16 v27, v4

    mul-long v4, v13, v19

    mul-long v29, v9, v19

    move-wide/from16 v31, v11

    add-long v11, v29, v4

    mul-long v29, v9, v19

    move-wide/from16 v33, v13

    add-long v13, v11, v29

    mul-long v9, v9, v19

    add-long/2addr v9, v13

    .line 4059
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    move-wide/from16 v29, v9

    add-long v8, v2, v21

    .line 4060
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v2, v19

    .line 4061
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v21

    add-long v4, v2, v17

    .line 4062
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v9, v2, v4

    .line 4063
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v13, v21

    const-wide/16 v4, 0x5

    add-long v8, v2, v4

    .line 4064
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v2, v15

    .line 4065
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    move-wide/from16 v13, v29

    invoke-virtual {v7, v13, v14, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v13, v21

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    .line 4066
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v33, v21

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v11, v31

    goto :goto_6

    :cond_5
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v31, v11

    .line 4068
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4069
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4070
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4071
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4072
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 4073
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    add-long v11, v11, v27

    mul-long v8, v2, v19

    mul-long v13, v4, v19

    add-long/2addr v13, v8

    mul-long v29, v4, v19

    move-wide/from16 v33, v2

    add-long v2, v13, v29

    mul-long v4, v4, v19

    add-long/2addr v4, v2

    .line 4078
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v4

    add-long v4, v11, v21

    add-long v8, v8, v21

    .line 4079
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v11, v19

    .line 4080
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v11, v17

    add-long v13, v13, v21

    .line 4081
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v9, v11, v4

    .line 4082
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v11, v4

    add-long v2, v2, v21

    .line 4083
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v11, v15

    move-wide/from16 v4, v29

    .line 4084
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v11, v2

    add-long v4, v4, v21

    .line 4085
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v11, v12, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v33, v21

    goto :goto_7

    :cond_6
    const-wide/16 v2, 0x8

    add-long v4, v27, v2

    move-wide/from16 v2, v25

    move-wide/from16 v11, v31

    const-wide/16 v9, 0x4

    goto/16 :goto_5

    :cond_7
    move-wide/from16 v25, v2

    goto/16 :goto_c

    :cond_8
    move-wide/from16 v25, v2

    move-wide v2, v9

    move-wide/from16 v31, v11

    cmp-long v6, v4, v2

    if-nez v6, :cond_a

    const-wide/16 v2, 0x0

    .line 4089
    :goto_8
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    .line 4090
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 4093
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    add-long v13, v11, v21

    .line 4094
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v11, v19

    .line 4095
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    add-long v11, v11, v17

    .line 4096
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_8

    .line 4098
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 4099
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4100
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 4101
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 4104
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v13, v11, v21

    add-long v8, v8, v21

    .line 4105
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v13, v14, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v11, v19

    .line 4106
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v17

    add-long v4, v4, v21

    .line 4107
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_9

    :cond_a
    cmp-long v2, v4, v19

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    .line 4110
    :goto_a
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 4111
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 4113
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    add-long v11, v11, v21

    .line 4114
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v7, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_a

    .line 4116
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4117
    :goto_b
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    .line 4118
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 4120
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v11, v11, v21

    add-long v4, v4, v21

    .line 4121
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    goto :goto_b

    :cond_c
    :goto_c
    add-long v2, v25, v21

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x4

    goto/16 :goto_2

    :cond_d
    const-wide/16 v3, 0x0

    .line 4126
    :goto_d
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_19

    .line 4127
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-nez v10, :cond_e

    const-wide/16 v8, 0x0

    .line 4129
    :goto_e
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    .line 4130
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v11, v8

    add-long/2addr v11, v5

    invoke-virtual {v10, v1, v11, v12, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_e

    :cond_e
    const-wide/16 v8, 0x0

    .line 4133
    :goto_f
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    .line 4134
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v11, v8

    add-long/2addr v11, v5

    invoke-virtual {v10, v1, v11, v12, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_f

    .line 4137
    :cond_f
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v10, 0x4

    cmp-long v12, v8, v10

    if-lez v12, :cond_13

    const-wide/16 v8, 0x0

    .line 4138
    :goto_10
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_12

    const-wide/16 v10, 0x0

    .line 4139
    :goto_11
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_10

    move-wide/from16 v25, v3

    .line 4140
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v3, v8

    move-wide/from16 v27, v8

    mul-long v8, v10, v19

    mul-long v29, v12, v19

    move-wide/from16 v31, v5

    add-long v5, v29, v8

    mul-long v29, v12, v19

    move-wide/from16 v33, v10

    add-long v10, v5, v29

    mul-long v12, v12, v19

    add-long/2addr v12, v10

    .line 4145
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    invoke-virtual {v7, v8, v9, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    move-wide/from16 v29, v12

    add-long v12, v3, v21

    .line 4146
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v7, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v3, v19

    .line 4147
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v5, v21

    add-long v8, v3, v17

    .line 4148
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 4149
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 4150
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v5, v3, v15

    .line 4151
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v10, v21

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 4152
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v7, v12, v13, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v33, v21

    move-wide/from16 v3, v25

    move-wide/from16 v8, v27

    move-wide/from16 v5, v31

    goto :goto_11

    :cond_10
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move-wide/from16 v27, v8

    .line 4154
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4155
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4156
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4157
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4158
    :goto_12
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_11

    .line 4159
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v3

    add-long v8, v31, v8

    add-long v8, v8, v27

    mul-long v10, v3, v19

    mul-long v12, v5, v19

    add-long/2addr v12, v10

    mul-long v29, v5, v19

    move-wide/from16 v33, v3

    add-long v2, v12, v29

    mul-long v5, v5, v19

    add-long/2addr v5, v2

    .line 4164
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    move-wide/from16 v29, v5

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 4165
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v19

    .line 4166
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 4167
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4168
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 4169
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v13, v14, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 4170
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 4171
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v33, v21

    move/from16 v2, p5

    move-wide v3, v8

    goto :goto_12

    :cond_11
    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    add-long v8, v27, v10

    move/from16 v2, p5

    move-wide/from16 v3, v25

    move-wide/from16 v5, v31

    goto/16 :goto_10

    :cond_12
    move-wide/from16 v25, v3

    move/from16 v3, p5

    goto/16 :goto_17

    :cond_13
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    cmp-long v6, v8, v12

    if-nez v6, :cond_15

    const-wide/16 v8, 0x0

    .line 4175
    :goto_13
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_14

    .line 4176
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v4, v8

    add-long v5, v31, v4

    mul-long v10, v8, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 4179
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v12, v5, v21

    .line 4180
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v10, v11, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v5, v19

    .line 4181
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v21

    add-long v5, v5, v17

    .line 4182
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    goto :goto_13

    .line 4184
    :cond_14
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 4185
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 4186
    :goto_14
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_17

    .line 4187
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v31, v10

    mul-long v12, v4, v19

    mul-long v8, v8, v19

    add-long/2addr v8, v12

    .line 4190
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v10, v21

    add-long v12, v12, v21

    .line 4191
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v10, v19

    .line 4192
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v12, v13, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v17

    add-long v8, v8, v21

    .line 4193
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    const-wide/16 v15, 0x6

    goto :goto_14

    :cond_15
    move/from16 v3, p5

    cmp-long v2, v8, v19

    if-nez v2, :cond_17

    const-wide/16 v4, 0x0

    .line 4196
    :goto_15
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_16

    .line 4197
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v8, v4

    add-long v8, v31, v8

    mul-long v10, v4, v19

    .line 4199
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 4200
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v7, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v21

    goto :goto_15

    .line 4202
    :cond_16
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v8, v4

    .line 4203
    :goto_16
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_18

    .line 4204
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    mul-long v12, v8, v19

    .line 4206
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 4207
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v21

    goto :goto_16

    :cond_17
    :goto_17
    const-wide/16 v4, 0x0

    :cond_18
    add-long v8, v25, v21

    move v2, v3

    move-wide v3, v8

    const-wide/16 v15, 0x6

    goto/16 :goto_d

    :cond_19
    return-void
.end method

.method private xdft3da_subth1(II[FZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5093
    const-class v11, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5094
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 5095
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5099
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v12, v1

    .line 5105
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5108
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$51;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$51;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 5293
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5297
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 5295
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth1(II[[[FZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5935
    const-class v11, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5936
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 5937
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5941
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v12, v1

    .line 5947
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5950
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$55;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$55;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[[[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6121
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6125
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 6123
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 20

    move-object/from16 v13, p0

    .line 5304
    const-class v14, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5305
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 5306
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 5310
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    shr-long/2addr v1, v3

    goto :goto_1

    :cond_1
    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    move-wide v15, v1

    .line 5316
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v0, :cond_3

    int-to-long v6, v11

    .line 5319
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$52;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-wide v3, v15

    move/from16 v5, p3

    move v8, v0

    move-wide/from16 v9, p1

    move/from16 v18, v11

    move-object/from16 v11, p4

    move-object/from16 v19, v12

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_3D$52;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JIJIJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    goto :goto_2

    :cond_3
    move-object/from16 v19, v12

    const/4 v1, 0x0

    .line 5504
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5508
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 5506
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private xdft3da_subth2(II[FZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5515
    const-class v11, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5516
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 5517
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5521
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v12, v1

    .line 5527
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5530
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$53;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$53;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 5714
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5718
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 5716
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth2(II[[[FZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 6132
    const-class v11, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6133
    iget v1, v10, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    .line 6134
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6138
    iget v2, v10, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    move v12, v1

    .line 6144
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 6147
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$56;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/FloatFFT_3D$56;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[[[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6317
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6321
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 6319
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 20

    move-object/from16 v13, p0

    .line 5725
    const-class v14, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v13, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5726
    iget-wide v1, v13, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    .line 5727
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 5731
    iget-wide v3, v13, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    shr-long/2addr v1, v3

    goto :goto_1

    :cond_1
    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    move-wide v15, v1

    .line 5737
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v0, :cond_3

    int-to-long v6, v11

    .line 5740
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$54;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-wide v3, v15

    move/from16 v5, p3

    move v8, v0

    move-wide/from16 v9, p1

    move/from16 v18, v11

    move-object/from16 v11, p4

    move-object/from16 v19, v12

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/FloatFFT_3D$54;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JIJIJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    goto :goto_2

    :cond_3
    move-object/from16 v19, v12

    const/4 v1, 0x0

    .line 5924
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5928
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 5926
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 348
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward([F)V

    goto/16 :goto_14

    .line 351
    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 352
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v7, 0x1

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_2

    .line 353
    iget-wide v12, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v1, v12

    .line 354
    iput-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    .line 355
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    iput-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 356
    iput-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    const/4 v0, -0x1

    if-le v11, v7, :cond_1

    .line 357
    iget-boolean v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 358
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 359
    invoke-direct {v8, v0, v9, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 361
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 362
    invoke-direct {v8, v0, v9, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 364
    :goto_0
    iput-wide v12, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    .line 365
    iget-wide v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v0, v12

    iput-wide v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 366
    iput-wide v12, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    goto/16 :goto_14

    .line 368
    :cond_2
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v5, v3, v1

    iget-wide v12, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v5, v12

    iput-wide v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v5, v12, v1

    .line 369
    iput-wide v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    if-le v11, v7, :cond_9

    .line 370
    iget-boolean v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget-wide v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    int-to-long v14, v11

    cmp-long v0, v5, v14

    if-ltz v0, :cond_9

    cmp-long v0, v3, v14

    if-ltz v0, :cond_9

    cmp-long v0, v12, v14

    if-ltz v0, :cond_9

    .line 371
    new-array v12, v11, [Ljava/util/concurrent/Future;

    .line 372
    div-long v17, v5, v14

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_3

    .line 375
    iget-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_2

    :cond_3
    add-long v1, v3, v17

    :goto_2
    move-wide v5, v1

    .line 376
    new-instance v13, Lorg/jtransforms/fft/FloatFFT_3D$4;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$4;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 390
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 394
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 392
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_5

    .line 399
    iget-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_5

    :cond_5
    add-long v1, v3, v17

    :goto_5
    move-wide v5, v1

    .line 401
    new-instance v19, Lorg/jtransforms/fft/FloatFFT_3D$5;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$5;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 429
    :cond_6
    :try_start_1
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 433
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 431
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :goto_6
    iget-wide v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    div-long v14, v0, v14

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_7

    .line 439
    iget-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    goto :goto_8

    :cond_7
    add-long v1, v3, v14

    :goto_8
    move-wide v5, v1

    .line 441
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$6;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D$6;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 469
    :cond_8
    :try_start_2
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 473
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 471
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_9
    const-wide/16 v5, 0x0

    .line 477
    :goto_9
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v0, v5, v10

    const-wide/16 v10, 0x1

    if-gez v0, :cond_b

    .line 478
    iget-wide v12, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v5

    const-wide/16 v14, 0x0

    .line 479
    :goto_a
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v0, v14, v3

    if-gez v0, :cond_a

    .line 480
    iget-object v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v3, v14

    add-long/2addr v3, v12

    invoke-virtual {v0, v9, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long/2addr v14, v10

    goto :goto_a

    :cond_a
    add-long/2addr v5, v10

    goto :goto_9

    .line 484
    :cond_b
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 485
    :goto_b
    iget-wide v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_f

    .line 486
    iget-wide v5, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v12, 0x0

    .line 487
    :goto_c
    iget-wide v14, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_e

    mul-long v14, v12, v1

    const-wide/16 v19, 0x0

    .line 489
    :goto_d
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v7, v19, v10

    if-gez v7, :cond_c

    add-long v10, v5, v14

    .line 490
    iget-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v1, v1, v19

    add-long/2addr v10, v1

    move-wide/from16 v23, v3

    const-wide/16 v1, 0x2

    mul-long v3, v19, v1

    .line 492
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    add-long/2addr v10, v1

    .line 493
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v19, v19, v1

    move-wide/from16 v3, v23

    const-wide/16 v1, 0x2

    goto :goto_d

    :cond_c
    move-wide/from16 v23, v3

    .line 495
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v1, 0x0

    .line 496
    :goto_e
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_d

    add-long v3, v5, v14

    .line 497
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v10, v1

    add-long/2addr v3, v10

    move-wide/from16 v19, v5

    const-wide/16 v10, 0x2

    mul-long v5, v1, v10

    .line 499
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v9, v3, v4, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    add-long/2addr v5, v10

    .line 500
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v9, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v10

    move-wide/from16 v5, v19

    goto :goto_e

    :cond_d
    move-wide/from16 v19, v5

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    move-wide/from16 v3, v23

    const-wide/16 v1, 0x2

    goto :goto_c

    :cond_e
    move-wide/from16 v23, v3

    add-long v3, v23, v10

    const-wide/16 v1, 0x2

    goto/16 :goto_b

    .line 505
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 506
    :goto_f
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    .line 507
    iget-wide v3, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x0

    .line 508
    :goto_10
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v7, v5, v10

    if-gez v7, :cond_12

    const-wide/16 v10, 0x2

    mul-long v12, v5, v10

    const-wide/16 v14, 0x0

    .line 510
    :goto_11
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v7, v14, v10

    if-gez v7, :cond_10

    .line 511
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v14

    add-long/2addr v10, v3

    add-long/2addr v10, v12

    move-wide/from16 v23, v1

    const-wide/16 v19, 0x2

    mul-long v1, v14, v19

    .line 513
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v19, 0x1

    add-long v1, v1, v19

    add-long v10, v10, v19

    .line 514
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v19

    move-wide/from16 v1, v23

    goto :goto_11

    :cond_10
    move-wide/from16 v23, v1

    .line 516
    iget-object v1, v8, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v1, 0x0

    .line 517
    :goto_12
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v7, v1, v10

    if-gez v7, :cond_11

    .line 518
    iget-wide v10, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v1

    add-long/2addr v10, v3

    add-long/2addr v10, v12

    move-wide/from16 v19, v3

    const-wide/16 v14, 0x2

    mul-long v3, v1, v14

    .line 520
    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v9, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v21, 0x1

    add-long v10, v10, v21

    add-long v3, v3, v21

    .line 521
    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v9, v10, v11, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v1, v1, v21

    move-wide/from16 v3, v19

    goto :goto_12

    :cond_11
    move-wide/from16 v19, v3

    const-wide/16 v14, 0x2

    const-wide/16 v21, 0x1

    add-long v5, v5, v21

    move-wide/from16 v1, v23

    goto :goto_10

    :cond_12
    move-wide/from16 v23, v1

    const-wide/16 v14, 0x2

    const-wide/16 v21, 0x1

    add-long v1, v23, v21

    goto/16 :goto_f

    .line 526
    :cond_13
    :goto_13
    iget-wide v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    iget-wide v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v0, v2

    iput-wide v0, v8, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 527
    iput-wide v2, v8, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    :goto_14
    return-void
.end method

.method public complexForward([F)V
    .locals 11

    .line 147
    const-class v0, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 148
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 149
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 150
    iput v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 151
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v5, v2

    iput v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 152
    iput v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    const/4 v2, -0x1

    if-le v1, v4, :cond_0

    .line 153
    iget-boolean v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    .line 155
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    .line 158
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 160
    :goto_0
    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 161
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 162
    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_14

    .line 164
    :cond_1
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v5, v6, 0x2

    .line 165
    iput v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v1, v4, :cond_8

    .line 166
    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v5, v1, :cond_8

    if-lt v2, v1, :cond_8

    if-lt v6, v1, :cond_8

    .line 167
    new-array v2, v1, [Ljava/util/concurrent/Future;

    .line 168
    div-int/2addr v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v6, v4, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v4, v7, :cond_2

    .line 171
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v5

    .line 172
    :goto_2
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_3D$1;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D$1;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 186
    :try_start_0
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v4, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v6

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v4, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v6, v3

    :goto_4
    if-ge v6, v1, :cond_5

    mul-int v7, v6, v5

    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_4

    .line 195
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v5

    .line 197
    :goto_5
    new-instance v9, Lorg/jtransforms/fft/FloatFFT_3D$2;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/fft/FloatFFT_3D$2;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 225
    :cond_5
    :try_start_1
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v5

    .line 229
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v5

    .line 227
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    :goto_6
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/2addr v5, v1

    :goto_7
    if-ge v3, v1, :cond_7

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_6

    .line 235
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v5

    .line 237
    :goto_8
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_3D$3;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D$3;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 265
    :cond_7
    :try_start_2
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception p1

    .line 269
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception p1

    .line 267
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v3

    .line 273
    :goto_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 274
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v3

    .line 275
    :goto_a
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v5, :cond_9

    .line 276
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-virtual {v5, p1, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 280
    :cond_a
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    move v1, v3

    .line 281
    :goto_b
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 282
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v5, v3

    .line 283
    :goto_c
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_d

    mul-int/lit8 v6, v5, 0x2

    move v7, v3

    .line 285
    :goto_d
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v7, v8, :cond_b

    add-int v8, v2, v6

    .line 286
    iget v9, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    mul-int/lit8 v9, v7, 0x2

    .line 288
    aget v10, p1, v8

    aput v10, v0, v9

    add-int/2addr v9, v4

    add-int/2addr v8, v4

    .line 289
    aget v8, p1, v8

    aput v8, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 291
    :cond_b
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v7, v3

    .line 292
    :goto_e
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v7, v8, :cond_c

    add-int v8, v2, v6

    .line 293
    iget v9, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    mul-int/lit8 v9, v7, 0x2

    .line 295
    aget v10, v0, v9

    aput v10, p1, v8

    add-int/2addr v8, v4

    add-int/2addr v9, v4

    .line 296
    aget v9, v0, v9

    aput v9, p1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    mul-int/lit8 v2, v2, 0x2

    .line 301
    new-array v0, v2, [F

    move v1, v3

    .line 302
    :goto_f
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 303
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v5, v3

    .line 304
    :goto_10
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v5, v6, :cond_11

    mul-int/lit8 v6, v5, 0x2

    move v7, v3

    .line 306
    :goto_11
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v7, v8, :cond_f

    .line 307
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 309
    aget v10, p1, v8

    aput v10, v0, v9

    add-int/2addr v9, v4

    add-int/2addr v8, v4

    .line 310
    aget v8, p1, v8

    aput v8, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 312
    :cond_f
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v7, v3

    .line 313
    :goto_12
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v7, v8, :cond_10

    .line 314
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 316
    aget v10, v0, v9

    aput v10, p1, v8

    add-int/2addr v8, v4

    add-int/2addr v9, v4

    .line 317
    aget v9, v0, v9

    aput v9, p1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 322
    :cond_12
    :goto_13
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 323
    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :goto_14
    return-void
.end method

.method public complexForward([[[F)V
    .locals 10

    .line 548
    const-class v0, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 549
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 550
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 551
    iput v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 553
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v5, v2

    iput v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 554
    iput v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    const/4 v2, -0x1

    if-le v1, v4, :cond_0

    .line 556
    iget-boolean v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 557
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    .line 558
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    .line 561
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 563
    :goto_0
    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 564
    iget p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 565
    iput v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_13

    :cond_1
    if-le v1, v4, :cond_8

    .line 566
    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v2, v1, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v5, v1, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v5, v1, :cond_8

    .line 567
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 568
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_2

    .line 571
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v2

    .line 572
    :goto_2
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_3D$7;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D$7;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 585
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 589
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v6

    .line 587
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v6, v3

    :goto_4
    if-ge v6, v1, :cond_5

    mul-int v7, v6, v2

    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_4

    .line 594
    iget v8, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v2

    .line 596
    :goto_5
    new-instance v9, Lorg/jtransforms/fft/FloatFFT_3D$8;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/fft/FloatFFT_3D$8;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 621
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    .line 625
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v2

    .line 623
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    :goto_6
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/2addr v2, v1

    :goto_7
    if-ge v3, v1, :cond_7

    mul-int v6, v3, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_6

    .line 631
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v2

    .line 633
    :goto_8
    new-instance v8, Lorg/jtransforms/fft/FloatFFT_3D$9;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D$9;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 658
    :cond_7
    :try_start_2
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception p1

    .line 662
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception p1

    .line 660
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v3

    .line 666
    :goto_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v3

    .line 667
    :goto_a
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 668
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 672
    :cond_a
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    move v1, v3

    .line 673
    :goto_b
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v3

    .line 674
    :goto_c
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v5, :cond_d

    mul-int/lit8 v5, v2, 0x2

    move v6, v3

    .line 676
    :goto_d
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v7, :cond_b

    mul-int/lit8 v7, v6, 0x2

    .line 678
    aget-object v8, p1, v1

    aget-object v8, v8, v6

    aget v9, v8, v5

    aput v9, v0, v7

    add-int/2addr v7, v4

    add-int/lit8 v9, v5, 0x1

    .line 679
    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 681
    :cond_b
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v6, v3

    .line 682
    :goto_e
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v7, :cond_c

    mul-int/lit8 v7, v6, 0x2

    .line 684
    aget-object v8, p1, v1

    aget-object v8, v8, v6

    aget v9, v0, v7

    aput v9, v8, v5

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v7, v4

    .line 685
    aget v7, v0, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    mul-int/lit8 v2, v2, 0x2

    .line 690
    new-array v0, v2, [F

    move v1, v3

    .line 691
    :goto_f
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v3

    .line 692
    :goto_10
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v5, :cond_11

    mul-int/lit8 v5, v2, 0x2

    move v6, v3

    .line 694
    :goto_11
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v7, :cond_f

    mul-int/lit8 v7, v6, 0x2

    .line 696
    aget-object v8, p1, v6

    aget-object v8, v8, v1

    aget v9, v8, v5

    aput v9, v0, v7

    add-int/2addr v7, v4

    add-int/lit8 v9, v5, 0x1

    .line 697
    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 699
    :cond_f
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v6, v3

    .line 700
    :goto_12
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v7, :cond_10

    mul-int/lit8 v7, v6, 0x2

    .line 702
    aget-object v8, p1, v6

    aget-object v8, v8, v1

    aget v9, v0, v7

    aput v9, v8, v5

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v7, v4

    .line 703
    aget v7, v0, v7

    aput v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_12
    :goto_13
    return-void
.end method

.method public complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 936
    const-class v12, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    invoke-virtual/range {p1 .. p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getData()[F

    move-result-object v0

    invoke-virtual {v9, v0, v11}, Lorg/jtransforms/fft/FloatFFT_3D;->complexInverse([FZ)V

    goto/16 :goto_14

    .line 939
    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 940
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v7, 0x1

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_2

    .line 941
    iget-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v1, v14

    .line 942
    iput-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    .line 943
    iget-wide v3, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    iput-wide v3, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 944
    iput-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    if-le v13, v7, :cond_1

    .line 945
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 946
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 947
    invoke-direct {v9, v7, v10, v11}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 949
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 950
    invoke-direct {v9, v7, v10, v11}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 952
    :goto_0
    iput-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    .line 953
    iget-wide v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v0, v14

    iput-wide v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 954
    iput-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    goto/16 :goto_14

    .line 956
    :cond_2
    iget-wide v3, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long v5, v3, v1

    iget-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v5, v14

    iput-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long v5, v14, v1

    .line 957
    iput-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    const/4 v8, 0x0

    if-le v13, v7, :cond_9

    .line 958
    iget-boolean v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    int-to-long v10, v13

    cmp-long v0, v5, v10

    if-ltz v0, :cond_9

    cmp-long v0, v3, v10

    if-ltz v0, :cond_9

    cmp-long v0, v14, v10

    if-ltz v0, :cond_9

    .line 959
    new-array v14, v13, [Ljava/util/concurrent/Future;

    .line 960
    div-long v15, v5, v10

    move v0, v8

    :goto_1
    if-ge v0, v13, :cond_4

    int-to-long v1, v0

    mul-long v3, v1, v15

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_3

    .line 963
    iget-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_2

    :cond_3
    add-long v1, v3, v15

    :goto_2
    move-wide v5, v1

    .line 965
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$13;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$13;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 979
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 983
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 981
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v13, :cond_6

    int-to-long v1, v0

    mul-long v3, v1, v15

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_5

    .line 988
    iget-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    goto :goto_5

    :cond_5
    add-long v1, v3, v15

    :goto_5
    move-wide v5, v1

    .line 990
    new-instance v17, Lorg/jtransforms/fft/FloatFFT_3D$14;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-wide/from16 v18, v15

    move-object v15, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$14;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v15

    move-wide/from16 v15, v18

    goto :goto_4

    :cond_6
    move-object v15, v8

    .line 1018
    :try_start_1
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1022
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1020
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1025
    :goto_6
    iget-wide v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    div-long v10, v0, v10

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v13, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v10

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_7

    .line 1028
    iget-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    goto :goto_8

    :cond_7
    add-long v1, v3, v10

    :goto_8
    move-wide v5, v1

    .line 1030
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$15;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D$15;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1058
    :cond_8
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1062
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1060
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_9
    const-wide/16 v5, 0x0

    .line 1066
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v0, v5, v7

    const-wide/16 v7, 0x1

    if-gez v0, :cond_b

    .line 1067
    iget-wide v10, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v5

    const-wide/16 v12, 0x0

    .line 1068
    :goto_a
    iget-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_a

    .line 1069
    iget-object v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget-wide v14, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v10

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v3, v14, v15, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long/2addr v12, v7

    goto :goto_a

    :cond_a
    move-object/from16 v3, p1

    move/from16 v4, p2

    add-long/2addr v5, v7

    goto :goto_9

    :cond_b
    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 1072
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    mul-long/2addr v5, v1

    const/4 v10, 0x0

    invoke-direct {v0, v5, v6, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v5, 0x0

    .line 1073
    :goto_b
    iget-wide v11, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v11, v5, v11

    if-gez v11, :cond_f

    .line 1074
    iget-wide v11, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v5

    const-wide/16 v13, 0x0

    .line 1075
    :goto_c
    iget-wide v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v7, v13, v7

    if-gez v7, :cond_e

    mul-long v7, v13, v1

    const-wide/16 v19, 0x0

    .line 1077
    :goto_d
    iget-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v1, v19, v1

    if-gez v1, :cond_c

    add-long v1, v11, v7

    move-wide/from16 v21, v11

    .line 1078
    iget-wide v10, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long v10, v10, v19

    add-long/2addr v1, v10

    move-wide/from16 v23, v5

    const-wide/16 v10, 0x2

    mul-long v5, v19, v10

    .line 1080
    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v0, v5, v6, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    add-long/2addr v1, v10

    .line 1081
    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v1

    invoke-virtual {v0, v5, v6, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v19, v19, v10

    move-wide/from16 v11, v21

    move-wide/from16 v5, v23

    const/4 v10, 0x0

    goto :goto_d

    :cond_c
    move-wide/from16 v23, v5

    move-wide/from16 v21, v11

    .line 1083
    iget-object v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 1084
    :goto_e
    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_d

    add-long v11, v21, v7

    .line 1085
    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v5, v1

    add-long/2addr v11, v5

    move-wide/from16 v19, v7

    const-wide/16 v5, 0x2

    mul-long v7, v1, v5

    .line 1087
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v3, v11, v12, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    add-long/2addr v7, v5

    .line 1088
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v3, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v5

    move-wide/from16 v7, v19

    goto :goto_e

    :cond_d
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move-wide/from16 v11, v21

    move-wide/from16 v5, v23

    const-wide/16 v1, 0x2

    const/4 v10, 0x0

    goto :goto_c

    :cond_e
    move-wide/from16 v23, v5

    const-wide/16 v5, 0x1

    add-long v1, v23, v5

    move-wide v7, v5

    const/4 v10, 0x0

    move-wide v5, v1

    const-wide/16 v1, 0x2

    goto/16 :goto_b

    .line 1092
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    const-wide/16 v5, 0x2

    mul-long/2addr v1, v5

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 1093
    :goto_f
    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_13

    .line 1094
    iget-wide v5, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x0

    .line 1095
    :goto_10
    iget-wide v10, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    cmp-long v10, v7, v10

    if-gez v10, :cond_12

    const-wide/16 v10, 0x2

    mul-long v12, v7, v10

    const-wide/16 v14, 0x0

    .line 1097
    :goto_11
    iget-wide v10, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v10, v14, v10

    if-gez v10, :cond_10

    .line 1098
    iget-wide v10, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v14

    add-long/2addr v10, v5

    add-long/2addr v10, v12

    move-wide/from16 v21, v1

    const-wide/16 v19, 0x2

    mul-long v1, v14, v19

    move-wide/from16 v19, v7

    .line 1100
    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    add-long/2addr v10, v7

    .line 1101
    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v0, v1, v2, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v14, v7

    move-wide/from16 v7, v19

    move-wide/from16 v1, v21

    goto :goto_11

    :cond_10
    move-wide/from16 v21, v1

    move-wide/from16 v19, v7

    .line 1103
    iget-object v1, v9, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 1104
    :goto_12
    iget-wide v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->slicesl:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_11

    .line 1105
    iget-wide v7, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    mul-long/2addr v7, v1

    add-long/2addr v7, v5

    add-long/2addr v7, v12

    const-wide/16 v10, 0x2

    mul-long v14, v1, v10

    .line 1107
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v3, v7, v8, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    add-long/2addr v14, v10

    .line 1108
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    invoke-virtual {v3, v7, v8, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v10

    goto :goto_12

    :cond_11
    const-wide/16 v10, 0x1

    add-long v7, v19, v10

    move-wide/from16 v1, v21

    goto :goto_10

    :cond_12
    move-wide/from16 v21, v1

    const-wide/16 v10, 0x1

    add-long v1, v21, v10

    goto :goto_f

    .line 1113
    :cond_13
    :goto_13
    iget-wide v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowsl:J

    iget-wide v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->columnsl:J

    mul-long/2addr v0, v2

    iput-wide v0, v9, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStridel:J

    .line 1114
    iput-wide v2, v9, Lorg/jtransforms/fft/FloatFFT_3D;->rowStridel:J

    :goto_14
    return-void
.end method

.method public complexInverse([FZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 733
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 735
    iget-boolean v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 736
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 737
    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 738
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v3, v2

    iput v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 739
    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v11, v1, :cond_0

    .line 740
    iget-boolean v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_0

    .line 741
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    .line 742
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    goto :goto_0

    .line 744
    :cond_0
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    .line 745
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 747
    :goto_0
    iput v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 748
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v1, v0

    iput v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 749
    iput v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_14

    .line 751
    :cond_1
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v2, v0, 0x2

    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v2, v3

    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v2, v3, 0x2

    .line 752
    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v11, v1, :cond_8

    .line 753
    iget-boolean v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v2, v11, :cond_8

    if-lt v0, v11, :cond_8

    if-lt v3, v11, :cond_8

    .line 754
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 755
    div-int v14, v2, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 758
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 760
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$10;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 774
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 778
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 776
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v0, v12

    :goto_4
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 783
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 785
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$11;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 813
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 817
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

    .line 815
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 820
    :goto_6
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 823
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 825
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_3D$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$12;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 853
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 857
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 855
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 861
    :goto_9
    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_a

    .line 862
    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v2, v0

    move v3, v12

    .line 863
    :goto_a
    iget v4, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v4, :cond_9

    .line 864
    iget-object v4, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    iget v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-virtual {v4, v8, v5, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 867
    :cond_a
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    move v2, v12

    .line 868
    :goto_b
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_e

    .line 869
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    move v4, v12

    .line 870
    :goto_c
    iget v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v4, v5, :cond_d

    mul-int/lit8 v5, v4, 0x2

    move v6, v12

    .line 872
    :goto_d
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v10, :cond_b

    add-int v10, v3, v5

    .line 873
    iget v11, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x2

    .line 875
    aget v13, v8, v10

    aput v13, v0, v11

    add-int/2addr v11, v1

    add-int/2addr v10, v1

    .line 876
    aget v10, v8, v10

    aput v10, v0, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 878
    :cond_b
    iget-object v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v6, v12

    .line 879
    :goto_e
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v10, :cond_c

    add-int v10, v3, v5

    .line 880
    iget v11, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x2

    .line 882
    aget v13, v0, v11

    aput v13, v8, v10

    add-int/2addr v10, v1

    add-int/2addr v11, v1

    .line 883
    aget v11, v0, v11

    aput v11, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    mul-int/lit8 v3, v3, 0x2

    .line 887
    new-array v0, v3, [F

    move v2, v12

    .line 888
    :goto_f
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_12

    .line 889
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v3, v2

    move v4, v12

    .line 890
    :goto_10
    iget v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v4, v5, :cond_11

    mul-int/lit8 v5, v4, 0x2

    move v6, v12

    .line 892
    :goto_11
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v10, :cond_f

    .line 893
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v6, 0x2

    .line 895
    aget v13, v8, v10

    aput v13, v0, v11

    add-int/2addr v11, v1

    add-int/2addr v10, v1

    .line 896
    aget v10, v8, v10

    aput v10, v0, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 898
    :cond_f
    iget-object v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v6, v12

    .line 899
    :goto_12
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v6, v10, :cond_10

    .line 900
    iget v10, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v6, 0x2

    .line 902
    aget v13, v0, v11

    aput v13, v8, v10

    add-int/2addr v10, v1

    add-int/2addr v11, v1

    .line 903
    aget v11, v0, v11

    aput v11, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 908
    :cond_12
    :goto_13
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 909
    iput v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :goto_14
    return-void
.end method

.method public complexInverse([[[FZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 1136
    const-class v10, Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1137
    iget-boolean v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1138
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 1139
    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 1140
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v3, v2

    iput v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 1141
    iput v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v11, v1, :cond_0

    .line 1142
    iget-boolean v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_0

    .line 1143
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    .line 1144
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    goto :goto_0

    .line 1146
    :cond_0
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    .line 1147
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 1149
    :goto_0
    iput v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    .line 1150
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/2addr v1, v0

    iput v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    .line 1151
    iput v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_13

    :cond_1
    if-le v11, v1, :cond_8

    .line 1152
    iget-boolean v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v2, v11, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v2, v11, :cond_8

    .line 1153
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 1154
    div-int v14, v0, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 1157
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 1159
    new-instance v15, Lorg/jtransforms/fft/FloatFFT_3D$16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$16;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 1172
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1176
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1174
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v0, v12

    :goto_4
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 1181
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 1183
    new-instance v16, Lorg/jtransforms/fft/FloatFFT_3D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$17;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1208
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1212
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

    .line 1210
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    :goto_6
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 1218
    iget v1, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 1220
    new-instance v14, Lorg/jtransforms/fft/FloatFFT_3D$18;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/FloatFFT_3D$18;-><init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1245
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1249
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1247
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 1253
    :goto_9
    iget v2, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_a

    move v2, v12

    .line 1254
    :goto_a
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 1255
    iget-object v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftColumns:Lorg/jtransforms/fft/FloatFFT_1D;

    aget-object v4, v8, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1258
    :cond_a
    iget v0, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    move v2, v12

    .line 1259
    :goto_b
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_e

    move v3, v12

    .line 1260
    :goto_c
    iget v4, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v4, :cond_d

    mul-int/lit8 v4, v3, 0x2

    move v5, v12

    .line 1262
    :goto_d
    iget v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v6, :cond_b

    mul-int/lit8 v6, v5, 0x2

    .line 1264
    aget-object v10, v8, v2

    aget-object v10, v10, v5

    aget v11, v10, v4

    aput v11, v0, v6

    add-int/2addr v6, v1

    add-int/lit8 v11, v4, 0x1

    .line 1265
    aget v10, v10, v11

    aput v10, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1267
    :cond_b
    iget-object v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftRows:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v5, v12

    .line 1268
    :goto_e
    iget v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v6, :cond_c

    mul-int/lit8 v6, v5, 0x2

    .line 1270
    aget-object v10, v8, v2

    aget-object v10, v10, v5

    aget v11, v0, v6

    aput v11, v10, v4

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v6, v1

    .line 1271
    aget v6, v0, v6

    aput v6, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    mul-int/lit8 v3, v3, 0x2

    .line 1275
    new-array v0, v3, [F

    move v2, v12

    .line 1276
    :goto_f
    iget v3, v7, Lorg/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_12

    move v3, v12

    .line 1277
    :goto_10
    iget v4, v7, Lorg/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v4, :cond_11

    mul-int/lit8 v4, v3, 0x2

    move v5, v12

    .line 1279
    :goto_11
    iget v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_f

    mul-int/lit8 v6, v5, 0x2

    .line 1281
    aget-object v10, v8, v5

    aget-object v10, v10, v2

    aget v11, v10, v4

    aput v11, v0, v6

    add-int/2addr v6, v1

    add-int/lit8 v11, v4, 0x1

    .line 1282
    aget v10, v10, v11

    aput v10, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1284
    :cond_f
    iget-object v5, v7, Lorg/jtransforms/fft/FloatFFT_3D;->fftSlices:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v5, v12

    .line 1285
    :goto_12
    iget v6, v7, Lorg/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v5, v6, :cond_10

    mul-int/lit8 v6, v5, 0x2

    .line 1287
    aget-object v10, v8, v5

    aget-object v10, v10, v2

    aget v11, v0, v6

    aput v11, v10, v4

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v6, v1

    .line 1288
    aget v6, v0, v6

    aput v6, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_12
    :goto_13
    return-void
.end method

.method public realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 8

    .line 1417
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1420
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 1421
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1422
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1423
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1424
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1426
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1427
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1428
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_0
    return-void

    .line 1418
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realForward([F)V
    .locals 3

    .line 1348
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1351
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1352
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1353
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V

    .line 1354
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    .line 1355
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_0

    .line 1357
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[FZ)V

    .line 1358
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 1359
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    :goto_0
    return-void

    .line 1349
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([[[F)V
    .locals 3

    .line 1476
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1479
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1480
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1481
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[[[FZ)V

    .line 1482
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    .line 1483
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_0

    .line 1485
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[[[FZ)V

    .line 1486
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 1487
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    :goto_0
    return-void

    .line 1477
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 8

    .line 1537
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1538
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 1539
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1540
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1541
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1542
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1544
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1545
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1546
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1548
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    .line 1550
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    :goto_1
    return-void
.end method

.method public realForwardFull([F)V
    .locals 3

    .line 1506
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1507
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1508
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1509
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    .line 1510
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    .line 1511
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_0

    .line 1513
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    .line 1514
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 1515
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    .line 1517
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric([F)V

    goto :goto_1

    .line 1519
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull([F)V

    :goto_1
    return-void
.end method

.method public realForwardFull([[[F)V
    .locals 3

    .line 1568
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1569
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1570
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1571
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    .line 1572
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    .line 1573
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_0

    .line 1575
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    .line 1576
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 1577
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    .line 1579
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V

    goto :goto_1

    .line 1581
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull([[[F)V

    :goto_1
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 13

    .line 1707
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1710
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1711
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1712
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1713
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    .line 1714
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    goto :goto_0

    .line 1716
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1717
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    move-object v11, p1

    move v12, p2

    .line 1718
    invoke-direct/range {v7 .. v12}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    :goto_0
    return-void

    .line 1708
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([FZ)V
    .locals 3

    .line 1638
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1641
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1642
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1643
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    .line 1644
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    .line 1645
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V

    goto :goto_0

    .line 1647
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    .line 1648
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 1649
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[FZ)V

    :goto_0
    return-void

    .line 1639
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([[[FZ)V
    .locals 3

    .line 1766
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1769
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1770
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1771
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    .line 1772
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    .line 1773
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[[[FZ)V

    goto :goto_0

    .line 1775
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    .line 1776
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 1777
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[[[FZ)V

    :goto_0
    return-void

    .line 1767
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 12

    .line 1825
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1826
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1827
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    .line 1828
    invoke-direct/range {v2 .. v7}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1829
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1830
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    move-object v6, p0

    move-object v10, p1

    move v11, p2

    .line 1832
    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1833
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    .line 1834
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 1836
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    goto :goto_1

    .line 1838
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    :goto_1
    return-void
.end method

.method public realInverseFull([FZ)V
    .locals 2

    .line 1795
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1796
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1797
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1798
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    .line 1799
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    .line 1800
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_0

    .line 1802
    :cond_0
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    .line 1803
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    .line 1804
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    .line 1806
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric([F)V

    goto :goto_1

    .line 1808
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([FZ)V

    :goto_1
    return-void
.end method

.method public realInverseFull([[[FZ)V
    .locals 2

    .line 1855
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1856
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1857
    iget-boolean v0, p0, Lorg/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1858
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    .line 1859
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    .line 1860
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_0

    .line 1862
    :cond_0
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    .line 1863
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    .line 1864
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    .line 1866
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V

    goto :goto_1

    .line 1868
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([[[FZ)V

    :goto_1
    return-void
.end method
