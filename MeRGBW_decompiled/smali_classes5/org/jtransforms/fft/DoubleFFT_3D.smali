.class public Lorg/jtransforms/fft/DoubleFFT_3D;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

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
    iput-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    .line 78
    iput-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    cmp-long v3, p3, v1

    if-lez v3, :cond_6

    cmp-long v1, p5, v1

    if-lez v1, :cond_6

    long-to-int v1, p1

    .line 93
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    long-to-int v1, p3

    .line 94
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    long-to-int v1, p5

    .line 95
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 96
    iput-wide p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 97
    iput-wide p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    .line 98
    iput-wide p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long v2, p3, p5

    long-to-int v4, v2

    .line 99
    iput v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 100
    iput v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    .line 101
    iput-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 102
    iput-wide p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v1, p1, p3

    mul-long/2addr v1, p5

    .line 104
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 105
    iput-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

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
    iput-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

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
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    .line 113
    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    goto :goto_0

    .line 115
    :cond_3
    new-instance v0, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p3, p4}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    :goto_0
    cmp-long p1, p1, p5

    if-nez p1, :cond_4

    .line 118
    iget-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    goto :goto_1

    :cond_4
    cmp-long p1, p3, p5

    if-nez p1, :cond_5

    .line 120
    iget-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    goto :goto_1

    .line 122
    :cond_5
    new-instance p1, Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {p1, p5, p6}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    :goto_1
    return-void

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    return p0
.end method

.method static synthetic access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    return p0
.end method

.method static synthetic access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-object p0
.end method

.method static synthetic access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    return-wide v0
.end method

.method private cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 4742
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 4743
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 4747
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 4752
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v21, 0x2

    const-wide/16 v23, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_c

    .line 4754
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_6

    const-wide/16 v2, 0x0

    .line 4755
    :goto_2
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_16

    .line 4756
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v25, 0x0

    .line 4757
    :goto_3
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v6, v25, v11

    if-gez v6, :cond_5

    const-wide/16 v11, 0x0

    .line 4758
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_3

    .line 4759
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

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

    move-wide/from16 v29, v13

    .line 4764
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v23

    add-long v13, v9, v23

    .line 4765
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v9, v21

    .line 4766
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v23

    add-long v2, v9, v17

    .line 4767
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x4

    add-long v4, v9, v2

    .line 4768
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v23

    const-wide/16 v2, 0x5

    add-long v13, v9, v2

    .line 4769
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v9, v15

    .line 4770
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    move-wide/from16 v11, v29

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v11, v23

    const-wide/16 v2, 0x7

    add-long/2addr v9, v2

    .line 4771
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v33, v23

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    const-wide/16 v9, 0x4

    goto :goto_4

    :cond_3
    move-wide/from16 v27, v2

    move-wide/from16 v31, v4

    .line 4773
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4774
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long v3, v3, v21

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4775
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4776
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4777
    :goto_5
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 4778
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

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

    move-wide/from16 v29, v4

    .line 4783
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v23

    add-long v10, v10, v23

    .line 4784
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    .line 4785
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v23

    .line 4786
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4787
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v23

    .line 4788
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v4, v29

    .line 4789
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v4, v4, v23

    .line 4790
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4795
    :goto_6
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 4796
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 4797
    :goto_7
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    .line 4798
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v4

    mul-long v14, v8, v21

    mul-long v10, v10, v21

    add-long/2addr v10, v14

    move-wide/from16 v19, v2

    .line 4801
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v23

    add-long v2, v12, v23

    .line 4802
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v12, v21

    .line 4803
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v23

    add-long v12, v12, v17

    .line 4804
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v23

    move-wide/from16 v2, v19

    goto :goto_7

    :cond_7
    move-wide/from16 v19, v2

    .line 4806
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4807
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long v8, v8, v21

    invoke-virtual {v2, v7, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4808
    :goto_8
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v2, v8

    if-gez v6, :cond_8

    .line 4809
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v2

    add-long/2addr v10, v4

    mul-long v12, v2, v21

    mul-long v8, v8, v21

    add-long/2addr v8, v12

    .line 4812
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v10, v23

    add-long v12, v12, v23

    .line 4813
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v14, v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v21

    .line 4814
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v17

    add-long v8, v8, v23

    .line 4815
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v23

    goto :goto_8

    :cond_8
    add-long v2, v19, v23

    goto/16 :goto_6

    :cond_9
    cmp-long v2, v2, v21

    if-nez v2, :cond_16

    const-wide/16 v2, 0x0

    .line 4819
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 4820
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 4821
    :goto_a
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_a

    .line 4822
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    mul-long v12, v8, v21

    .line 4824
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v7, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v23

    add-long v10, v10, v23

    .line 4825
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v23

    goto :goto_a

    .line 4827
    :cond_a
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v8, 0x0

    .line 4828
    :goto_b
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_b

    .line 4829
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    mul-long v12, v8, v21

    .line 4831
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v23

    add-long v12, v12, v23

    .line 4832
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v23

    goto :goto_b

    :cond_b
    add-long v2, v2, v23

    goto :goto_9

    .line 4836
    :cond_c
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v5, 0x4

    cmp-long v8, v3, v5

    if-lez v8, :cond_10

    const-wide/16 v3, 0x0

    .line 4837
    :goto_c
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_16

    .line 4838
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 4839
    :goto_d
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    const-wide/16 v10, 0x0

    .line 4840
    :goto_e
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_d

    move-wide/from16 v25, v3

    .line 4841
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

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

    move-wide/from16 v29, v12

    .line 4846
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v23

    add-long v12, v3, v23

    .line 4847
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v3, v21

    .line 4848
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v23

    add-long v8, v3, v17

    .line 4849
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 4850
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v23

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 4851
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v3, v15

    .line 4852
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v23

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 4853
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v33, v23

    move-wide/from16 v3, v25

    move-wide/from16 v8, v27

    move-wide/from16 v5, v31

    goto :goto_e

    :cond_d
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move-wide/from16 v27, v8

    .line 4855
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4856
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long v4, v4, v21

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4857
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4858
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4859
    :goto_f
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_e

    .line 4860
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

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

    move-wide/from16 v29, v5

    .line 4865
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v23

    add-long v10, v10, v23

    .line 4866
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    .line 4867
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v23

    .line 4868
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4869
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v23

    .line 4870
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 4871
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v23

    .line 4872
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4877
    :goto_10
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_16

    .line 4878
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 4879
    :goto_11
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_11

    .line 4880
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v5

    mul-long v14, v8, v21

    mul-long v10, v10, v21

    add-long/2addr v10, v14

    move-wide/from16 v19, v3

    .line 4883
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v23

    add-long v2, v12, v23

    .line 4884
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v12, v21

    .line 4885
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v23

    add-long v12, v12, v17

    .line 4886
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v23

    move-wide/from16 v3, v19

    goto :goto_11

    :cond_11
    move-wide/from16 v19, v3

    .line 4888
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v8, p3

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4889
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    mul-long v3, v3, v21

    invoke-virtual {v2, v7, v3, v4, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4890
    :goto_12
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v2, v3, v9

    if-gez v2, :cond_12

    .line 4891
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v3

    add-long/2addr v11, v5

    mul-long v13, v3, v21

    mul-long v9, v9, v21

    add-long/2addr v9, v13

    move-wide v15, v5

    .line 4894
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v11, v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v11, v23

    add-long v13, v13, v23

    .line 4895
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v11, v21

    .line 4896
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v5, v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v17

    add-long v9, v9, v23

    .line 4897
    invoke-virtual {v7, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v11, v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4901
    :goto_13
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_16

    .line 4902
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v9, 0x0

    .line 4903
    :goto_14
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v2, v9, v11

    if-gez v2, :cond_14

    .line 4904
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v9

    add-long/2addr v11, v5

    mul-long v13, v9, v21

    move-wide v15, v3

    .line 4906
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v23

    add-long v11, v11, v23

    .line 4907
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    move-wide v3, v15

    goto :goto_14

    :cond_14
    move-wide v15, v3

    .line 4909
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v9, v3

    .line 4910
    :goto_15
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v2, v9, v11

    if-gez v2, :cond_15

    .line 4911
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v9

    add-long/2addr v11, v5

    mul-long v13, v9, v21

    .line 4913
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v1, v11, v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v23

    add-long v13, v13, v23

    .line 4914
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v23

    const-wide/16 v3, 0x0

    goto :goto_15

    :cond_15
    add-long v3, v15, v23

    goto :goto_13

    :cond_16
    return-void
.end method

.method private cdft3db_sub(I[DZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 4561
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 4562
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4566
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4571
    :cond_2
    :goto_0
    new-array v2, v2, [D

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v5, :cond_c

    if-le v3, v4, :cond_6

    move v1, v6

    .line 4574
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4575
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v5, v6

    .line 4576
    :goto_2
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v8, :cond_5

    move v8, v6

    .line 4577
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v8, v9, :cond_3

    .line 4578
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

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

    .line 4583
    aget-wide v14, p2, v10

    aput-wide v14, v2, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v10, 0x1

    .line 4584
    aget-wide v14, p2, v14

    aput-wide v14, v2, v11

    add-int/lit8 v11, v10, 0x2

    .line 4585
    aget-wide v14, p2, v11

    aput-wide v14, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v10, 0x3

    .line 4586
    aget-wide v14, p2, v11

    aput-wide v14, v2, v12

    add-int/lit8 v11, v10, 0x4

    .line 4587
    aget-wide v11, p2, v11

    aput-wide v11, v2, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v10, 0x5

    .line 4588
    aget-wide v11, p2, v11

    aput-wide v11, v2, v13

    add-int/lit8 v11, v10, 0x6

    .line 4589
    aget-wide v11, p2, v11

    aput-wide v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x7

    .line 4590
    aget-wide v10, p2, v10

    aput-wide v10, v2, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4592
    :cond_3
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v8, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4593
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4594
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v9, v4

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4595
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v6

    .line 4596
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v8, v9, :cond_4

    .line 4597
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

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

    .line 4602
    aget-wide v14, v2, v11

    aput-wide v14, p2, v10

    add-int/lit8 v14, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 4603
    aget-wide v15, v2, v11

    aput-wide v15, p2, v14

    add-int/lit8 v11, v10, 0x2

    .line 4604
    aget-wide v14, v2, v12

    aput-wide v14, p2, v11

    add-int/lit8 v11, v10, 0x3

    add-int/lit8 v12, v12, 0x1

    .line 4605
    aget-wide v14, v2, v12

    aput-wide v14, p2, v11

    add-int/lit8 v11, v10, 0x4

    .line 4606
    aget-wide v14, v2, v13

    aput-wide v14, p2, v11

    add-int/lit8 v11, v10, 0x5

    add-int/lit8 v13, v13, 0x1

    .line 4607
    aget-wide v12, v2, v13

    aput-wide v12, p2, v11

    add-int/lit8 v11, v10, 0x6

    .line 4608
    aget-wide v12, v2, v9

    aput-wide v12, p2, v11

    add-int/lit8 v10, v10, 0x7

    add-int/lit8 v9, v9, 0x1

    .line 4609
    aget-wide v11, v2, v9

    aput-wide v11, p2, v10

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

    .line 4614
    :goto_5
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4615
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v4, v6

    .line 4616
    :goto_6
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_7

    .line 4617
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    .line 4620
    aget-wide v10, p2, v8

    aput-wide v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v8, 0x1

    .line 4621
    aget-wide v10, p2, v10

    aput-wide v10, v2, v9

    add-int/lit8 v9, v8, 0x2

    .line 4622
    aget-wide v9, p2, v9

    aput-wide v9, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 4623
    aget-wide v8, p2, v8

    aput-wide v8, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4625
    :cond_7
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v4, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4626
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v5, v7

    invoke-virtual {v4, v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v4, v6

    .line 4627
    :goto_7
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_8

    .line 4628
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v9

    .line 4631
    aget-wide v10, v2, v9

    aput-wide v10, p2, v8

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 4632
    aget-wide v11, v2, v9

    aput-wide v11, p2, v10

    add-int/lit8 v9, v8, 0x2

    .line 4633
    aget-wide v10, v2, v5

    aput-wide v10, p2, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 4634
    aget-wide v9, v2, v5

    aput-wide v9, p2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v7, :cond_16

    move v1, v6

    .line 4638
    :goto_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    .line 4639
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v4, v6

    .line 4640
    :goto_9
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_a

    .line 4641
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    mul-int/lit8 v7, v4, 0x2

    .line 4643
    aget-wide v8, p2, v5

    aput-wide v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 4644
    aget-wide v8, p2, v5

    aput-wide v8, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4646
    :cond_a
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v4, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v4, v6

    .line 4647
    :goto_a
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_b

    .line 4648
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    mul-int/lit8 v7, v4, 0x2

    .line 4650
    aget-wide v8, v2, v7

    aput-wide v8, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 4651
    aget-wide v7, v2, v7

    aput-wide v7, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-le v3, v4, :cond_10

    move v3, v6

    .line 4656
    :goto_b
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v5, :cond_16

    .line 4657
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v3

    move v8, v6

    .line 4658
    :goto_c
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v8, v9, :cond_f

    move v9, v6

    .line 4659
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v9, v10, :cond_d

    .line 4660
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

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

    .line 4665
    aget-wide v15, p2, v11

    aput-wide v15, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 4666
    aget-wide v15, p2, v15

    aput-wide v15, v2, v12

    add-int/lit8 v12, v11, 0x2

    .line 4667
    aget-wide v15, p2, v12

    aput-wide v15, v2, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 4668
    aget-wide v15, p2, v12

    aput-wide v15, v2, v13

    add-int/lit8 v12, v11, 0x4

    .line 4669
    aget-wide v12, p2, v12

    aput-wide v12, v2, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 4670
    aget-wide v12, p2, v12

    aput-wide v12, v2, v14

    add-int/lit8 v12, v11, 0x6

    .line 4671
    aget-wide v12, p2, v12

    aput-wide v12, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 4672
    aget-wide v11, p2, v11

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4674
    :cond_d
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4675
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4676
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4677
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4678
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v9, v10, :cond_e

    .line 4679
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

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

    .line 4684
    aget-wide v15, v2, v12

    aput-wide v15, p2, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 4685
    aget-wide v16, v2, v12

    aput-wide v16, p2, v15

    add-int/lit8 v12, v11, 0x2

    .line 4686
    aget-wide v15, v2, v13

    aput-wide v15, p2, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 4687
    aget-wide v15, v2, v13

    aput-wide v15, p2, v12

    add-int/lit8 v12, v11, 0x4

    .line 4688
    aget-wide v15, v2, v14

    aput-wide v15, p2, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 4689
    aget-wide v13, v2, v14

    aput-wide v13, p2, v12

    add-int/lit8 v12, v11, 0x6

    .line 4690
    aget-wide v13, v2, v10

    aput-wide v13, p2, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 4691
    aget-wide v12, v2, v10

    aput-wide v12, p2, v11

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

    .line 4696
    :goto_f
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    .line 4697
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    move v5, v6

    .line 4698
    :goto_10
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v8, :cond_11

    .line 4699
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    .line 4702
    aget-wide v11, p2, v9

    aput-wide v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 4703
    aget-wide v11, p2, v11

    aput-wide v11, v2, v10

    add-int/lit8 v10, v9, 0x2

    .line 4704
    aget-wide v10, p2, v10

    aput-wide v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x3

    .line 4705
    aget-wide v9, p2, v9

    aput-wide v9, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 4707
    :cond_11
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4708
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v8, v7

    invoke-virtual {v5, v2, v8, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v5, v6

    .line 4709
    :goto_11
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v8, :cond_12

    .line 4710
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    .line 4713
    aget-wide v11, v2, v10

    aput-wide v11, p2, v9

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 4714
    aget-wide v12, v2, v10

    aput-wide v12, p2, v11

    add-int/lit8 v10, v9, 0x2

    .line 4715
    aget-wide v11, v2, v8

    aput-wide v11, p2, v10

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v8, v8, 0x1

    .line 4716
    aget-wide v10, v2, v8

    aput-wide v10, p2, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    if-ne v3, v7, :cond_16

    move v3, v6

    .line 4720
    :goto_12
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    .line 4721
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    move v5, v6

    .line 4722
    :goto_13
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v7, :cond_14

    .line 4723
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    mul-int/lit8 v8, v5, 0x2

    .line 4725
    aget-wide v9, p2, v7

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 4726
    aget-wide v9, p2, v7

    aput-wide v9, v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 4728
    :cond_14
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v5, v6

    .line 4729
    :goto_14
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v7, :cond_15

    .line 4730
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    mul-int/lit8 v8, v5, 0x2

    .line 4732
    aget-wide v9, v2, v8

    aput-wide v9, p2, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 4733
    aget-wide v8, v2, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_16
    return-void
.end method

.method private cdft3db_sub(I[[[DZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 4923
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 4924
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4928
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4933
    :cond_2
    :goto_0
    new-array v2, v2, [D

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v10, p1

    if-ne v10, v5, :cond_c

    if-le v3, v4, :cond_6

    move v1, v7

    .line 4936
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 4937
    :goto_2
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v5, :cond_5

    move v5, v7

    .line 4938
    :goto_3
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_3

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 4943
    aget-object v13, p2, v5

    aget-object v13, v13, v1

    aget-wide v14, v13, v3

    aput-wide v14, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v14, v3, 0x1

    .line 4944
    aget-wide v14, v13, v14

    aput-wide v14, v2, v10

    add-int/lit8 v10, v3, 0x2

    .line 4945
    aget-wide v14, v13, v10

    aput-wide v14, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v10, v3, 0x3

    .line 4946
    aget-wide v14, v13, v10

    aput-wide v14, v2, v11

    add-int/lit8 v10, v3, 0x4

    .line 4947
    aget-wide v10, v13, v10

    aput-wide v10, v2, v12

    add-int/2addr v12, v9

    add-int/lit8 v10, v3, 0x5

    .line 4948
    aget-wide v10, v13, v10

    aput-wide v10, v2, v12

    add-int/lit8 v10, v3, 0x6

    .line 4949
    aget-wide v10, v13, v10

    aput-wide v10, v2, v6

    add-int/2addr v6, v9

    add-int/lit8 v10, v3, 0x7

    .line 4950
    aget-wide v10, v13, v10

    aput-wide v10, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4952
    :cond_3
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4953
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v6, v8

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4954
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v6, v4

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4955
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v5, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v5, v7

    .line 4956
    :goto_4
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_4

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    .line 4961
    aget-object v13, p2, v5

    aget-object v13, v13, v1

    aget-wide v14, v2, v10

    aput-wide v14, v13, v3

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v10, v9

    .line 4962
    aget-wide v15, v2, v10

    aput-wide v15, v13, v14

    add-int/lit8 v10, v3, 0x2

    .line 4963
    aget-wide v14, v2, v11

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v9

    .line 4964
    aget-wide v14, v2, v11

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x4

    .line 4965
    aget-wide v14, v2, v12

    aput-wide v14, v13, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v9

    .line 4966
    aget-wide v11, v2, v12

    aput-wide v11, v13, v10

    add-int/lit8 v10, v3, 0x6

    .line 4967
    aget-wide v11, v2, v6

    aput-wide v11, v13, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v6, v9

    .line 4968
    aget-wide v11, v2, v6

    aput-wide v11, v13, v10

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

    .line 4973
    :goto_5
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 4974
    :goto_6
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_7

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 4977
    aget-object v10, p2, v3

    aget-object v10, v10, v1

    aget-wide v11, v10, v7

    aput-wide v11, v2, v5

    add-int/2addr v5, v9

    .line 4978
    aget-wide v11, v10, v9

    aput-wide v11, v2, v5

    .line 4979
    aget-wide v11, v10, v8

    aput-wide v11, v2, v4

    add-int/2addr v4, v9

    .line 4980
    aget-wide v11, v10, v6

    aput-wide v11, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4982
    :cond_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4983
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v4, v8

    invoke-virtual {v3, v2, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v7

    .line 4984
    :goto_7
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_8

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 4987
    aget-object v10, p2, v3

    aget-object v10, v10, v1

    aget-wide v11, v2, v5

    aput-wide v11, v10, v7

    add-int/2addr v5, v9

    .line 4988
    aget-wide v11, v2, v5

    aput-wide v11, v10, v9

    .line 4989
    aget-wide v11, v2, v4

    aput-wide v11, v10, v8

    add-int/2addr v4, v9

    .line 4990
    aget-wide v4, v2, v4

    aput-wide v4, v10, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-ne v3, v8, :cond_16

    move v1, v7

    .line 4994
    :goto_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_16

    move v3, v7

    .line 4995
    :goto_9
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_a

    mul-int/lit8 v4, v3, 0x2

    .line 4997
    aget-object v5, p2, v3

    aget-object v5, v5, v1

    aget-wide v10, v5, v7

    aput-wide v10, v2, v4

    add-int/2addr v4, v9

    .line 4998
    aget-wide v10, v5, v9

    aput-wide v10, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 5000
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v7

    .line 5001
    :goto_a
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_b

    mul-int/lit8 v4, v3, 0x2

    .line 5003
    aget-object v5, p2, v3

    aget-object v5, v5, v1

    aget-wide v10, v2, v4

    aput-wide v10, v5, v7

    add-int/2addr v4, v9

    .line 5004
    aget-wide v10, v2, v4

    aput-wide v10, v5, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-le v3, v4, :cond_10

    move v3, v7

    .line 5009
    :goto_b
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v5, :cond_16

    move v5, v7

    .line 5010
    :goto_c
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_f

    move v6, v7

    .line 5011
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v10, :cond_d

    mul-int/lit8 v11, v6, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 5016
    aget-object v14, p2, v6

    aget-object v14, v14, v3

    aget-wide v15, v14, v5

    aput-wide v15, v2, v11

    add-int/2addr v11, v9

    add-int/lit8 v15, v5, 0x1

    .line 5017
    aget-wide v15, v14, v15

    aput-wide v15, v2, v11

    add-int/lit8 v11, v5, 0x2

    .line 5018
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/2addr v12, v9

    add-int/lit8 v11, v5, 0x3

    .line 5019
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/lit8 v11, v5, 0x4

    .line 5020
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/2addr v13, v9

    add-int/lit8 v11, v5, 0x5

    .line 5021
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/lit8 v11, v5, 0x6

    .line 5022
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/2addr v10, v9

    add-int/lit8 v11, v5, 0x7

    .line 5023
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 5025
    :cond_d
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5026
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v10, v8

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5027
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v10, v4

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5028
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v6, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v6, v7

    .line 5029
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v10, :cond_e

    mul-int/lit8 v11, v6, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 5034
    aget-object v14, p2, v6

    aget-object v14, v14, v3

    aget-wide v15, v2, v11

    aput-wide v15, v14, v5

    add-int/lit8 v15, v5, 0x1

    add-int/2addr v11, v9

    .line 5035
    aget-wide v16, v2, v11

    aput-wide v16, v14, v15

    add-int/lit8 v11, v5, 0x2

    .line 5036
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v5, 0x3

    add-int/2addr v12, v9

    .line 5037
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v5, 0x4

    .line 5038
    aget-wide v15, v2, v13

    aput-wide v15, v14, v11

    add-int/lit8 v11, v5, 0x5

    add-int/2addr v13, v9

    .line 5039
    aget-wide v12, v2, v13

    aput-wide v12, v14, v11

    add-int/lit8 v11, v5, 0x6

    .line 5040
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

    add-int/lit8 v11, v5, 0x7

    add-int/2addr v10, v9

    .line 5041
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

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

    .line 5046
    :goto_f
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    move v4, v7

    .line 5047
    :goto_10
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_11

    mul-int/lit8 v10, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    .line 5050
    aget-object v11, p2, v4

    aget-object v11, v11, v3

    aget-wide v12, v11, v7

    aput-wide v12, v2, v10

    add-int/2addr v10, v9

    .line 5051
    aget-wide v12, v11, v9

    aput-wide v12, v2, v10

    .line 5052
    aget-wide v12, v11, v8

    aput-wide v12, v2, v5

    add-int/2addr v5, v9

    .line 5053
    aget-wide v10, v11, v6

    aput-wide v10, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 5055
    :cond_11
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v4, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5056
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/2addr v5, v8

    invoke-virtual {v4, v2, v5, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v4, v7

    .line 5057
    :goto_11
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_12

    mul-int/lit8 v10, v4, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v10

    .line 5060
    aget-object v11, p2, v4

    aget-object v11, v11, v3

    aget-wide v12, v2, v10

    aput-wide v12, v11, v7

    add-int/2addr v10, v9

    .line 5061
    aget-wide v12, v2, v10

    aput-wide v12, v11, v9

    .line 5062
    aget-wide v12, v2, v5

    aput-wide v12, v11, v8

    add-int/2addr v5, v9

    .line 5063
    aget-wide v12, v2, v5

    aput-wide v12, v11, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    if-ne v3, v8, :cond_16

    move v3, v7

    .line 5067
    :goto_12
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_16

    move v4, v7

    .line 5068
    :goto_13
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_14

    mul-int/lit8 v5, v4, 0x2

    .line 5070
    aget-object v6, p2, v4

    aget-object v6, v6, v3

    aget-wide v10, v6, v7

    aput-wide v10, v2, v5

    add-int/2addr v5, v9

    .line 5071
    aget-wide v10, v6, v9

    aput-wide v10, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 5073
    :cond_14
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v4, v2, v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v4, v7

    .line 5074
    :goto_14
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v5, :cond_15

    mul-int/lit8 v5, v4, 0x2

    .line 5076
    aget-object v6, p2, v4

    aget-object v6, v6, v3

    aget-wide v10, v2, v5

    aput-wide v10, v6, v7

    add-int/2addr v5, v9

    .line 5077
    aget-wide v10, v2, v5

    aput-wide v10, v6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_16
    return-void
.end method

.method private cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 6524
    const-class v12, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 6525
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 6526
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 6530
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 6536
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v0, :cond_3

    int-to-long v6, v10

    .line 6539
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$58;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_3D$58;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6716
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6720
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

    .line 6718
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private cdft3db_subth(I[DZ)V
    .locals 15

    move-object v9, p0

    .line 6321
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6322
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 6323
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6327
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 6333
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_3

    .line 6336
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_3D$57;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$57;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6513
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6517
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

    .line 6515
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private cdft3db_subth(I[[[DZ)V
    .locals 15

    move-object v9, p0

    .line 6727
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6728
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 6729
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6733
    iget v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 6739
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_3

    .line 6742
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_3D$59;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$59;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6901
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6905
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

    .line 6903
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
    .locals 41

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 7617
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v2, 0x2

    mul-long v17, v0, v2

    .line 7618
    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    div-long v19, v0, v2

    .line 7619
    iget-wide v4, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v21, v4, v2

    mul-long v23, v0, v17

    const-wide/16 v11, 0x1

    sub-long/2addr v4, v11

    :goto_0
    cmp-long v0, v4, v11

    const-wide/16 v9, 0x0

    if-ltz v0, :cond_2

    .line 7627
    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v0, v4

    mul-long v25, v0, v2

    const-wide/16 v27, 0x0

    .line 7629
    :goto_1
    iget-wide v6, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v27, v6

    if-gez v6, :cond_1

    .line 7630
    iget-wide v6, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v6, v6, v27

    mul-long v31, v6, v2

    const-wide/16 v33, 0x0

    .line 7632
    :goto_2
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v2, v33, v2

    if-gez v2, :cond_0

    add-long v2, v0, v6

    add-long v2, v2, v33

    add-long v37, v25, v31

    add-long v11, v37, v33

    move-wide/from16 v37, v0

    .line 7635
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7636
    invoke-virtual {v15, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v39, 0x1

    add-long v2, v2, v39

    add-long v11, v11, v39

    .line 7639
    invoke-virtual {v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v15, v11, v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7640
    invoke-virtual {v15, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v0, 0x2

    add-long v33, v33, v0

    move-wide/from16 v0, v37

    move-wide/from16 v11, v39

    goto :goto_2

    :cond_0
    move-wide/from16 v37, v0

    move-wide/from16 v39, v11

    add-long v27, v27, v39

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_1
    move-wide/from16 v39, v11

    sub-long v4, v4, v39

    const-wide/16 v2, 0x2

    const-wide/16 v11, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    .line 7645
    :goto_3
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    sub-long v4, v2, v0

    .line 7646
    iget-wide v6, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v6

    sub-long/2addr v2, v0

    mul-long v2, v2, v17

    const-wide/16 v6, 0x0

    .line 7648
    :goto_4
    iget-wide v11, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v8, v6, v11

    if-gez v8, :cond_3

    add-long v11, v4, v6

    add-long v9, v2, v6

    move-wide/from16 v27, v2

    .line 7651
    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v15, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x0

    .line 7652
    invoke-virtual {v15, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v25, 0x1

    add-long v11, v11, v25

    add-long v9, v9, v25

    move-wide/from16 v31, v4

    .line 7655
    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v15, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7656
    invoke-virtual {v15, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x2

    add-long/2addr v6, v4

    move-wide v9, v2

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    goto :goto_4

    :cond_3
    move-wide v2, v9

    const-wide/16 v25, 0x1

    add-long v0, v0, v25

    goto :goto_3

    :cond_4
    move-wide v2, v9

    const-wide/16 v25, 0x1

    .line 7660
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    const/4 v0, 0x1

    if-le v13, v0, :cond_b

    .line 7661
    iget-boolean v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_b

    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    int-to-long v4, v13

    cmp-long v6, v0, v4

    if-ltz v6, :cond_b

    .line 7662
    new-array v11, v13, [Ljava/util/concurrent/Future;

    .line 7663
    div-long v27, v0, v4

    const/16 v29, 0x0

    move/from16 v0, v29

    :goto_5
    if-ge v0, v13, :cond_6

    int-to-long v4, v0

    mul-long v4, v4, v27

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_5

    .line 7666
    iget-wide v6, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_6

    :cond_5
    add-long v6, v4, v27

    .line 7667
    :goto_6
    new-instance v30, Lorg/jtransforms/fft/DoubleFFT_3D$66;

    move-object/from16 v1, v30

    move-wide v9, v2

    move-object/from16 v2, p0

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, v23

    move-wide/from16 v9, v17

    move-object/from16 v25, v11

    move-wide/from16 v11, v17

    move v15, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/DoubleFFT_3D$66;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v30 .. v30}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    move v13, v15

    move-object/from16 v11, v25

    const-wide/16 v2, 0x0

    const-wide/16 v25, 0x1

    move-object/from16 v15, p1

    goto :goto_5

    :cond_6
    move-object/from16 v25, v11

    move v15, v13

    const/4 v13, 0x0

    .line 7689
    :try_start_0
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7693
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

    .line 7691
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move/from16 v0, v29

    :goto_8
    if-ge v0, v15, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v27

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_7

    .line 7699
    iget-wide v1, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_9

    :cond_7
    add-long v1, v3, v27

    :goto_9
    move-wide v5, v1

    .line 7700
    new-instance v26, Lorg/jtransforms/fft/DoubleFFT_3D$67;

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-wide/from16 v9, v19

    move-wide/from16 v11, v17

    move-object v14, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/DoubleFFT_3D$67;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v14

    move-object/from16 v14, p0

    goto :goto_8

    :cond_8
    move-object v14, v13

    .line 7723
    :try_start_1
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7727
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

    .line 7725
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    move/from16 v0, v29

    :goto_b
    if-ge v0, v15, :cond_a

    int-to-long v1, v0

    mul-long v3, v1, v27

    add-int/lit8 v13, v15, -0x1

    if-ne v0, v13, :cond_9

    move-object v13, v14

    move-object/from16 v14, p0

    .line 7731
    iget-wide v1, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_c

    :cond_9
    move-object v13, v14

    move-object/from16 v14, p0

    add-long v1, v3, v27

    :goto_c
    move-wide v5, v1

    .line 7732
    new-instance v26, Lorg/jtransforms/fft/DoubleFFT_3D$68;

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    move-wide/from16 v7, v23

    move-wide/from16 v9, v19

    move-wide/from16 v11, v17

    move/from16 v29, v15

    move-object v15, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/DoubleFFT_3D$68;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v26 .. v26}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v25, v0

    add-int/lit8 v0, v0, 0x1

    move-object v14, v15

    move/from16 v15, v29

    goto :goto_b

    :cond_a
    move-object v15, v14

    move-object/from16 v14, p0

    .line 7751
    :try_start_2
    invoke-static/range {v25 .. v25}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 7755
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

    .line 7753
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    move-object/from16 v4, p1

    move-object v1, v14

    goto/16 :goto_15

    :cond_b
    const-wide/16 v0, 0x0

    .line 7760
    :goto_e
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    sub-long v4, v2, v0

    .line 7761
    rem-long/2addr v4, v2

    mul-long v4, v4, v23

    mul-long v2, v0, v23

    const-wide/16 v6, 0x0

    .line 7763
    :goto_f
    iget-wide v8, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_d

    sub-long v10, v8, v6

    .line 7764
    rem-long/2addr v10, v8

    mul-long v10, v10, v17

    mul-long v8, v6, v17

    move-wide v15, v0

    const-wide/16 v12, 0x1

    .line 7766
    :goto_10
    iget-wide v0, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v0, v12, v0

    if-gez v0, :cond_c

    add-long v0, v4, v10

    add-long v0, v0, v17

    sub-long/2addr v0, v12

    add-long v25, v2, v8

    add-long v25, v25, v12

    move-wide/from16 v31, v2

    const-wide/16 v27, 0x2

    add-long v2, v25, v27

    move-wide/from16 v33, v4

    move-object/from16 v4, p1

    .line 7769
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v4, v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide/from16 v35, v8

    add-long v8, v25, v2

    .line 7770
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v4, v0, v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v27

    move-wide/from16 v2, v31

    move-wide/from16 v4, v33

    move-wide/from16 v8, v35

    goto :goto_10

    :cond_c
    move-wide/from16 v31, v2

    move-wide/from16 v33, v4

    const-wide/16 v2, 0x1

    const-wide/16 v27, 0x2

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

    const-wide/16 v27, 0x2

    add-long v0, v15, v2

    goto :goto_e

    :cond_e
    move-object/from16 v4, p1

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 7776
    :goto_11
    iget-wide v5, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_10

    sub-long v7, v5, v0

    .line 7777
    rem-long/2addr v7, v5

    mul-long v7, v7, v23

    mul-long v5, v0, v23

    move-wide v11, v2

    :goto_12
    cmp-long v9, v11, v19

    if-gez v9, :cond_f

    .line 7780
    iget-wide v9, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v9, v11

    mul-long v9, v9, v17

    add-long/2addr v9, v5

    mul-long v15, v11, v17

    add-long/2addr v15, v7

    .line 7781
    iget-wide v2, v14, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    move-wide/from16 v25, v5

    add-long v5, v15, v2

    add-long/2addr v2, v9

    move-wide/from16 v27, v7

    const-wide/16 v15, 0x1

    add-long v7, v9, v15

    .line 7784
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v5, v6, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7785
    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v4, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    .line 7786
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v15

    .line 7787
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v4, v2, v3, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    move-object/from16 v14, p0

    move-wide v2, v15

    move-wide/from16 v5, v25

    move-wide/from16 v7, v27

    goto :goto_12

    :cond_f
    move-wide v15, v2

    add-long/2addr v0, v15

    move-object/from16 v14, p0

    goto :goto_11

    :cond_10
    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    .line 7792
    :goto_13
    iget-wide v2, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_12

    sub-long v8, v2, v6

    .line 7793
    rem-long/2addr v8, v2

    mul-long v8, v8, v23

    mul-long v2, v6, v23

    const-wide/16 v11, 0x1

    :goto_14
    cmp-long v0, v11, v19

    if-gez v0, :cond_11

    .line 7796
    iget-wide v13, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v13, v11

    mul-long v13, v13, v17

    add-long/2addr v13, v8

    mul-long v15, v11, v17

    move-wide/from16 v25, v8

    add-long v8, v2, v15

    move-wide v15, v2

    .line 7798
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v4, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    add-long/2addr v8, v2

    .line 7799
    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual {v4, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v2

    move-wide v2, v15

    move-wide/from16 v8, v25

    goto :goto_14

    :cond_11
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_13

    :cond_12
    :goto_15
    const-wide/16 v11, 0x1

    :goto_16
    cmp-long v0, v11, v21

    if-gez v0, :cond_13

    mul-long v2, v11, v23

    .line 7808
    iget-wide v5, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    sub-long/2addr v5, v11

    mul-long v5, v5, v23

    mul-long v7, v19, v17

    add-long v9, v2, v7

    add-long/2addr v7, v5

    .line 7812
    iget-wide v13, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v13, v2

    move-wide/from16 v25, v7

    move-wide v15, v11

    const-wide/16 v11, 0x1

    add-long v7, v5, v11

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v4, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7813
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v11, v5

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7814
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v11, v2

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    neg-double v13, v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7815
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v11, v5

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7816
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v11, v9

    move-wide/from16 v27, v7

    const-wide/16 v13, 0x1

    add-long v7, v25, v13

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7817
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long v11, v25, v11

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7818
    iget-wide v11, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v11, v9

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-wide/from16 v13, v25

    move-wide/from16 v25, v7

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v4, v11, v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7819
    iget-wide v7, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v7, v13

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    invoke-virtual {v4, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v4, v7, v8, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7820
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 7821
    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    move-wide/from16 v7, v27

    invoke-virtual {v4, v7, v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7822
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v4, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v5

    .line 7823
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    neg-double v2, v2

    move-wide/from16 v7, v25

    invoke-virtual {v4, v7, v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v15, v5

    goto/16 :goto_16

    :cond_13
    const-wide/16 v5, 0x1

    .line 7828
    iget-wide v2, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v4, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x0

    .line 7829
    invoke-virtual {v4, v5, v6, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    mul-long v19, v19, v17

    mul-long v21, v21, v23

    add-long v7, v19, v21

    .line 7833
    iget-wide v9, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long v9, v19, v9

    add-long v11, v19, v5

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7834
    invoke-virtual {v4, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7835
    iget-wide v9, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long v9, v21, v9

    add-long v11, v21, v5

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7836
    invoke-virtual {v4, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7837
    iget-wide v9, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v9, v7

    add-long v11, v7, v5

    invoke-virtual {v4, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v4, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7838
    invoke-virtual {v4, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7839
    iget-wide v9, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long v21, v21, v9

    add-long v9, v21, v5

    invoke-virtual {v4, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7840
    iget-wide v9, v1, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    add-long/2addr v7, v9

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    return-void
.end method

.method private fillSymmetric([D)V
    .locals 23

    move-object/from16 v9, p0

    .line 7389
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v11, v0, 0x2

    .line 7390
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v12, v0, 0x2

    .line 7391
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v13, v1, 0x2

    mul-int v14, v0, v11

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    :goto_0
    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    if-lt v1, v15, :cond_2

    .line 7399
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x2

    move/from16 v3, v18

    .line 7401
    :goto_1
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_1

    .line 7402
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    mul-int/lit8 v5, v4, 0x2

    move/from16 v6, v18

    .line 7404
    :goto_2
    iget v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v6, v7, :cond_0

    add-int v7, v0, v4

    add-int/2addr v7, v6

    add-int v8, v2, v5

    add-int/2addr v8, v6

    .line 7407
    aget-wide v19, p1, v7

    aput-wide v19, p1, v8

    .line 7408
    aput-wide v16, p1, v7

    add-int/2addr v7, v15

    add-int/2addr v8, v15

    .line 7411
    aget-wide v19, p1, v7

    aput-wide v19, p1, v8

    .line 7412
    aput-wide v16, p1, v7

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

    .line 7417
    :goto_3
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_4

    sub-int v2, v1, v0

    .line 7418
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v0

    mul-int/2addr v1, v11

    move/from16 v3, v18

    .line 7420
    :goto_4
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_3

    add-int v4, v2, v3

    add-int v5, v1, v3

    .line 7423
    aget-wide v6, p1, v4

    aput-wide v6, p1, v5

    .line 7424
    aput-wide v16, p1, v4

    add-int/2addr v4, v15

    add-int/2addr v5, v15

    .line 7427
    aget-wide v6, p1, v4

    aput-wide v6, p1, v5

    .line 7428
    aput-wide v16, p1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7432
    :cond_4
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    if-le v8, v15, :cond_b

    .line 7433
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_b

    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v8, :cond_b

    .line 7434
    new-array v7, v8, [Ljava/util/concurrent/Future;

    .line 7435
    div-int v19, v0, v8

    move/from16 v0, v18

    :goto_5
    if-ge v0, v8, :cond_6

    mul-int v3, v0, v19

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_5

    .line 7438
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_6

    :cond_5
    add-int v1, v3, v19

    :goto_6
    move v4, v1

    .line 7439
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_3D$63;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move v5, v14

    move v6, v11

    move-object/from16 v21, v7

    move v7, v11

    move v15, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$63;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move v8, v15

    move-object/from16 v7, v21

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v21, v7

    move v15, v8

    const/4 v8, 0x0

    .line 7461
    :try_start_0
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7465
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

    .line 7463
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move/from16 v0, v18

    :goto_8
    if-ge v0, v15, :cond_8

    mul-int v3, v0, v19

    add-int/lit8 v1, v15, -0x1

    if-ne v0, v1, :cond_7

    .line 7471
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_9

    :cond_7
    add-int v1, v3, v19

    :goto_9
    move v4, v1

    .line 7472
    new-instance v20, Lorg/jtransforms/fft/DoubleFFT_3D$64;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move v5, v14

    move v6, v12

    move v7, v11

    move/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$64;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static/range {v20 .. v20}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v13

    move/from16 v13, v22

    goto :goto_8

    :cond_8
    move/from16 v22, v13

    move-object v13, v8

    .line 7495
    :try_start_1
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7499
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

    .line 7497
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    move/from16 v0, v18

    :goto_b
    if-ge v0, v15, :cond_a

    mul-int v3, v0, v19

    add-int/lit8 v8, v15, -0x1

    if-ne v0, v8, :cond_9

    .line 7503
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_c

    :cond_9
    add-int v1, v3, v19

    :goto_c
    move v4, v1

    .line 7504
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$65;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move v5, v14

    move v6, v12

    move v7, v11

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$65;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v21, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7523
    :cond_a
    :try_start_2
    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 7527
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

    .line 7525
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_b
    move/from16 v22, v13

    move/from16 v0, v18

    .line 7532
    :goto_d
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_e

    sub-int v2, v1, v0

    .line 7533
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    move/from16 v3, v18

    .line 7535
    :goto_e
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_d

    sub-int v5, v4, v3

    .line 7536
    rem-int/2addr v5, v4

    mul-int/2addr v5, v11

    mul-int v4, v3, v11

    const/4 v6, 0x1

    .line 7538
    :goto_f
    iget v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v6, v7, :cond_c

    add-int v7, v2, v5

    add-int/2addr v7, v11

    sub-int/2addr v7, v6

    add-int v8, v1, v4

    add-int/2addr v8, v6

    add-int/lit8 v10, v8, 0x2

    move v15, v1

    move v13, v2

    .line 7541
    aget-wide v1, p1, v10

    neg-double v1, v1

    aput-wide v1, p1, v7

    const/4 v1, 0x1

    sub-int/2addr v7, v1

    add-int/2addr v8, v1

    .line 7542
    aget-wide v1, p1, v8

    aput-wide v1, p1, v7

    add-int/lit8 v6, v6, 0x2

    move v2, v13

    move v1, v15

    goto :goto_f

    :cond_c
    move v15, v1

    move v13, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_e
    move/from16 v0, v18

    .line 7548
    :goto_10
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_10

    sub-int v2, v1, v0

    .line 7549
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    const/4 v3, 0x1

    :goto_11
    if-ge v3, v12, :cond_f

    .line 7552
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v4, v3

    mul-int/2addr v4, v11

    add-int/2addr v4, v1

    mul-int v5, v3, v11

    add-int/2addr v5, v2

    .line 7553
    iget v6, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v5, v6

    add-int/2addr v6, v4

    add-int/lit8 v7, v4, 0x1

    .line 7556
    aget-wide v19, p1, v7

    aput-wide v19, p1, v5

    .line 7557
    aget-wide v7, p1, v7

    aput-wide v7, p1, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 7558
    aget-wide v7, p1, v4

    neg-double v7, v7

    aput-wide v7, p1, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 7559
    aget-wide v4, p1, v4

    aput-wide v4, p1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_10
    move/from16 v0, v18

    .line 7564
    :goto_12
    iget v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_12

    sub-int v2, v1, v0

    .line 7565
    rem-int/2addr v2, v1

    mul-int/2addr v2, v14

    mul-int v1, v0, v14

    const/4 v3, 0x1

    :goto_13
    if-ge v3, v12, :cond_11

    .line 7568
    iget v4, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v4, v3

    mul-int/2addr v4, v11

    add-int/2addr v4, v2

    mul-int v5, v3, v11

    add-int/2addr v5, v1

    .line 7570
    aget-wide v6, p1, v5

    aput-wide v6, p1, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    .line 7571
    aget-wide v5, p1, v5

    neg-double v5, v5

    aput-wide v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_12
    :goto_14
    move/from16 v1, v22

    const/4 v0, 0x1

    :goto_15
    if-ge v0, v1, :cond_13

    mul-int v2, v0, v14

    .line 7580
    iget v3, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v3, v0

    mul-int/2addr v3, v14

    mul-int v4, v12, v11

    add-int v5, v2, v4

    add-int/2addr v4, v3

    .line 7584
    iget v6, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int v7, v2, v6

    add-int/lit8 v8, v3, 0x1

    aget-wide v18, p1, v8

    aput-wide v18, p1, v7

    add-int v7, v3, v6

    .line 7585
    aget-wide v18, p1, v8

    aput-wide v18, p1, v7

    add-int v7, v2, v6

    const/4 v10, 0x1

    add-int/2addr v7, v10

    move v13, v11

    .line 7586
    aget-wide v10, p1, v3

    neg-double v10, v10

    aput-wide v10, p1, v7

    add-int v7, v3, v6

    const/4 v10, 0x1

    add-int/2addr v7, v10

    .line 7587
    aget-wide v10, p1, v3

    aput-wide v10, p1, v7

    add-int v7, v5, v6

    add-int/lit8 v10, v4, 0x1

    .line 7588
    aget-wide v18, p1, v10

    aput-wide v18, p1, v7

    add-int v7, v4, v6

    .line 7589
    aget-wide v18, p1, v10

    aput-wide v18, p1, v7

    add-int v7, v5, v6

    const/4 v11, 0x1

    add-int/2addr v7, v11

    move v15, v12

    .line 7590
    aget-wide v11, p1, v4

    neg-double v11, v11

    aput-wide v11, p1, v7

    add-int/2addr v6, v4

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 7591
    aget-wide v11, p1, v4

    aput-wide v11, p1, v6

    .line 7592
    aget-wide v11, p1, v2

    aput-wide v11, p1, v3

    add-int/2addr v2, v7

    .line 7593
    aget-wide v2, p1, v2

    neg-double v2, v2

    aput-wide v2, p1, v8

    .line 7594
    aget-wide v2, p1, v5

    aput-wide v2, p1, v4

    add-int/2addr v5, v7

    .line 7595
    aget-wide v2, p1, v5

    neg-double v2, v2

    aput-wide v2, p1, v10

    add-int/lit8 v0, v0, 0x1

    move v11, v13

    move v12, v15

    goto :goto_15

    :cond_13
    move v13, v11

    move v15, v12

    const/4 v7, 0x1

    .line 7600
    iget v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-wide v2, p1, v7

    aput-wide v2, p1, v0

    .line 7601
    aput-wide v16, p1, v7

    mul-int v12, v15, v13

    mul-int v13, v1, v14

    add-int v1, v12, v13

    add-int v2, v12, v0

    add-int/2addr v12, v7

    .line 7605
    aget-wide v3, p1, v12

    aput-wide v3, p1, v2

    .line 7606
    aput-wide v16, p1, v12

    add-int v2, v13, v0

    add-int/lit8 v3, v13, 0x1

    .line 7607
    aget-wide v4, p1, v3

    aput-wide v4, p1, v2

    .line 7608
    aput-wide v16, p1, v3

    add-int v2, v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 7609
    aget-wide v4, p1, v3

    aput-wide v4, p1, v2

    .line 7610
    aput-wide v16, p1, v3

    add-int/2addr v13, v0

    const/4 v2, 0x1

    add-int/2addr v13, v2

    .line 7611
    aput-wide v16, p1, v13

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 7612
    aput-wide v16, p1, v1

    return-void
.end method

.method private fillSymmetric([[[D)V
    .locals 18

    move-object/from16 v7, p0

    .line 7229
    const-class v8, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    .line 7230
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v9, v1, 0x2

    .line 7231
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v10, v1, 0x2

    .line 7232
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_6

    .line 7233
    iget-boolean v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_6

    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v1, v11, :cond_6

    .line 7234
    new-array v14, v11, [Ljava/util/concurrent/Future;

    .line 7235
    div-int v15, v1, v11

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_1

    mul-int v3, v6, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v6, v1, :cond_0

    .line 7238
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_1

    :cond_0
    add-int v1, v3, v15

    :goto_1
    move v4, v1

    .line 7239
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$60;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v0

    move/from16 v17, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$60;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 7258
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 7262
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

    .line 7260
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

    .line 7268
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_4

    :cond_2
    add-int v1, v3, v15

    :goto_4
    move v4, v1

    .line 7269
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$61;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v9

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$61;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object v6, v12

    goto :goto_3

    :cond_3
    move-object v12, v6

    .line 7287
    :try_start_1
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 7291
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

    .line 7289
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

    .line 7296
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_7

    :cond_4
    add-int v1, v3, v15

    :goto_7
    move v4, v1

    .line 7297
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$62;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$62;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7313
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

    .line 7317
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

    .line 7315
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_6
    const/4 v1, 0x0

    .line 7322
    :goto_8
    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_9

    sub-int v3, v2, v1

    .line 7323
    rem-int/2addr v3, v2

    const/4 v2, 0x0

    .line 7324
    :goto_9
    iget v4, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v4, :cond_8

    sub-int v5, v4, v2

    .line 7325
    rem-int/2addr v5, v4

    move v4, v13

    .line 7326
    :goto_a
    iget v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v4, v6, :cond_7

    sub-int v6, v0, v4

    .line 7328
    aget-object v8, p1, v3

    aget-object v8, v8, v5

    aget-object v11, p1, v1

    aget-object v11, v11, v2

    add-int/lit8 v12, v4, 0x2

    aget-wide v14, v11, v12

    neg-double v14, v14

    aput-wide v14, v8, v6

    sub-int/2addr v6, v13

    add-int/lit8 v4, v4, 0x1

    .line 7329
    aget-wide v14, v11, v4

    aput-wide v14, v8, v6

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

    .line 7335
    :goto_b
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_b

    sub-int v2, v1, v0

    .line 7336
    rem-int/2addr v2, v1

    move v1, v13

    :goto_c
    if-ge v1, v9, :cond_a

    .line 7338
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v1

    .line 7339
    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v3, v6, v3

    aget-wide v11, v3, v13

    aput-wide v11, v4, v5

    .line 7340
    aget-wide v11, v3, v13

    aput-wide v11, v3, v5

    add-int/lit8 v6, v5, 0x1

    const/4 v8, 0x0

    .line 7341
    aget-wide v11, v3, v8

    neg-double v11, v11

    aput-wide v11, v4, v6

    add-int/2addr v5, v13

    .line 7342
    aget-wide v11, v3, v8

    aput-wide v11, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v8, 0x0

    .line 7346
    :goto_d
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v8, v0, :cond_d

    sub-int v1, v0, v8

    .line 7347
    rem-int/2addr v1, v0

    move v0, v13

    :goto_e
    if-ge v0, v9, :cond_c

    .line 7349
    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v2, v0

    .line 7350
    aget-object v3, p1, v1

    aget-object v2, v3, v2

    aget-object v3, p1, v8

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    aput-wide v5, v2, v4

    .line 7351
    aget-wide v4, v3, v13

    neg-double v3, v4

    aput-wide v3, v2, v13

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

    .line 7358
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    .line 7359
    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v1, p1, v1

    aget-object v6, v1, v3

    aget-wide v11, v6, v13

    aput-wide v11, v4, v5

    .line 7360
    aget-wide v11, v6, v13

    aput-wide v11, v6, v5

    add-int/lit8 v8, v5, 0x1

    .line 7361
    aget-wide v11, v6, v3

    neg-double v11, v11

    aput-wide v11, v4, v8

    add-int/lit8 v8, v5, 0x1

    .line 7362
    aget-wide v11, v6, v3

    aput-wide v11, v6, v8

    .line 7363
    aget-object v2, v2, v9

    aget-object v1, v1, v9

    aget-wide v11, v1, v13

    aput-wide v11, v2, v5

    .line 7364
    aget-wide v11, v1, v13

    aput-wide v11, v1, v5

    add-int/lit8 v8, v5, 0x1

    .line 7365
    aget-wide v11, v1, v3

    neg-double v11, v11

    aput-wide v11, v2, v8

    add-int/2addr v5, v13

    .line 7366
    aget-wide v11, v1, v3

    aput-wide v11, v1, v5

    .line 7367
    aget-wide v11, v4, v3

    aput-wide v11, v6, v3

    .line 7368
    aget-wide v11, v4, v13

    neg-double v4, v11

    aput-wide v4, v6, v13

    .line 7369
    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 7370
    aget-wide v4, v2, v13

    neg-double v4, v4

    aput-wide v4, v1, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    .line 7375
    aget-object v0, p1, v3

    aget-object v1, v0, v3

    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-wide v4, v1, v13

    aput-wide v4, v1, v2

    const-wide/16 v4, 0x0

    .line 7376
    aput-wide v4, v1, v13

    .line 7377
    aget-object v0, v0, v9

    aget-wide v11, v0, v13

    aput-wide v11, v0, v2

    .line 7378
    aput-wide v4, v0, v13

    .line 7379
    aget-object v0, p1, v10

    aget-object v1, v0, v3

    aget-wide v10, v1, v13

    aput-wide v10, v1, v2

    .line 7380
    aput-wide v4, v1, v13

    .line 7381
    aget-object v0, v0, v9

    aget-wide v8, v0, v13

    aput-wide v8, v0, v2

    .line 7382
    aput-wide v4, v0, v13

    add-int/lit8 v3, v2, 0x1

    .line 7383
    aput-wide v4, v1, v3

    add-int/2addr v2, v13

    .line 7384
    aput-wide v4, v0, v2

    return-void
.end method

.method private mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2571
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    mul-long v12, v0, v9

    .line 2572
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2573
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    div-long v3, v1, v9

    const-wide/16 v17, 0x1

    add-long v19, v3, v17

    .line 2575
    rem-long v3, v1, v9

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-nez v3, :cond_0

    .line 2576
    div-long/2addr v1, v9

    goto :goto_0

    :cond_0
    add-long v1, v1, v17

    .line 2578
    div-long/2addr v1, v9

    :goto_0
    move-wide/from16 v23, v1

    .line 2581
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v25, v1, v9

    .line 2582
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v27, v1, v9

    .line 2583
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v29, v1, v9

    .line 2584
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-le v11, v1, :cond_d

    .line 2585
    iget-boolean v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    int-to-long v5, v11

    cmp-long v1, v29, v5

    if-ltz v1, :cond_d

    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_d

    cmp-long v1, v19, v5

    if-ltz v1, :cond_d

    .line 2586
    new-array v9, v11, [Ljava/util/concurrent/Future;

    .line 2587
    div-long v21, v29, v5

    move v0, v7

    :goto_1
    if-ge v0, v11, :cond_2

    .line 2589
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

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

    .line 2591
    new-instance v35, Lorg/jtransforms/fft/DoubleFFT_3D$33;

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

    invoke-direct/range {v1 .. v13}, Lorg/jtransforms/fft/DoubleFFT_3D$33;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

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

    .line 2609
    :try_start_0
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2613
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

    .line 2611
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2616
    :goto_3
    new-instance v12, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v29, v29, v17

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v0, v0, v29

    mul-long v0, v0, v32

    invoke-direct {v12, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

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

    .line 2621
    :goto_5
    new-instance v11, Lorg/jtransforms/fft/DoubleFFT_3D$34;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v8, v12

    move-wide/from16 v9, v32

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/fft/DoubleFFT_3D$34;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    invoke-static {v11}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2636
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

    .line 2640
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

    .line 2638
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

    .line 2646
    :goto_8
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$35;

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

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/DoubleFFT_3D$35;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

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

    .line 2660
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

    .line 2664
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

    .line 2662
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 2667
    :goto_a
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v17, v0, v36

    move/from16 v14, v39

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v14, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_7

    .line 2670
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_c

    :cond_7
    add-long v1, v3, v17

    :goto_c
    move-wide v5, v1

    .line 2671
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_3D$36;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_3D$36;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2700
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

    .line 2704
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

    .line 2702
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2707
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

    .line 2711
    :goto_f
    new-instance v12, Lorg/jtransforms/fft/DoubleFFT_3D$37;

    move-object v1, v12

    move-object/from16 v2, p0

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_3D$37;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2740
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

    .line 2744
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

    .line 2742
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2746
    :goto_10
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v17, v0, v36

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_c

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v11, v14, -0x1

    if-ne v0, v11, :cond_b

    .line 2749
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_12

    :cond_b
    add-long v1, v3, v17

    :goto_12
    move-wide v5, v1

    .line 2750
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_3D$38;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    move/from16 v20, v14

    move-wide/from16 v13, v32

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v15}, Lorg/jtransforms/fft/DoubleFFT_3D$38;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, p0

    move/from16 v14, v20

    const/4 v13, 0x0

    goto :goto_11

    .line 2777
    :cond_c
    :try_start_5
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_20

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 2781
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    .line 2779
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_d
    move-wide/from16 v32, v12

    move-object/from16 v11, p0

    .line 2785
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    move-wide v12, v1

    :goto_13
    cmp-long v1, v12, v21

    if-ltz v1, :cond_f

    .line 2786
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v14, v12, v1

    mul-long v29, v12, v25

    .line 2788
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long v1, v1, v17

    move-wide/from16 v34, v1

    :goto_14
    cmp-long v1, v34, v21

    if-ltz v1, :cond_e

    .line 2789
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v1, v1, v34

    add-long v2, v14, v1

    const-wide/16 v5, 0x0

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    move-object/from16 v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    .line 2790
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    mul-long v1, v34, v27

    add-long v5, v29, v1

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move-wide/from16 v7, v32

    .line 2791
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    sub-long v34, v34, v17

    goto :goto_14

    :cond_e
    sub-long v12, v12, v17

    goto :goto_13

    .line 2795
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v1, v9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    .line 2797
    :goto_15
    iget-wide v4, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_13

    mul-long v4, v1, v25

    move-wide/from16 v6, v21

    .line 2799
    :goto_16
    iget-wide v12, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_12

    mul-long v12, v6, v9

    move-wide/from16 v29, v4

    move-wide/from16 v14, v21

    .line 2801
    :goto_17
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_10

    mul-long v3, v14, v9

    mul-long v34, v14, v27

    add-long v34, v29, v34

    add-long v9, v34, v12

    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    .line 2804
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 2805
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v17

    move-wide/from16 v1, v34

    const-wide/16 v9, 0x2

    goto :goto_17

    :cond_10
    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    .line 2807
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    move-wide/from16 v1, v21

    .line 2808
    :goto_18
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_11

    const-wide/16 v3, 0x2

    mul-long v9, v1, v3

    mul-long v3, v1, v27

    add-long v3, v29, v3

    add-long/2addr v3, v12

    .line 2811
    invoke-virtual {v0, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v5, v3, v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 2812
    invoke-virtual {v0, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v5, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v1, v17

    goto :goto_18

    :cond_11
    add-long v6, v6, v17

    move-wide/from16 v4, v29

    move-wide/from16 v1, v34

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_16

    :cond_12
    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    add-long v1, v34, v17

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto/16 :goto_15

    :cond_13
    move-object/from16 v5, p1

    .line 2817
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    :goto_19
    cmp-long v6, v1, v19

    if-gez v6, :cond_17

    mul-long v6, v1, v27

    move-wide/from16 v8, v21

    .line 2821
    :goto_1a
    iget-wide v12, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v10, v8, v12

    if-gez v10, :cond_16

    mul-long v12, v8, v3

    move-wide/from16 v14, v21

    .line 2823
    :goto_1b
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_14

    move-wide/from16 v29, v1

    const-wide/16 v3, 0x2

    mul-long v1, v14, v3

    mul-long v3, v14, v25

    add-long/2addr v3, v6

    add-long/2addr v3, v12

    move-wide/from16 v34, v8

    .line 2826
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v0, v1, v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v1, v17

    add-long v3, v3, v17

    .line 2827
    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v17

    move-wide/from16 v1, v29

    move-wide/from16 v8, v34

    goto :goto_1b

    :cond_14
    move-wide/from16 v29, v1

    move-wide/from16 v34, v8

    .line 2829
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    move-wide/from16 v1, v21

    .line 2830
    :goto_1c
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_15

    const-wide/16 v3, 0x2

    mul-long v9, v1, v3

    mul-long v3, v1, v25

    add-long/2addr v3, v6

    add-long/2addr v3, v12

    .line 2833
    invoke-virtual {v0, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v5, v3, v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 2834
    invoke-virtual {v0, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v5, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v1, v17

    goto :goto_1c

    :cond_15
    add-long v8, v34, v17

    move-wide/from16 v1, v29

    const-wide/16 v3, 0x2

    goto :goto_1a

    :cond_16
    move-wide/from16 v29, v1

    add-long v1, v29, v17

    const-wide/16 v3, 0x2

    goto :goto_19

    :cond_17
    move-wide/from16 v0, v21

    .line 2839
    :goto_1d
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    sub-long v6, v2, v0

    .line 2840
    rem-long/2addr v6, v2

    mul-long v6, v6, v25

    mul-long v2, v0, v25

    move-wide/from16 v8, v17

    :goto_1e
    cmp-long v4, v8, v23

    if-gez v4, :cond_19

    .line 2844
    iget-wide v12, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v12, v8

    mul-long v12, v12, v27

    mul-long v14, v8, v27

    add-long/2addr v12, v6

    move-wide/from16 v29, v6

    move-wide/from16 v19, v21

    .line 2848
    :goto_1f
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v4, v19, v6

    if-gez v4, :cond_18

    const-wide/16 v6, 0x2

    mul-long v34, v19, v6

    sub-long v36, v32, v34

    add-long v38, v2, v14

    add-long v6, v38, v34

    .line 2852
    rem-long v34, v36, v32

    move-wide/from16 v38, v2

    add-long v2, v12, v34

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v5, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v36, v36, v17

    .line 2853
    rem-long v36, v36, v32

    add-long v2, v12, v36

    add-long v6, v6, v17

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v19, v19, v17

    move-object/from16 v11, p0

    move-wide/from16 v2, v38

    goto :goto_1f

    :cond_18
    move-wide/from16 v38, v2

    add-long v8, v8, v17

    move-object/from16 v11, p0

    move-wide/from16 v6, v29

    goto :goto_1e

    :cond_19
    add-long v0, v0, v17

    move-object/from16 v11, p0

    goto :goto_1d

    :cond_1a
    :goto_20
    return-void
.end method

.method private mixedRadixRealForwardFull([D)V
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2279
    const-class v12, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v9, 0x2

    mul-int/lit8 v13, v0, 0x2

    .line 2280
    new-array v0, v13, [D

    .line 2281
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v1, 0x2

    const/4 v14, 0x1

    add-int/lit8 v15, v2, 0x1

    .line 2283
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 2284
    div-int/2addr v1, v9

    goto :goto_0

    :cond_0
    add-int/2addr v1, v14

    .line 2286
    div-int/2addr v1, v9

    :goto_0
    move v8, v1

    .line 2289
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v16, v1, 0x2

    .line 2290
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/lit8 v17, v1, 0x2

    .line 2291
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v7, v1, 0x2

    .line 2292
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v6

    const/4 v5, 0x0

    if-le v6, v14, :cond_d

    .line 2293
    iget-boolean v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    if-lt v7, v6, :cond_d

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v1, v6, :cond_d

    if-lt v15, v6, :cond_d

    .line 2294
    new-array v4, v6, [Ljava/util/concurrent/Future;

    .line 2295
    div-int v18, v7, v6

    move v0, v5

    :goto_1
    if-ge v0, v6, :cond_2

    .line 2297
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

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

    .line 2299
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_3D$27;

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

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$27;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DI)V

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

    .line 2317
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2321
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

    .line 2319
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 2324
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v13, v1, v9

    aput v0, v1, v14

    const/4 v14, 0x0

    aput v19, v1, v14

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [[[D

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

    .line 2329
    :goto_5
    new-instance v7, Lorg/jtransforms/fft/DoubleFFT_3D$28;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$28;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[D[[[D)V

    invoke-static {v7}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2344
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

    .line 2348
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

    .line 2346
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

    .line 2354
    :goto_8
    new-instance v23, Lorg/jtransforms/fft/DoubleFFT_3D$29;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v5, v16

    move-object/from16 v6, v21

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, v17

    move/from16 v25, v9

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$29;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D[DII)V

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

    .line 2368
    :try_start_2
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2372
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

    .line 2370
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2375
    :goto_9
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    move/from16 v9, v25

    div-int/2addr v0, v9

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v9, :cond_8

    mul-int v3, v8, v0

    add-int/lit8 v6, v9, -0x1

    if-ne v8, v6, :cond_7

    .line 2378
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2379
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$30;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$30;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 2408
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

    .line 2412
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

    .line 2410
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2415
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

    .line 2419
    :goto_e
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$31;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$31;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 2448
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

    .line 2452
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

    .line 2450
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2454
    :goto_f
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/2addr v0, v9

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v9, :cond_c

    mul-int v3, v15, v0

    add-int/lit8 v6, v9, -0x1

    if-ne v15, v6, :cond_b

    .line 2457
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_11

    :cond_b
    add-int v1, v3, v0

    :goto_11
    move v4, v1

    .line 2458
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$32;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move v8, v13

    move/from16 v19, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$32;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIIII[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    goto :goto_10

    .line 2485
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

    .line 2489
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

    .line 2487
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

    .line 2493
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v2, v14

    :goto_12
    if-ltz v2, :cond_f

    .line 2494
    iget v3, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    mul-int v4, v2, v16

    .line 2496
    iget v5, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v14

    :goto_13
    if-ltz v5, :cond_e

    .line 2497
    iget v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    invoke-static {v11, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2498
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    mul-int v6, v5, v17

    add-int/2addr v6, v4

    .line 2499
    invoke-static {v0, v1, v11, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 2503
    :cond_f
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v0, v9

    new-array v0, v0, [D

    move v5, v1

    .line 2505
    :goto_14
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v2, :cond_13

    mul-int v2, v5, v16

    move v3, v1

    .line 2507
    :goto_15
    iget v4, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_12

    mul-int/lit8 v4, v3, 0x2

    move v6, v1

    .line 2509
    :goto_16
    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v7, :cond_10

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v17

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2512
    aget-wide v18, v11, v8

    aput-wide v18, v0, v7

    add-int/2addr v7, v14

    add-int/2addr v8, v14

    .line 2513
    aget-wide v18, v11, v8

    aput-wide v18, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 2515
    :cond_10
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v1

    .line 2516
    :goto_17
    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v7, :cond_11

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v17

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2519
    aget-wide v18, v0, v7

    aput-wide v18, v11, v8

    add-int/2addr v8, v14

    add-int/2addr v7, v14

    .line 2520
    aget-wide v18, v0, v7

    aput-wide v18, v11, v8

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

    .line 2525
    new-array v0, v2, [D

    move v5, v1

    :goto_18
    if-ge v5, v15, :cond_17

    mul-int v2, v5, v17

    move v3, v1

    .line 2529
    :goto_19
    iget v4, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_16

    mul-int/lit8 v4, v3, 0x2

    move v6, v1

    .line 2531
    :goto_1a
    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v7, :cond_14

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v16

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2534
    aget-wide v18, v11, v8

    aput-wide v18, v0, v7

    add-int/2addr v7, v14

    add-int/2addr v8, v14

    .line 2535
    aget-wide v8, v11, v8

    aput-wide v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2537
    :cond_14
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v1

    .line 2538
    :goto_1b
    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v7, :cond_15

    mul-int/lit8 v7, v6, 0x2

    mul-int v8, v6, v16

    add-int/2addr v8, v2

    add-int/2addr v8, v4

    .line 2541
    aget-wide v18, v0, v7

    aput-wide v18, v11, v8

    add-int/2addr v8, v14

    add-int/2addr v7, v14

    .line 2542
    aget-wide v18, v0, v7

    aput-wide v18, v11, v8

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

    .line 2547
    :goto_1c
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v0, :cond_1a

    sub-int v2, v0, v5

    .line 2548
    rem-int/2addr v2, v0

    mul-int v2, v2, v16

    mul-int v0, v5, v16

    move v3, v14

    move/from16 v4, v20

    :goto_1d
    if-ge v3, v4, :cond_19

    .line 2552
    iget v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v6, v3

    mul-int v6, v6, v17

    mul-int v7, v3, v17

    add-int/2addr v6, v2

    move v8, v1

    .line 2556
    :goto_1e
    iget v9, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v8, v9, :cond_18

    mul-int/lit8 v9, v8, 0x2

    sub-int v12, v13, v9

    add-int v15, v0, v7

    add-int/2addr v15, v9

    .line 2560
    rem-int v9, v12, v13

    add-int/2addr v9, v6

    aget-wide v18, v11, v15

    aput-wide v18, v11, v9

    add-int/2addr v12, v14

    .line 2561
    rem-int/2addr v12, v13

    add-int/2addr v12, v6

    add-int/2addr v15, v14

    move v9, v2

    aget-wide v1, v11, v15

    neg-double v1, v1

    aput-wide v1, v11, v12

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    const/4 v1, 0x0

    goto :goto_1e

    :cond_18
    move v9, v2

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_1d

    :cond_19
    add-int/lit8 v5, v5, 0x1

    move/from16 v20, v4

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1a
    :goto_1f
    return-void
.end method

.method private mixedRadixRealForwardFull([[[D)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1868
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    .line 1869
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1870
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v11, v4, 0x2

    .line 1872
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    .line 1873
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    .line 1875
    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v12, v0

    .line 1878
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    const/4 v4, 0x0

    if-le v13, v3, :cond_9

    .line 1879
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v13, :cond_9

    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v5, v13, :cond_9

    if-lt v2, v13, :cond_9

    .line 1880
    new-array v14, v13, [Ljava/util/concurrent/Future;

    .line 1881
    div-int v1, v0, v13

    move v0, v4

    :goto_1
    if-ge v0, v13, :cond_2

    mul-int v3, v0, v1

    add-int/lit8 v5, v13, -0x1

    if-ne v0, v5, :cond_1

    .line 1884
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_1
    add-int v5, v3, v1

    .line 1886
    :goto_2
    new-instance v6, Lorg/jtransforms/fft/DoubleFFT_3D$19;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_3D$19;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 1899
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1903
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

    .line 1901
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

    .line 1908
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_3
    add-int v5, v3, v1

    .line 1910
    :goto_5
    new-instance v6, Lorg/jtransforms/fft/DoubleFFT_3D$20;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_3D$20;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1936
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

    .line 1940
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

    .line 1938
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1943
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

    .line 1948
    :goto_8
    new-instance v6, Lorg/jtransforms/fft/DoubleFFT_3D$21;

    invoke-direct {v6, v8, v3, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_3D$21;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v6}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1974
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

    .line 1978
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

    .line 1976
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1980
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/2addr v0, v13

    move v7, v4

    :goto_a
    if-ge v7, v13, :cond_8

    mul-int v3, v7, v0

    add-int/lit8 v1, v13, -0x1

    if-ne v7, v1, :cond_7

    .line 1983
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 1985
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$22;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move v6, v11

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$22;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v17

    add-int/lit8 v7, v17, 0x1

    goto :goto_a

    .line 2006
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

    .line 2010
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

    .line 2008
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_9
    move v0, v4

    .line 2014
    :goto_c
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v5, :cond_b

    move v5, v4

    .line 2015
    :goto_d
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v6, :cond_a

    .line 2016
    iget-object v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v7, v9, v0

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v4

    .line 2020
    :goto_e
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v5, :cond_f

    move v5, v4

    .line 2021
    :goto_f
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_e

    mul-int/lit8 v6, v5, 0x2

    move v7, v4

    .line 2023
    :goto_10
    iget v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v7, v10, :cond_c

    mul-int/lit8 v10, v7, 0x2

    .line 2025
    aget-object v13, v9, v0

    aget-object v13, v13, v7

    aget-wide v14, v13, v6

    aput-wide v14, v1, v10

    add-int/2addr v10, v3

    add-int/lit8 v14, v6, 0x1

    .line 2026
    aget-wide v14, v13, v14

    aput-wide v14, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 2028
    :cond_c
    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v7, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v7, v4

    .line 2029
    :goto_11
    iget v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v7, v10, :cond_d

    mul-int/lit8 v10, v7, 0x2

    .line 2031
    aget-object v13, v9, v0

    aget-object v13, v13, v7

    aget-wide v14, v1, v10

    aput-wide v14, v13, v6

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v10, v3

    .line 2032
    aget-wide v15, v1, v10

    aput-wide v15, v13, v14

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

    .line 2037
    new-array v0, v5, [D

    move v1, v4

    :goto_12
    if-ge v1, v2, :cond_13

    move v5, v4

    .line 2040
    :goto_13
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_12

    mul-int/lit8 v6, v5, 0x2

    move v7, v4

    .line 2042
    :goto_14
    iget v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v7, v10, :cond_10

    mul-int/lit8 v10, v7, 0x2

    .line 2044
    aget-object v13, v9, v7

    aget-object v13, v13, v1

    aget-wide v14, v13, v6

    aput-wide v14, v0, v10

    add-int/2addr v10, v3

    add-int/lit8 v14, v6, 0x1

    .line 2045
    aget-wide v14, v13, v14

    aput-wide v14, v0, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 2047
    :cond_10
    iget-object v7, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v7, v4

    .line 2048
    :goto_15
    iget v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v7, v10, :cond_11

    mul-int/lit8 v10, v7, 0x2

    .line 2050
    aget-object v13, v9, v7

    aget-object v13, v13, v1

    aget-wide v14, v0, v10

    aput-wide v14, v13, v6

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v10, v3

    .line 2051
    aget-wide v15, v0, v10

    aput-wide v15, v13, v14

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

    .line 2056
    :goto_16
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_16

    sub-int v2, v1, v0

    .line 2057
    rem-int/2addr v2, v1

    move v1, v3

    :goto_17
    if-ge v1, v12, :cond_15

    .line 2059
    iget v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v1

    move v6, v4

    .line 2060
    :goto_18
    iget v7, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v6, v7, :cond_14

    mul-int/lit8 v7, v6, 0x2

    sub-int v10, v11, v7

    .line 2063
    aget-object v13, v9, v2

    aget-object v13, v13, v5

    rem-int v14, v10, v11

    aget-object v15, v9, v0

    aget-object v15, v15, v1

    aget-wide v16, v15, v7

    aput-wide v16, v13, v14

    add-int/2addr v10, v3

    .line 2064
    rem-int/2addr v10, v11

    add-int/2addr v7, v3

    aget-wide v14, v15, v7

    neg-double v14, v14

    aput-wide v14, v13, v10

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

.method private mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 42

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    .line 3157
    const-class v16, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    mul-long v11, v0, v9

    .line 3158
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v0, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 3159
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    div-long v3, v1, v9

    const-wide/16 v17, 0x1

    add-long v19, v3, v17

    .line 3161
    rem-long v3, v1, v9

    const-wide/16 v21, 0x0

    cmp-long v3, v3, v21

    if-nez v3, :cond_0

    .line 3162
    div-long/2addr v1, v9

    goto :goto_0

    :cond_0
    add-long v1, v1, v17

    .line 3164
    div-long/2addr v1, v9

    :goto_0
    move-wide/from16 v23, v1

    .line 3167
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v25, v1, v9

    .line 3168
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v27, v1, v9

    .line 3169
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v29, v1, v9

    .line 3171
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v7

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-le v7, v1, :cond_d

    .line 3172
    iget-boolean v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    int-to-long v5, v7

    cmp-long v1, v29, v5

    if-ltz v1, :cond_d

    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_d

    cmp-long v1, v19, v5

    if-ltz v1, :cond_d

    .line 3173
    new-array v9, v7, [Ljava/util/concurrent/Future;

    .line 3174
    div-long v21, v29, v5

    move v0, v8

    :goto_1
    if-ge v0, v7, :cond_2

    .line 3176
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

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

    .line 3178
    new-instance v35, Lorg/jtransforms/fft/DoubleFFT_3D$45;

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

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/DoubleFFT_3D$45;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;ZJ)V

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

    .line 3196
    :try_start_0
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3200
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

    .line 3198
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3203
    :goto_3
    new-instance v14, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v29, v29, v17

    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v0, v0, v29

    mul-long v0, v0, v32

    invoke-direct {v14, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

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

    .line 3208
    :goto_5
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$46;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v8, v14

    move-wide/from16 v9, v32

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lorg/jtransforms/fft/DoubleFFT_3D$46;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3223
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

    .line 3227
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

    .line 3225
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

    .line 3233
    :goto_8
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$47;

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

    invoke-direct/range {v1 .. v14}, Lorg/jtransforms/fft/DoubleFFT_3D$47;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

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

    .line 3247
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

    .line 3251
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

    .line 3249
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3254
    :goto_a
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v17, v0, v36

    move/from16 v14, v40

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v14, :cond_8

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v7, v14, -0x1

    if-ne v0, v7, :cond_7

    .line 3257
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_c

    :cond_7
    add-long v1, v3, v17

    :goto_c
    move-wide v5, v1

    .line 3258
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_3D$48;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v27

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_3D$48;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3287
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

    .line 3291
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

    .line 3289
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3294
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

    .line 3298
    :goto_f
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_3D$49;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_3D$49;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v21 .. v21}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3327
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

    .line 3331
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

    .line 3329
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3334
    :goto_10
    iget-wide v0, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    div-long v17, v0, v36

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v14, :cond_c

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v7, v14, -0x1

    if-ne v0, v7, :cond_b

    .line 3337
    iget-wide v1, v15, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_12

    :cond_b
    add-long v1, v3, v17

    :goto_12
    move-wide v5, v1

    .line 3338
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_3D$50;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-wide/from16 v7, v25

    move-wide/from16 v9, v23

    move-wide/from16 v11, v27

    move/from16 v20, v14

    move-wide/from16 v13, v32

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v15}, Lorg/jtransforms/fft/DoubleFFT_3D$50;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v31, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, p0

    move/from16 v14, v20

    const/4 v13, 0x0

    goto :goto_11

    .line 3365
    :cond_c
    :try_start_5
    invoke-static/range {v31 .. v31}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_20

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 3369
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    .line 3367
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_d
    move-wide/from16 v32, v11

    move-object/from16 v11, p0

    .line 3373
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    sub-long v1, v1, v17

    move-wide v12, v1

    :goto_13
    cmp-long v1, v12, v21

    if-ltz v1, :cond_f

    .line 3374
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v14, v12, v1

    mul-long v29, v12, v25

    .line 3376
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long v1, v1, v17

    move-wide/from16 v34, v1

    :goto_14
    cmp-long v1, v34, v21

    if-ltz v1, :cond_e

    .line 3377
    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v1, v1, v34

    add-long v2, v14, v1

    const-wide/16 v5, 0x0

    iget-wide v7, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    move-object/from16 v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    .line 3378
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v7, p2

    invoke-virtual {v1, v0, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    mul-long v1, v34, v27

    add-long v5, v29, v1

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object/from16 v4, p1

    move-wide/from16 v7, v32

    .line 3379
    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    sub-long v34, v34, v17

    goto :goto_14

    :cond_e
    sub-long v12, v12, v17

    goto :goto_13

    .line 3383
    :cond_f
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v1, v9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    move-wide/from16 v1, v21

    .line 3385
    :goto_15
    iget-wide v4, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_13

    mul-long v4, v1, v25

    move-wide/from16 v6, v21

    .line 3387
    :goto_16
    iget-wide v12, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_12

    mul-long v12, v6, v9

    move-wide/from16 v29, v4

    move-wide/from16 v14, v21

    .line 3389
    :goto_17
    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v3, v14, v3

    if-gez v3, :cond_10

    mul-long v3, v14, v9

    mul-long v34, v14, v27

    add-long v34, v29, v34

    add-long v9, v34, v12

    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    .line 3392
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    add-long v9, v9, v17

    .line 3393
    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v17

    move-wide/from16 v1, v34

    const-wide/16 v9, 0x2

    goto :goto_17

    :cond_10
    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    .line 3395
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    move-wide/from16 v3, v21

    .line 3396
    :goto_18
    iget-wide v8, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v1, v3, v8

    if-gez v1, :cond_11

    const-wide/16 v8, 0x2

    mul-long v14, v3, v8

    mul-long v8, v3, v27

    add-long v8, v29, v8

    add-long/2addr v8, v12

    move-wide/from16 v40, v12

    .line 3399
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v5, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v17

    add-long v14, v14, v17

    .line 3400
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v5, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    move-wide/from16 v12, v40

    goto :goto_18

    :cond_11
    add-long v6, v6, v17

    move-wide/from16 v4, v29

    move-wide/from16 v1, v34

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto :goto_16

    :cond_12
    move-object/from16 v5, p1

    move-wide/from16 v34, v1

    move/from16 v2, p2

    add-long v3, v34, v17

    move-wide v1, v3

    const/4 v3, 0x0

    const-wide/16 v9, 0x2

    goto/16 :goto_15

    :cond_13
    move-object/from16 v5, p1

    move/from16 v2, p2

    .line 3405
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v3, v6

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    move-wide/from16 v3, v21

    :goto_19
    cmp-long v1, v3, v19

    if-gez v1, :cond_17

    mul-long v8, v3, v27

    move-wide/from16 v12, v21

    .line 3409
    :goto_1a
    iget-wide v14, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v1, v12, v14

    if-gez v1, :cond_16

    mul-long v14, v12, v6

    move-wide/from16 v29, v21

    .line 3411
    :goto_1b
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v1, v29, v6

    if-gez v1, :cond_14

    move-wide/from16 v34, v3

    const-wide/16 v6, 0x2

    mul-long v3, v29, v6

    mul-long v6, v29, v25

    add-long/2addr v6, v8

    add-long/2addr v6, v14

    move-wide/from16 v38, v12

    .line 3414
    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v0, v3, v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    add-long v6, v6, v17

    .line 3415
    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v0, v3, v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v29, v29, v17

    move-wide/from16 v3, v34

    move-wide/from16 v12, v38

    goto :goto_1b

    :cond_14
    move-wide/from16 v34, v3

    move-wide/from16 v38, v12

    .line 3417
    iget-object v1, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    move-wide/from16 v3, v21

    .line 3418
    :goto_1c
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v1, v3, v6

    if-gez v1, :cond_15

    const-wide/16 v6, 0x2

    mul-long v12, v3, v6

    mul-long v6, v3, v25

    add-long/2addr v6, v8

    add-long/2addr v6, v14

    .line 3421
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v5, v6, v7, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v17

    add-long v12, v12, v17

    .line 3422
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v5, v6, v7, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v17

    move/from16 v2, p2

    goto :goto_1c

    :cond_15
    add-long v12, v38, v17

    move/from16 v2, p2

    move-wide/from16 v3, v34

    const-wide/16 v6, 0x2

    goto :goto_1a

    :cond_16
    move-wide/from16 v34, v3

    add-long v3, v34, v17

    move/from16 v2, p2

    const-wide/16 v6, 0x2

    goto :goto_19

    :cond_17
    move-wide/from16 v0, v21

    .line 3427
    :goto_1d
    iget-wide v2, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    sub-long v6, v2, v0

    .line 3428
    rem-long/2addr v6, v2

    mul-long v6, v6, v25

    mul-long v2, v0, v25

    move-wide/from16 v8, v17

    :goto_1e
    cmp-long v4, v8, v23

    if-gez v4, :cond_19

    .line 3432
    iget-wide v12, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v12, v8

    mul-long v12, v12, v27

    mul-long v14, v8, v27

    add-long/2addr v12, v6

    move-wide/from16 v29, v6

    move-wide/from16 v19, v21

    .line 3436
    :goto_1f
    iget-wide v6, v11, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v4, v19, v6

    if-gez v4, :cond_18

    const-wide/16 v6, 0x2

    mul-long v34, v19, v6

    sub-long v36, v32, v34

    add-long v38, v2, v14

    add-long v6, v38, v34

    .line 3440
    rem-long v34, v36, v32

    move-wide/from16 v38, v2

    add-long v2, v12, v34

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v5, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v36, v36, v17

    .line 3441
    rem-long v36, v36, v32

    add-long v2, v12, v36

    add-long v6, v6, v17

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v5, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v19, v19, v17

    move-object/from16 v11, p0

    move-wide/from16 v2, v38

    goto :goto_1f

    :cond_18
    move-wide/from16 v38, v2

    add-long v8, v8, v17

    move-object/from16 v11, p0

    move-wide/from16 v6, v29

    goto :goto_1e

    :cond_19
    add-long v0, v0, v17

    move-object/from16 v11, p0

    goto :goto_1d

    :cond_1a
    :goto_20
    return-void
.end method

.method private mixedRadixRealInverseFull([DZ)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    .line 2863
    const-class v13, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v14, 0x2

    mul-int/lit8 v15, v0, 0x2

    .line 2864
    new-array v0, v15, [D

    .line 2865
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v1, 0x2

    const/4 v9, 0x1

    add-int/lit8 v8, v2, 0x1

    .line 2867
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 2868
    div-int/2addr v1, v14

    goto :goto_0

    :cond_0
    add-int/2addr v1, v9

    .line 2870
    div-int/2addr v1, v14

    :goto_0
    move v7, v1

    .line 2873
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v16, v1, 0x2

    .line 2874
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/lit8 v17, v1, 0x2

    .line 2875
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v6, v1, 0x2

    .line 2877
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    const/4 v4, 0x0

    if-le v5, v9, :cond_d

    .line 2878
    iget-boolean v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_d

    if-lt v6, v5, :cond_d

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v1, v5, :cond_d

    if-lt v8, v5, :cond_d

    .line 2879
    new-array v3, v5, [Ljava/util/concurrent/Future;

    .line 2880
    div-int v18, v6, v5

    move v0, v4

    :goto_1
    if-ge v0, v5, :cond_2

    .line 2882
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

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

    .line 2884
    new-instance v21, Lorg/jtransforms/fft/DoubleFFT_3D$39;

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

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$39;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DZI)V

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

    .line 2902
    :try_start_0
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2906
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

    .line 2904
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 2909
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v15, v1, v14

    aput v0, v1, v26

    const/4 v14, 0x0

    aput v19, v1, v14

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [[[D

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

    .line 2914
    :goto_5
    new-instance v23, Lorg/jtransforms/fft/DoubleFFT_3D$40;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$40;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[D[[[DZ)V

    invoke-static/range {v23 .. v23}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2929
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

    .line 2933
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

    .line 2931
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

    .line 2939
    :goto_8
    new-instance v23, Lorg/jtransforms/fft/DoubleFFT_3D$41;

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move/from16 v5, v16

    move-object/from16 v6, v21

    move-object/from16 v7, p1

    move v14, v8

    move/from16 v8, v17

    move-object v12, v9

    move v9, v15

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$41;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;III[[[D[DII)V

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

    .line 2953
    :try_start_2
    invoke-static/range {v22 .. v22}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 2957
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

    .line 2955
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2960
    :goto_9
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/2addr v0, v14

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v14, :cond_8

    mul-int v3, v9, v0

    add-int/lit8 v5, v14, -0x1

    if-ne v9, v5, :cond_7

    .line 2963
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2964
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$42;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$42;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2993
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

    .line 2997
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

    .line 2995
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 3000
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

    .line 3004
    :goto_f
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$43;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v16

    move-object/from16 v7, p1

    move/from16 v19, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$43;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v19

    add-int/lit8 v8, v19, 0x1

    goto :goto_e

    .line 3033
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

    .line 3037
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

    .line 3035
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3040
    :goto_10
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/2addr v0, v14

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v14, :cond_c

    mul-int v3, v9, v0

    add-int/lit8 v5, v14, -0x1

    if-ne v9, v5, :cond_b

    .line 3043
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_12

    :cond_b
    add-int v1, v3, v0

    :goto_12
    move v4, v1

    .line 3044
    new-instance v18, Lorg/jtransforms/fft/DoubleFFT_3D$44;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v5, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move v8, v15

    move/from16 v24, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$44;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIIII[D)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v22, v24

    add-int/lit8 v9, v24, 0x1

    goto :goto_11

    .line 3071
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

    .line 3075
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

    .line 3073
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

    .line 3079
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_f

    .line 3080
    iget v3, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    mul-int v4, v2, v16

    .line 3082
    iget v5, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    add-int/lit8 v5, v5, -0x1

    :goto_14
    if-ltz v5, :cond_e

    .line 3083
    iget v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    iget v7, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    invoke-static {v11, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3084
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v7, p2

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    mul-int v6, v5, v17

    add-int/2addr v6, v4

    .line 3085
    invoke-static {v0, v1, v11, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_e
    move/from16 v7, p2

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_f
    move/from16 v7, p2

    .line 3089
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v0, v14

    new-array v0, v0, [D

    move v4, v1

    .line 3091
    :goto_15
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v2, :cond_13

    mul-int v2, v4, v16

    move v3, v1

    .line 3093
    :goto_16
    iget v5, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v5, :cond_12

    mul-int/lit8 v5, v3, 0x2

    move v6, v1

    .line 3095
    :goto_17
    iget v8, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v8, :cond_10

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v17

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3098
    aget-wide v18, v11, v12

    aput-wide v18, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3099
    aget-wide v12, v11, v12

    aput-wide v12, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 3101
    :cond_10
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v1

    .line 3102
    :goto_18
    iget v8, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v8, :cond_11

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v17

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3105
    aget-wide v18, v0, v8

    aput-wide v18, v11, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 3106
    aget-wide v18, v0, v8

    aput-wide v18, v11, v12

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

    .line 3111
    new-array v0, v2, [D

    move v4, v1

    :goto_19
    if-ge v4, v9, :cond_17

    mul-int v2, v4, v17

    move v3, v1

    .line 3115
    :goto_1a
    iget v5, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v5, :cond_16

    mul-int/lit8 v5, v3, 0x2

    move v6, v1

    .line 3117
    :goto_1b
    iget v8, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v8, :cond_14

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v16

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3120
    aget-wide v13, v11, v12

    aput-wide v13, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3121
    aget-wide v12, v11, v12

    aput-wide v12, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 3123
    :cond_14
    iget-object v6, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v1

    .line 3124
    :goto_1c
    iget v8, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v8, :cond_15

    mul-int/lit8 v8, v6, 0x2

    mul-int v12, v6, v16

    add-int/2addr v12, v2

    add-int/2addr v12, v5

    .line 3127
    aget-wide v13, v0, v8

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 3128
    aget-wide v13, v0, v8

    aput-wide v13, v11, v12

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

    .line 3133
    :goto_1d
    iget v0, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v0, :cond_1a

    sub-int v2, v0, v4

    .line 3134
    rem-int/2addr v2, v0

    mul-int v2, v2, v16

    mul-int v0, v4, v16

    move/from16 v3, v20

    move/from16 v9, v26

    :goto_1e
    if-ge v9, v3, :cond_19

    .line 3138
    iget v5, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v9

    mul-int v5, v5, v17

    mul-int v6, v9, v17

    add-int/2addr v5, v2

    move v7, v1

    .line 3142
    :goto_1f
    iget v8, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v7, v8, :cond_18

    mul-int/lit8 v8, v7, 0x2

    sub-int v12, v15, v8

    add-int v13, v0, v6

    add-int/2addr v13, v8

    .line 3146
    rem-int v8, v12, v15

    add-int/2addr v8, v5

    aget-wide v18, v11, v13

    aput-wide v18, v11, v8

    add-int/lit8 v12, v12, 0x1

    .line 3147
    rem-int/2addr v12, v15

    add-int/2addr v12, v5

    add-int/lit8 v13, v13, 0x1

    aget-wide v13, v11, v13

    neg-double v13, v13

    aput-wide v13, v11, v12

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

.method private mixedRadixRealInverseFull([[[DZ)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v7, p2

    .line 2074
    const-class v9, Lorg/jtransforms/fft/DoubleFFT_3D;

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    .line 2075
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    add-int/lit8 v10, v2, 0x1

    .line 2076
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v11, v2, 0x2

    .line 2078
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 2079
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    .line 2081
    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v12, v0

    .line 2084
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    if-le v13, v3, :cond_9

    .line 2085
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v13, :cond_9

    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v2, v13, :cond_9

    if-lt v10, v13, :cond_9

    .line 2086
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 2087
    div-int v16, v0, v13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v13, :cond_2

    mul-int v3, v0, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_1

    .line 2090
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_1
    add-int v1, v3, v16

    :goto_2
    move v4, v1

    .line 2092
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$23;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$23;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 2105
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2109
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

    .line 2107
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

    .line 2114
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_3
    add-int v1, v3, v16

    :goto_5
    move v4, v1

    .line 2116
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$24;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object v14, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$24;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v6, v14

    goto :goto_4

    :cond_4
    move-object v14, v6

    .line 2142
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 2146
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

    .line 2144
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2149
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

    .line 2153
    :goto_8
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$25;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$25;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_7

    .line 2179
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

    .line 2183
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

    .line 2181
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2185
    :goto_9
    iget v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/2addr v0, v13

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v13, :cond_8

    mul-int v3, v10, v0

    add-int/lit8 v1, v13, -0x1

    if-ne v10, v1, :cond_7

    .line 2188
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_b

    :cond_7
    add-int v1, v3, v0

    :goto_b
    move v4, v1

    .line 2190
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$26;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move v5, v12

    move v6, v11

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$26;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[[[D)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2211
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

    .line 2215
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

    .line 2213
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_9
    const/4 v0, 0x0

    .line 2219
    :goto_c
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_b

    const/4 v2, 0x0

    .line 2220
    :goto_d
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v4, :cond_a

    .line 2221
    iget-object v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-virtual {v4, v5, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2225
    :goto_e
    iget v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_f

    const/4 v2, 0x0

    .line 2226
    :goto_f
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v4, :cond_e

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    .line 2228
    :goto_10
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v6, :cond_c

    mul-int/lit8 v6, v5, 0x2

    .line 2230
    aget-object v9, p1, v0

    aget-object v9, v9, v5

    aget-wide v13, v9, v4

    aput-wide v13, v1, v6

    add-int/2addr v6, v3

    add-int/lit8 v13, v4, 0x1

    .line 2231
    aget-wide v13, v9, v13

    aput-wide v13, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 2233
    :cond_c
    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v1, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v5, 0x0

    .line 2234
    :goto_11
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v6, :cond_d

    mul-int/lit8 v6, v5, 0x2

    .line 2236
    aget-object v9, p1, v0

    aget-object v9, v9, v5

    aget-wide v13, v1, v6

    aput-wide v13, v9, v4

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v6, v3

    .line 2237
    aget-wide v14, v1, v6

    aput-wide v14, v9, v13

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

    .line 2242
    new-array v0, v2, [D

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v10, :cond_13

    const/4 v2, 0x0

    .line 2245
    :goto_13
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v4, :cond_12

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    .line 2247
    :goto_14
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_10

    mul-int/lit8 v6, v5, 0x2

    .line 2249
    aget-object v9, p1, v5

    aget-object v9, v9, v1

    aget-wide v13, v9, v4

    aput-wide v13, v0, v6

    add-int/2addr v6, v3

    add-int/lit8 v13, v4, 0x1

    .line 2250
    aget-wide v13, v9, v13

    aput-wide v13, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 2252
    :cond_10
    iget-object v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v5, 0x0

    .line 2253
    :goto_15
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_11

    mul-int/lit8 v6, v5, 0x2

    .line 2255
    aget-object v9, p1, v5

    aget-object v9, v9, v1

    aget-wide v13, v0, v6

    aput-wide v13, v9, v4

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v6, v3

    .line 2256
    aget-wide v14, v0, v6

    aput-wide v14, v9, v13

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

    .line 2261
    :goto_16
    iget v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_16

    sub-int v2, v1, v0

    .line 2262
    rem-int/2addr v2, v1

    move v1, v3

    :goto_17
    if-ge v1, v12, :cond_15

    .line 2264
    iget v4, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    .line 2265
    :goto_18
    iget v6, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_14

    mul-int/lit8 v6, v5, 0x2

    sub-int v7, v11, v6

    .line 2268
    aget-object v9, p1, v2

    aget-object v9, v9, v4

    rem-int v10, v7, v11

    aget-object v13, p1, v0

    aget-object v13, v13, v1

    aget-wide v14, v13, v6

    aput-wide v14, v9, v10

    add-int/2addr v7, v3

    .line 2269
    rem-int/2addr v7, v11

    add-int/2addr v6, v3

    aget-wide v14, v13, v6

    neg-double v13, v14

    aput-wide v13, v9, v7

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

.method private rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7028
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    .line 7029
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    shr-long v4, v5, v4

    if-gez p1, :cond_2

    const-wide/16 v8, 0x1

    :goto_0
    cmp-long v10, v8, v2

    if-gez v10, :cond_1

    .line 7032
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    sub-long/2addr v10, v8

    .line 7033
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v14, v8, v12

    mul-long v6, v10, v12

    mul-long v18, v8, v12

    move-wide/from16 v20, v2

    .line 7035
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v22, v4, v2

    move-wide/from16 v24, v8

    add-long v8, v18, v22

    mul-long/2addr v12, v10

    mul-long/2addr v2, v4

    add-long/2addr v12, v2

    .line 7037
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v2, v2, v18

    .line 7038
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    move-wide/from16 v26, v10

    add-double v10, v18, v22

    invoke-virtual {v1, v14, v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7039
    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    .line 7040
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-long/2addr v14, v2

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double/2addr v10, v2

    .line 7041
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v2, v2, v18

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7042
    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7043
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    sub-double/2addr v2, v6

    .line 7044
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-double/2addr v6, v10

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7045
    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    .line 7046
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    add-long/2addr v8, v2

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    sub-double/2addr v6, v2

    .line 7047
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    add-double/2addr v2, v10

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7048
    invoke-virtual {v1, v12, v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    :goto_1
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 7050
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v6, v2

    .line 7051
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v10, v24, v8

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v14, v2, v12

    add-long/2addr v10, v14

    mul-long v8, v8, v26

    mul-long/2addr v12, v6

    add-long/2addr v8, v12

    .line 7053
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 7054
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v14, v14, v18

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7055
    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 7056
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v14, v12

    .line 7057
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v12, v12, v18

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7058
    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7059
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v10, v26, v8

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v14, v2, v12

    add-long/2addr v10, v14

    mul-long v8, v8, v24

    mul-long/2addr v6, v12

    add-long/2addr v8, v6

    .line 7061
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v6, v12

    .line 7062
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7063
    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 7064
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    add-long/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 7065
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7066
    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v6

    goto/16 :goto_1

    :cond_0
    const-wide/16 v6, 0x1

    add-long v8, v24, v6

    move-wide/from16 v2, v20

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v20, v2

    const-wide/16 v2, 0x1

    :goto_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 7070
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v6, v2

    .line 7071
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v10, v2, v8

    mul-long/2addr v8, v6

    .line 7073
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 7074
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v14, v14, v18

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7075
    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 7076
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v14, v12

    .line 7077
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v12, v12, v18

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7078
    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7079
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v10, v20, v8

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v14, v2, v12

    add-long/2addr v10, v14

    mul-long v8, v8, v20

    mul-long/2addr v6, v12

    add-long/2addr v8, v6

    .line 7081
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v6, v12

    .line 7082
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7083
    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 7084
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    add-long/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 7085
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7086
    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v6

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v20, v2

    const-wide/16 v2, 0x1

    :goto_3
    cmp-long v6, v2, v20

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-gez v6, :cond_4

    .line 7090
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    sub-long/2addr v9, v2

    .line 7091
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v13, v9, v11

    mul-long/2addr v11, v2

    .line 7093
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v22

    sub-double v18, v18, v22

    move-wide/from16 v22, v2

    mul-double v2, v18, v7

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7094
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v2, v2, v18

    invoke-virtual {v1, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    add-long/2addr v11, v2

    .line 7095
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v2, v2, v18

    mul-double/2addr v2, v7

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7096
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    sub-double/2addr v2, v13

    invoke-virtual {v1, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7097
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v11, v9, v2

    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v18, v4, v13

    add-long v11, v11, v18

    mul-long v2, v2, v22

    mul-long/2addr v13, v4

    add-long/2addr v2, v13

    .line 7099
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v13, v13, v18

    mul-double/2addr v13, v7

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7100
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v13, v13, v18

    invoke-virtual {v1, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    add-long/2addr v2, v13

    .line 7101
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    add-double v13, v13, v18

    mul-double/2addr v13, v7

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7102
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    sub-double/2addr v13, v11

    invoke-virtual {v1, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    :goto_4
    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 7104
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v11, v2

    .line 7105
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v18, v9, v13

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v26, v11, v7

    move-wide/from16 v28, v4

    add-long v4, v18, v26

    mul-long v13, v13, v22

    mul-long/2addr v7, v2

    add-long/2addr v13, v7

    .line 7107
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v6, v6, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v18

    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7108
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    sub-double v6, v6, v24

    invoke-virtual {v1, v13, v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr v13, v6

    .line 7109
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v24

    add-double v6, v6, v24

    mul-double v6, v6, v18

    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7110
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    sub-double/2addr v6, v4

    invoke-virtual {v1, v13, v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7111
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v6, v22, v4

    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v11, v13

    add-long/2addr v6, v11

    mul-long/2addr v4, v9

    mul-long/2addr v13, v2

    add-long/2addr v4, v13

    .line 7113
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    invoke-virtual {v1, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7114
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v18

    sub-double v11, v11, v18

    invoke-virtual {v1, v4, v5, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    add-long/2addr v4, v11

    .line 7115
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v15

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v17

    add-double v15, v15, v17

    mul-double v11, v15, v13

    invoke-virtual {v1, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7116
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    sub-double/2addr v11, v6

    invoke-virtual {v1, v4, v5, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-wide/from16 v4, v28

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v28, v4

    const-wide/16 v4, 0x1

    add-long v2, v22, v4

    move-wide/from16 v4, v28

    goto/16 :goto_3

    :cond_4
    move-wide/from16 v28, v4

    const-wide/16 v2, 0x1

    :goto_5
    cmp-long v4, v2, v28

    if-gez v4, :cond_5

    .line 7120
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    sub-long/2addr v4, v2

    .line 7121
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v8, v4, v6

    mul-long/2addr v6, v2

    .line 7123
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7124
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    sub-double/2addr v10, v14

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    add-long/2addr v6, v10

    .line 7125
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-double/2addr v10, v14

    mul-double/2addr v10, v12

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7126
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    sub-double/2addr v10, v8

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7127
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v8, v20, v6

    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v10

    add-long/2addr v8, v4

    mul-long v4, v20, v6

    mul-long/2addr v10, v2

    add-long/2addr v4, v10

    .line 7129
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    sub-double/2addr v6, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v10

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7130
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    sub-double/2addr v6, v12

    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    add-long/2addr v4, v6

    .line 7131
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    add-double/2addr v12, v14

    mul-double/2addr v12, v10

    invoke-virtual {v1, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7132
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    sub-double/2addr v12, v8

    invoke-virtual {v1, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v6

    goto/16 :goto_5

    :cond_5
    return-void
.end method

.method private rdft3d_sub(I[D)V
    .locals 18

    move-object/from16 v0, p0

    .line 6914
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 6915
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    shr-int/2addr v3, v2

    if-gez p1, :cond_2

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6918
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v5, v4

    .line 6919
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v7, v4, v6

    mul-int v8, v5, v6

    mul-int v9, v4, v6

    .line 6921
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v11, v3, v10

    add-int/2addr v9, v11

    mul-int/2addr v6, v5

    mul-int/2addr v10, v3

    add-int/2addr v6, v10

    .line 6923
    aget-wide v10, p2, v7

    aget-wide v12, p2, v8

    sub-double v14, v10, v12

    add-double/2addr v10, v12

    .line 6924
    aput-wide v10, p2, v7

    .line 6925
    aput-wide v14, p2, v8

    add-int/2addr v8, v2

    .line 6926
    aget-wide v10, p2, v8

    add-int/2addr v7, v2

    aget-wide v12, p2, v7

    sub-double v14, v10, v12

    add-double/2addr v12, v10

    .line 6927
    aput-wide v12, p2, v7

    .line 6928
    aput-wide v14, p2, v8

    .line 6929
    aget-wide v7, p2, v9

    aget-wide v10, p2, v6

    sub-double v12, v7, v10

    add-double/2addr v7, v10

    .line 6930
    aput-wide v7, p2, v9

    .line 6931
    aput-wide v12, p2, v6

    add-int/2addr v6, v2

    .line 6932
    aget-wide v7, p2, v6

    add-int/2addr v9, v2

    aget-wide v10, p2, v9

    sub-double v12, v7, v10

    add-double/2addr v10, v7

    .line 6933
    aput-wide v10, p2, v9

    .line 6934
    aput-wide v12, p2, v6

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_0

    .line 6936
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v7, v6

    .line 6937
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v9, v4, v8

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v11, v6, v10

    add-int/2addr v9, v11

    mul-int v11, v5, v8

    mul-int v12, v7, v10

    add-int/2addr v11, v12

    .line 6939
    aget-wide v12, p2, v9

    aget-wide v14, p2, v11

    sub-double v16, v12, v14

    add-double/2addr v12, v14

    .line 6940
    aput-wide v12, p2, v9

    .line 6941
    aput-wide v16, p2, v11

    add-int/2addr v11, v2

    .line 6942
    aget-wide v12, p2, v11

    add-int/2addr v9, v2

    aget-wide v14, p2, v9

    sub-double v16, v12, v14

    add-double/2addr v14, v12

    .line 6943
    aput-wide v14, p2, v9

    .line 6944
    aput-wide v16, p2, v11

    mul-int v9, v5, v8

    mul-int v11, v6, v10

    add-int/2addr v9, v11

    mul-int/2addr v8, v4

    mul-int/2addr v7, v10

    add-int/2addr v8, v7

    .line 6947
    aget-wide v10, p2, v9

    aget-wide v12, p2, v8

    sub-double v14, v10, v12

    add-double/2addr v10, v12

    .line 6948
    aput-wide v10, p2, v9

    .line 6949
    aput-wide v14, p2, v8

    add-int/2addr v8, v2

    .line 6950
    aget-wide v10, p2, v8

    add-int/2addr v9, v2

    aget-wide v12, p2, v9

    sub-double v14, v10, v12

    add-double/2addr v12, v10

    .line 6951
    aput-wide v12, p2, v9

    .line 6952
    aput-wide v14, p2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    .line 6956
    iget v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v4

    .line 6957
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v7, v4, v6

    mul-int v8, v5, v6

    .line 6959
    aget-wide v9, p2, v7

    aget-wide v11, p2, v8

    sub-double v13, v9, v11

    add-double/2addr v9, v11

    .line 6960
    aput-wide v9, p2, v7

    .line 6961
    aput-wide v13, p2, v8

    add-int/2addr v8, v2

    .line 6962
    aget-wide v9, p2, v8

    add-int/2addr v7, v2

    aget-wide v11, p2, v7

    sub-double v13, v9, v11

    add-double/2addr v11, v9

    .line 6963
    aput-wide v11, p2, v7

    .line 6964
    aput-wide v13, p2, v8

    .line 6965
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v8, v1, v7

    mul-int v9, v4, v6

    add-int/2addr v8, v9

    mul-int/2addr v7, v1

    mul-int/2addr v5, v6

    add-int/2addr v7, v5

    .line 6967
    aget-wide v5, p2, v8

    aget-wide v9, p2, v7

    sub-double v11, v5, v9

    add-double/2addr v5, v9

    .line 6968
    aput-wide v5, p2, v8

    .line 6969
    aput-wide v11, p2, v7

    add-int/2addr v7, v2

    .line 6970
    aget-wide v5, p2, v7

    add-int/2addr v8, v2

    aget-wide v9, p2, v8

    sub-double v11, v5, v9

    add-double/2addr v9, v5

    .line 6971
    aput-wide v9, p2, v8

    .line 6972
    aput-wide v11, p2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_3
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-ge v4, v1, :cond_4

    .line 6976
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v7, v4

    .line 6977
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v9, v7, v8

    mul-int v10, v4, v8

    .line 6979
    aget-wide v11, p2, v10

    aget-wide v13, p2, v9

    sub-double/2addr v11, v13

    mul-double/2addr v11, v5

    aput-wide v11, p2, v9

    .line 6980
    aget-wide v13, p2, v10

    sub-double/2addr v13, v11

    aput-wide v13, p2, v10

    add-int/2addr v9, v2

    add-int/2addr v10, v2

    .line 6981
    aget-wide v11, p2, v10

    aget-wide v13, p2, v9

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    aput-wide v11, p2, v9

    .line 6982
    aget-wide v13, p2, v10

    sub-double/2addr v13, v11

    aput-wide v13, p2, v10

    mul-int v9, v7, v8

    .line 6983
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v11, v3, v10

    add-int/2addr v9, v11

    mul-int/2addr v8, v4

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 6985
    aget-wide v10, p2, v8

    aget-wide v12, p2, v9

    sub-double/2addr v10, v12

    mul-double/2addr v10, v5

    aput-wide v10, p2, v9

    .line 6986
    aget-wide v12, p2, v8

    sub-double/2addr v12, v10

    aput-wide v12, p2, v8

    add-int/2addr v9, v2

    add-int/2addr v8, v2

    .line 6987
    aget-wide v10, p2, v8

    aget-wide v12, p2, v9

    add-double/2addr v10, v12

    mul-double/2addr v10, v5

    aput-wide v10, p2, v9

    .line 6988
    aget-wide v12, p2, v8

    sub-double/2addr v12, v10

    aput-wide v12, p2, v8

    move v8, v2

    :goto_4
    if-ge v8, v3, :cond_3

    .line 6990
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v9, v8

    .line 6991
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v11, v7, v10

    iget v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v13, v9, v12

    add-int/2addr v11, v13

    mul-int v13, v4, v10

    mul-int v14, v8, v12

    add-int/2addr v13, v14

    .line 6993
    aget-wide v14, p2, v13

    aget-wide v16, p2, v11

    sub-double v14, v14, v16

    mul-double/2addr v14, v5

    aput-wide v14, p2, v11

    .line 6994
    aget-wide v16, p2, v13

    sub-double v16, v16, v14

    aput-wide v16, p2, v13

    add-int/2addr v11, v2

    add-int/2addr v13, v2

    .line 6995
    aget-wide v14, p2, v13

    aget-wide v16, p2, v11

    add-double v14, v14, v16

    mul-double/2addr v14, v5

    aput-wide v14, p2, v11

    .line 6996
    aget-wide v16, p2, v13

    sub-double v16, v16, v14

    aput-wide v16, p2, v13

    mul-int v11, v4, v10

    mul-int/2addr v9, v12

    add-int/2addr v11, v9

    mul-int/2addr v10, v7

    mul-int/2addr v12, v8

    add-int/2addr v10, v12

    .line 6999
    aget-wide v12, p2, v10

    aget-wide v14, p2, v11

    sub-double/2addr v12, v14

    mul-double/2addr v12, v5

    aput-wide v12, p2, v11

    .line 7000
    aget-wide v14, p2, v10

    sub-double/2addr v14, v12

    aput-wide v14, p2, v10

    add-int/2addr v11, v2

    add-int/2addr v10, v2

    .line 7001
    aget-wide v12, p2, v10

    aget-wide v14, p2, v11

    add-double/2addr v12, v14

    mul-double/2addr v12, v5

    aput-wide v12, p2, v11

    .line 7002
    aget-wide v14, p2, v10

    sub-double/2addr v14, v12

    aput-wide v14, p2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_4
    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_5

    .line 7006
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v7, v4

    .line 7007
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v9, v7, v8

    mul-int v10, v4, v8

    .line 7009
    aget-wide v11, p2, v10

    aget-wide v13, p2, v9

    sub-double/2addr v11, v13

    mul-double/2addr v11, v5

    aput-wide v11, p2, v9

    .line 7010
    aget-wide v13, p2, v10

    sub-double/2addr v13, v11

    aput-wide v13, p2, v10

    add-int/2addr v9, v2

    add-int/2addr v10, v2

    .line 7011
    aget-wide v11, p2, v10

    aget-wide v13, p2, v9

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    aput-wide v11, p2, v9

    .line 7012
    aget-wide v13, p2, v10

    sub-double/2addr v13, v11

    aput-wide v13, p2, v10

    .line 7013
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v10, v1, v9

    mul-int/2addr v7, v8

    add-int/2addr v10, v7

    mul-int/2addr v9, v1

    mul-int/2addr v8, v4

    add-int/2addr v9, v8

    .line 7015
    aget-wide v7, p2, v9

    aget-wide v11, p2, v10

    sub-double/2addr v7, v11

    mul-double/2addr v7, v5

    aput-wide v7, p2, v10

    .line 7016
    aget-wide v11, p2, v9

    sub-double/2addr v11, v7

    aput-wide v11, p2, v9

    add-int/2addr v10, v2

    add-int/2addr v9, v2

    .line 7017
    aget-wide v7, p2, v9

    aget-wide v11, p2, v10

    add-double/2addr v7, v11

    mul-double/2addr v7, v5

    aput-wide v7, p2, v10

    .line 7018
    aget-wide v10, p2, v9

    sub-double/2addr v10, v7

    aput-wide v10, p2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private rdft3d_sub(I[[[D)V
    .locals 19

    move-object/from16 v0, p0

    .line 7142
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    .line 7143
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    shr-int/2addr v3, v2

    const/4 v4, 0x0

    if-gez p1, :cond_2

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_1

    .line 7146
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v6, v5

    .line 7147
    aget-object v7, p2, v5

    aget-object v8, v7, v4

    aget-wide v9, v8, v4

    aget-object v11, p2, v6

    aget-object v12, v11, v4

    aget-wide v13, v12, v4

    sub-double v15, v9, v13

    add-double/2addr v9, v13

    .line 7148
    aput-wide v9, v8, v4

    .line 7149
    aput-wide v15, v12, v4

    .line 7150
    aget-wide v9, v12, v2

    aget-wide v13, v8, v2

    sub-double v15, v9, v13

    add-double/2addr v13, v9

    .line 7151
    aput-wide v13, v8, v2

    .line 7152
    aput-wide v15, v12, v2

    .line 7153
    aget-object v7, v7, v3

    aget-wide v8, v7, v4

    aget-object v10, v11, v3

    aget-wide v11, v10, v4

    sub-double v13, v8, v11

    add-double/2addr v8, v11

    .line 7154
    aput-wide v8, v7, v4

    .line 7155
    aput-wide v13, v10, v4

    .line 7156
    aget-wide v8, v10, v2

    aget-wide v11, v7, v2

    sub-double v13, v8, v11

    add-double/2addr v11, v8

    .line 7157
    aput-wide v11, v7, v2

    .line 7158
    aput-wide v13, v10, v2

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_0

    .line 7160
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v8, v7

    .line 7161
    aget-object v9, p2, v5

    aget-object v10, v9, v7

    aget-wide v11, v10, v4

    aget-object v13, p2, v6

    aget-object v14, v13, v8

    aget-wide v15, v14, v4

    sub-double v17, v11, v15

    add-double/2addr v11, v15

    .line 7162
    aput-wide v11, v10, v4

    .line 7163
    aput-wide v17, v14, v4

    .line 7164
    aget-wide v11, v14, v2

    aget-wide v15, v10, v2

    sub-double v17, v11, v15

    add-double/2addr v15, v11

    .line 7165
    aput-wide v15, v10, v2

    .line 7166
    aput-wide v17, v14, v2

    .line 7167
    aget-object v10, v13, v7

    aget-wide v11, v10, v4

    aget-object v8, v9, v8

    aget-wide v13, v8, v4

    sub-double v15, v11, v13

    add-double/2addr v11, v13

    .line 7168
    aput-wide v11, v10, v4

    .line 7169
    aput-wide v15, v8, v4

    .line 7170
    aget-wide v11, v8, v2

    aget-wide v13, v10, v2

    sub-double v15, v11, v13

    add-double/2addr v13, v11

    .line 7171
    aput-wide v13, v10, v2

    .line 7172
    aput-wide v15, v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_5

    .line 7176
    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v6, v5

    .line 7177
    aget-object v7, p2, v4

    aget-object v8, v7, v5

    aget-wide v9, v8, v4

    aget-object v7, v7, v6

    aget-wide v11, v7, v4

    sub-double v13, v9, v11

    add-double/2addr v9, v11

    .line 7178
    aput-wide v9, v8, v4

    .line 7179
    aput-wide v13, v7, v4

    .line 7180
    aget-wide v9, v7, v2

    aget-wide v11, v8, v2

    sub-double v13, v9, v11

    add-double/2addr v11, v9

    .line 7181
    aput-wide v11, v8, v2

    .line 7182
    aput-wide v13, v7, v2

    .line 7183
    aget-object v7, p2, v1

    aget-object v8, v7, v5

    aget-wide v9, v8, v4

    aget-object v6, v7, v6

    aget-wide v11, v6, v4

    sub-double v13, v9, v11

    add-double/2addr v9, v11

    .line 7184
    aput-wide v9, v8, v4

    .line 7185
    aput-wide v13, v6, v4

    .line 7186
    aget-wide v9, v6, v2

    aget-wide v11, v8, v2

    sub-double v13, v9, v11

    add-double/2addr v11, v9

    .line 7187
    aput-wide v11, v8, v2

    .line 7188
    aput-wide v13, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_3
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-ge v5, v1, :cond_4

    .line 7192
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v8, v5

    .line 7193
    aget-object v9, p2, v8

    aget-object v10, v9, v4

    aget-object v11, p2, v5

    aget-object v12, v11, v4

    aget-wide v13, v12, v4

    aget-wide v15, v10, v4

    sub-double/2addr v13, v15

    mul-double/2addr v13, v6

    aput-wide v13, v10, v4

    .line 7194
    aget-wide v15, v12, v4

    sub-double/2addr v15, v13

    aput-wide v15, v12, v4

    .line 7195
    aget-wide v13, v12, v2

    aget-wide v15, v10, v2

    add-double/2addr v13, v15

    mul-double/2addr v13, v6

    aput-wide v13, v10, v2

    .line 7196
    aget-wide v15, v12, v2

    sub-double/2addr v15, v13

    aput-wide v15, v12, v2

    .line 7197
    aget-object v9, v9, v3

    aget-object v10, v11, v3

    aget-wide v11, v10, v4

    aget-wide v13, v9, v4

    sub-double/2addr v11, v13

    mul-double/2addr v11, v6

    aput-wide v11, v9, v4

    .line 7198
    aget-wide v13, v10, v4

    sub-double/2addr v13, v11

    aput-wide v13, v10, v4

    .line 7199
    aget-wide v11, v10, v2

    aget-wide v13, v9, v2

    add-double/2addr v11, v13

    mul-double/2addr v11, v6

    aput-wide v11, v9, v2

    .line 7200
    aget-wide v13, v10, v2

    sub-double/2addr v13, v11

    aput-wide v13, v10, v2

    move v9, v2

    :goto_4
    if-ge v9, v3, :cond_3

    .line 7202
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v10, v9

    .line 7203
    aget-object v11, p2, v8

    aget-object v12, v11, v10

    aget-object v13, p2, v5

    aget-object v14, v13, v9

    aget-wide v15, v14, v4

    aget-wide v17, v12, v4

    sub-double v15, v15, v17

    mul-double/2addr v15, v6

    aput-wide v15, v12, v4

    .line 7204
    aget-wide v17, v14, v4

    sub-double v17, v17, v15

    aput-wide v17, v14, v4

    .line 7205
    aget-wide v15, v14, v2

    aget-wide v17, v12, v2

    add-double v15, v15, v17

    mul-double/2addr v15, v6

    aput-wide v15, v12, v2

    .line 7206
    aget-wide v17, v14, v2

    sub-double v17, v17, v15

    aput-wide v17, v14, v2

    .line 7207
    aget-object v10, v13, v10

    aget-object v11, v11, v9

    aget-wide v12, v11, v4

    aget-wide v14, v10, v4

    sub-double/2addr v12, v14

    mul-double/2addr v12, v6

    aput-wide v12, v10, v4

    .line 7208
    aget-wide v14, v11, v4

    sub-double/2addr v14, v12

    aput-wide v14, v11, v4

    .line 7209
    aget-wide v12, v11, v2

    aget-wide v14, v10, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v6

    aput-wide v12, v10, v2

    .line 7210
    aget-wide v14, v11, v2

    sub-double/2addr v14, v12

    aput-wide v14, v11, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_4
    move v5, v2

    :goto_5
    if-ge v5, v3, :cond_5

    .line 7214
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v8, v5

    .line 7215
    aget-object v9, p2, v4

    aget-object v10, v9, v8

    aget-object v9, v9, v5

    aget-wide v11, v9, v4

    aget-wide v13, v10, v4

    sub-double/2addr v11, v13

    mul-double/2addr v11, v6

    aput-wide v11, v10, v4

    .line 7216
    aget-wide v13, v9, v4

    sub-double/2addr v13, v11

    aput-wide v13, v9, v4

    .line 7217
    aget-wide v11, v9, v2

    aget-wide v13, v10, v2

    add-double/2addr v11, v13

    mul-double/2addr v11, v6

    aput-wide v11, v10, v2

    .line 7218
    aget-wide v13, v9, v2

    sub-double/2addr v13, v11

    aput-wide v13, v9, v2

    .line 7219
    aget-object v9, p2, v1

    aget-object v8, v9, v8

    aget-object v9, v9, v5

    aget-wide v10, v9, v4

    aget-wide v12, v8, v4

    sub-double/2addr v10, v12

    mul-double/2addr v10, v6

    aput-wide v10, v8, v4

    .line 7220
    aget-wide v12, v9, v4

    sub-double/2addr v12, v10

    aput-wide v12, v9, v4

    .line 7221
    aget-wide v10, v9, v2

    aget-wide v12, v8, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v6

    aput-wide v10, v8, v2

    .line 7222
    aget-wide v12, v9, v2

    sub-double/2addr v12, v10

    aput-wide v12, v9, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private xdft3da_sub1(II[DZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 3452
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 3453
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    .line 3457
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v5, :cond_2

    shr-int/lit8 v3, v3, 0x2

    .line 3462
    :cond_2
    :goto_0
    new-array v3, v3, [D

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p2

    if-ne v8, v4, :cond_c

    move v2, v6

    .line 3464
    :goto_1
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_16

    .line 3465
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    if-nez p1, :cond_3

    move v8, v6

    .line 3467
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3468
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v6

    .line 3471
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3472
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3475
    :cond_4
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v8, v5, :cond_7

    move v8, v6

    .line 3476
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v8, v9, :cond_b

    move v9, v6

    .line 3477
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    .line 3478
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3483
    aget-wide v15, v1, v11

    aput-wide v15, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 3484
    aget-wide v15, v1, v15

    aput-wide v15, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3485
    aget-wide v15, v1, v12

    aput-wide v15, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 3486
    aget-wide v15, v1, v12

    aput-wide v15, v3, v13

    add-int/lit8 v12, v11, 0x4

    .line 3487
    aget-wide v12, v1, v12

    aput-wide v12, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 3488
    aget-wide v12, v1, v12

    aput-wide v12, v3, v14

    add-int/lit8 v12, v11, 0x6

    .line 3489
    aget-wide v12, v1, v12

    aput-wide v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 3490
    aget-wide v11, v1, v11

    aput-wide v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3492
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3493
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3494
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v5

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3495
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 3496
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    .line 3497
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3502
    aget-wide v15, v3, v12

    aput-wide v15, v1, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3503
    aget-wide v16, v3, v12

    aput-wide v16, v1, v15

    add-int/lit8 v12, v11, 0x2

    .line 3504
    aget-wide v15, v3, v13

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 3505
    aget-wide v15, v3, v13

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x4

    .line 3506
    aget-wide v15, v3, v14

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 3507
    aget-wide v13, v3, v14

    aput-wide v13, v1, v12

    add-int/lit8 v12, v11, 0x6

    .line 3508
    aget-wide v13, v3, v10

    aput-wide v13, v1, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 3509
    aget-wide v12, v3, v10

    aput-wide v12, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v8, v5, :cond_9

    move v8, v6

    .line 3513
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_8

    .line 3514
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3517
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 3518
    aget-wide v12, v1, v12

    aput-wide v12, v3, v11

    add-int/lit8 v11, v10, 0x2

    .line 3519
    aget-wide v11, v1, v11

    aput-wide v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 3520
    aget-wide v10, v1, v10

    aput-wide v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3522
    :cond_8
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3523
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v3, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v6

    .line 3524
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3525
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3528
    aget-wide v12, v3, v11

    aput-wide v12, v1, v10

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3529
    aget-wide v13, v3, v11

    aput-wide v13, v1, v12

    add-int/lit8 v11, v10, 0x2

    .line 3530
    aget-wide v12, v3, v9

    aput-wide v12, v1, v11

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 3531
    aget-wide v11, v3, v9

    aput-wide v11, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    if-ne v8, v7, :cond_b

    move v8, v6

    .line 3534
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_a

    .line 3535
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3537
    aget-wide v11, v1, v9

    aput-wide v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 3538
    aget-wide v11, v1, v9

    aput-wide v11, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3540
    :cond_a
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v6

    .line 3541
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3542
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3544
    aget-wide v11, v3, v10

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3545
    aget-wide v10, v3, v10

    aput-wide v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    move v4, v6

    .line 3550
    :goto_b
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v8, :cond_16

    .line 3551
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    if-nez p1, :cond_d

    move v9, v6

    .line 3553
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_d

    .line 3554
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 3557
    :cond_d
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v9, v5, :cond_10

    move v9, v6

    .line 3558
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v9, v10, :cond_14

    move v10, v6

    .line 3559
    :goto_e
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_e

    .line 3560
    iget v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3565
    aget-wide v16, v1, v12

    aput-wide v16, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 3566
    aget-wide v16, v1, v16

    aput-wide v16, v3, v13

    add-int/lit8 v13, v12, 0x2

    .line 3567
    aget-wide v16, v1, v13

    aput-wide v16, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v12, 0x3

    .line 3568
    aget-wide v16, v1, v13

    aput-wide v16, v3, v14

    add-int/lit8 v13, v12, 0x4

    .line 3569
    aget-wide v13, v1, v13

    aput-wide v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v12, 0x5

    .line 3570
    aget-wide v13, v1, v13

    aput-wide v13, v3, v15

    add-int/lit8 v13, v12, 0x6

    .line 3571
    aget-wide v13, v1, v13

    aput-wide v13, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x7

    .line 3572
    aget-wide v12, v1, v12

    aput-wide v12, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 3574
    :cond_e
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v10, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3575
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3576
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v5

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3577
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v10, v6

    .line 3578
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    .line 3579
    iget v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3584
    aget-wide v16, v3, v13

    aput-wide v16, v1, v12

    add-int/lit8 v16, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 3585
    aget-wide v17, v3, v13

    aput-wide v17, v1, v16

    add-int/lit8 v13, v12, 0x2

    .line 3586
    aget-wide v16, v3, v14

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x3

    add-int/lit8 v14, v14, 0x1

    .line 3587
    aget-wide v16, v3, v14

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x4

    .line 3588
    aget-wide v16, v3, v15

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x5

    add-int/lit8 v15, v15, 0x1

    .line 3589
    aget-wide v14, v3, v15

    aput-wide v14, v1, v13

    add-int/lit8 v13, v12, 0x6

    .line 3590
    aget-wide v14, v3, v11

    aput-wide v14, v1, v13

    add-int/lit8 v12, v12, 0x7

    add-int/lit8 v11, v11, 0x1

    .line 3591
    aget-wide v13, v3, v11

    aput-wide v13, v1, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_d

    :cond_10
    if-ne v9, v5, :cond_12

    move v9, v6

    .line 3595
    :goto_10
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_11

    .line 3596
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3599
    aget-wide v13, v1, v11

    aput-wide v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v11, 0x1

    .line 3600
    aget-wide v13, v1, v13

    aput-wide v13, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3601
    aget-wide v12, v1, v12

    aput-wide v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x3

    .line 3602
    aget-wide v11, v1, v11

    aput-wide v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 3604
    :cond_11
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3605
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 3606
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 3607
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3610
    aget-wide v13, v3, v12

    aput-wide v13, v1, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3611
    aget-wide v14, v3, v12

    aput-wide v14, v1, v13

    add-int/lit8 v12, v11, 0x2

    .line 3612
    aget-wide v13, v3, v10

    aput-wide v13, v1, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 3613
    aget-wide v12, v3, v10

    aput-wide v12, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_12
    if-ne v9, v7, :cond_14

    move v9, v6

    .line 3616
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_13

    .line 3617
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 3619
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3620
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 3622
    :cond_13
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 3623
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 3624
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 3626
    aget-wide v12, v3, v11

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3627
    aget-wide v11, v3, v11

    aput-wide v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    if-eqz p1, :cond_15

    move v9, v6

    .line 3631
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 3632
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub1(II[[[DZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 4210
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 4211
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4215
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4220
    :cond_2
    :goto_0
    new-array v2, v2, [D

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v9, p2

    if-ne v9, v3, :cond_c

    move v1, v6

    .line 4222
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_16

    if-nez p1, :cond_3

    move v3, v6

    .line 4224
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4225
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    .line 4228
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4229
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4232
    :cond_4
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v3, v4, :cond_7

    move v3, v6

    .line 4233
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v9, :cond_b

    move v9, v6

    .line 4234
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4239
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v15, v3, 0x1

    .line 4240
    aget-wide v15, v14, v15

    aput-wide v15, v2, v11

    add-int/lit8 v11, v3, 0x2

    .line 4241
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v11, v3, 0x3

    .line 4242
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/lit8 v11, v3, 0x4

    .line 4243
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v11, v3, 0x5

    .line 4244
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/lit8 v11, v3, 0x6

    .line 4245
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v3, 0x7

    .line 4246
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 4248
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4249
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4250
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4251
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 4252
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4257
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget-wide v15, v2, v11

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v11, v8

    .line 4258
    aget-wide v16, v2, v11

    aput-wide v16, v14, v15

    add-int/lit8 v11, v3, 0x2

    .line 4259
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x3

    add-int/2addr v12, v8

    .line 4260
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x4

    .line 4261
    aget-wide v15, v2, v13

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x5

    add-int/2addr v13, v8

    .line 4262
    aget-wide v12, v2, v13

    aput-wide v12, v14, v11

    add-int/lit8 v11, v3, 0x6

    .line 4263
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

    add-int/lit8 v11, v3, 0x7

    add-int/2addr v10, v8

    .line 4264
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v3, v4, :cond_9

    move v3, v6

    .line 4268
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_8

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4271
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v2, v10

    add-int/2addr v10, v8

    .line 4272
    aget-wide v12, v11, v8

    aput-wide v12, v2, v10

    .line 4273
    aget-wide v12, v11, v7

    aput-wide v12, v2, v9

    add-int/2addr v9, v8

    .line 4274
    aget-wide v10, v11, v5

    aput-wide v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4276
    :cond_8
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4277
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v3, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 4278
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4281
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget-wide v12, v2, v10

    aput-wide v12, v11, v6

    add-int/2addr v10, v8

    .line 4282
    aget-wide v12, v2, v10

    aput-wide v12, v11, v8

    .line 4283
    aget-wide v12, v2, v9

    aput-wide v12, v11, v7

    add-int/2addr v9, v8

    .line 4284
    aget-wide v9, v2, v9

    aput-wide v9, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    if-ne v3, v7, :cond_b

    move v3, v6

    .line 4287
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_a

    mul-int/lit8 v9, v3, 0x2

    .line 4289
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v2, v9

    add-int/2addr v9, v8

    .line 4290
    aget-wide v11, v10, v8

    aput-wide v11, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4292
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 4293
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v9, v3, 0x2

    .line 4295
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget-wide v11, v2, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 4296
    aget-wide v11, v2, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    move v3, v6

    .line 4301
    :goto_b
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v9, :cond_16

    if-nez p1, :cond_d

    move v9, v6

    .line 4303
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_d

    .line 4304
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 4307
    :cond_d
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v9, v4, :cond_10

    move v9, v6

    .line 4308
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v9, v10, :cond_14

    move v10, v6

    .line 4309
    :goto_e
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_e

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4314
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget-wide v16, v15, v9

    aput-wide v16, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v16, v9, 0x1

    .line 4315
    aget-wide v16, v15, v16

    aput-wide v16, v2, v12

    add-int/lit8 v12, v9, 0x2

    .line 4316
    aget-wide v16, v15, v12

    aput-wide v16, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v12, v9, 0x3

    .line 4317
    aget-wide v16, v15, v12

    aput-wide v16, v2, v13

    add-int/lit8 v12, v9, 0x4

    .line 4318
    aget-wide v12, v15, v12

    aput-wide v12, v2, v14

    add-int/2addr v14, v8

    add-int/lit8 v12, v9, 0x5

    .line 4319
    aget-wide v12, v15, v12

    aput-wide v12, v2, v14

    add-int/lit8 v12, v9, 0x6

    .line 4320
    aget-wide v12, v15, v12

    aput-wide v12, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v12, v9, 0x7

    .line 4321
    aget-wide v12, v15, v12

    aput-wide v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 4323
    :cond_e
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v10, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4324
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4325
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v4

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4326
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v10, v6

    .line 4327
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4332
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget-wide v16, v2, v12

    aput-wide v16, v15, v9

    add-int/lit8 v16, v9, 0x1

    add-int/2addr v12, v8

    .line 4333
    aget-wide v17, v2, v12

    aput-wide v17, v15, v16

    add-int/lit8 v12, v9, 0x2

    .line 4334
    aget-wide v16, v2, v13

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v13, v8

    .line 4335
    aget-wide v16, v2, v13

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x4

    .line 4336
    aget-wide v16, v2, v14

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x5

    add-int/2addr v14, v8

    .line 4337
    aget-wide v13, v2, v14

    aput-wide v13, v15, v12

    add-int/lit8 v12, v9, 0x6

    .line 4338
    aget-wide v13, v2, v11

    aput-wide v13, v15, v12

    add-int/lit8 v12, v9, 0x7

    add-int/2addr v11, v8

    .line 4339
    aget-wide v13, v2, v11

    aput-wide v13, v15, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_d

    :cond_10
    if-ne v9, v4, :cond_12

    move v9, v6

    .line 4343
    :goto_10
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_11

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4346
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget-wide v13, v12, v6

    aput-wide v13, v2, v11

    add-int/2addr v11, v8

    .line 4347
    aget-wide v13, v12, v8

    aput-wide v13, v2, v11

    .line 4348
    aget-wide v13, v12, v7

    aput-wide v13, v2, v10

    add-int/2addr v10, v8

    .line 4349
    aget-wide v11, v12, v5

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 4351
    :cond_11
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4352
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4353
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4356
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget-wide v13, v2, v11

    aput-wide v13, v12, v6

    add-int/2addr v11, v8

    .line 4357
    aget-wide v13, v2, v11

    aput-wide v13, v12, v8

    .line 4358
    aget-wide v13, v2, v10

    aput-wide v13, v12, v7

    add-int/2addr v10, v8

    .line 4359
    aget-wide v10, v2, v10

    aput-wide v10, v12, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_12
    if-ne v9, v7, :cond_14

    move v9, v6

    .line 4362
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_13

    mul-int/lit8 v10, v9, 0x2

    .line 4364
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget-wide v12, v11, v6

    aput-wide v12, v2, v10

    add-int/2addr v10, v8

    .line 4365
    aget-wide v12, v11, v8

    aput-wide v12, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 4367
    :cond_13
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4368
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v10, v9, 0x2

    .line 4370
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget-wide v12, v2, v10

    aput-wide v12, v11, v6

    add-int/2addr v10, v8

    .line 4371
    aget-wide v12, v2, v10

    aput-wide v12, v11, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    if-eqz p1, :cond_15

    move v9, v6

    .line 4375
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 4376
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 3642
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 3643
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 3647
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 3652
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v5, 0x0

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_d

    move-wide v2, v5

    .line 3654
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v2, v11

    if-gez v4, :cond_19

    .line 3655
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v2

    cmp-long v4, p1, v5

    if-nez v4, :cond_3

    move-wide/from16 v23, v5

    .line 3657
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v23, v5

    if-gez v4, :cond_4

    .line 3658
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v5, v5, v23

    add-long/2addr v5, v11

    invoke-virtual {v4, v1, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v23, v23, v21

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    .line 3661
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 3662
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v13, v4

    add-long/2addr v13, v11

    invoke-virtual {v6, v1, v13, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v4, v4, v21

    goto :goto_4

    .line 3665
    :cond_4
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_8

    const-wide/16 v4, 0x0

    .line 3666
    :goto_5
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_7

    const-wide/16 v13, 0x0

    .line 3667
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v13, v9

    if-gez v6, :cond_5

    move-wide/from16 v25, v2

    .line 3668
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v9

    .line 3673
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v2, v21

    .line 3674
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v2, v19

    .line 3675
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v21

    add-long v4, v2, v17

    .line 3676
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v9, v2, v4

    .line 3677
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v21

    const-wide/16 v4, 0x5

    add-long v8, v2, v4

    .line 3678
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v2, v15

    .line 3679
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v13, v29

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v13, v21

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    .line 3680
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v33, v21

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v11, v31

    goto :goto_6

    :cond_5
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v31, v11

    .line 3682
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3683
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3684
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3685
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3686
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 3687
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v4

    .line 3692
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v21

    add-long v8, v8, v21

    .line 3693
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v19

    .line 3694
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v17

    add-long v13, v13, v21

    .line 3695
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v9, v11, v4

    .line 3696
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v11, v4

    add-long v2, v2, v21

    .line 3697
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v11, v15

    move-wide/from16 v4, v29

    .line 3698
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v11, v2

    add-long v4, v4, v21

    .line 3699
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 3703
    :goto_8
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    .line 3704
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 3707
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v13, v11, v21

    .line 3708
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v11, v19

    .line 3709
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v11, v11, v17

    .line 3710
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_8

    .line 3712
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3713
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3714
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 3715
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 3718
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v11, v21

    add-long v8, v8, v21

    .line 3719
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v11, v19

    .line 3720
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v17

    add-long v4, v4, v21

    .line 3721
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_9

    :cond_a
    cmp-long v2, v4, v19

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    .line 3724
    :goto_a
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 3725
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 3727
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v11, v11, v21

    .line 3728
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_a

    .line 3730
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3731
    :goto_b
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    .line 3732
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 3734
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v11, v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v21

    add-long v4, v4, v21

    .line 3735
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 3740
    :goto_d
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_19

    .line 3741
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-nez v10, :cond_e

    const-wide/16 v8, 0x0

    .line 3743
    :goto_e
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v11, v8, v11

    if-gez v11, :cond_e

    .line 3744
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v5

    invoke-virtual {v11, v1, v12, v13, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_e

    .line 3747
    :cond_e
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v11, 0x4

    cmp-long v13, v8, v11

    if-lez v13, :cond_12

    const-wide/16 v8, 0x0

    .line 3748
    :goto_f
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v11, v8, v11

    if-gez v11, :cond_11

    const-wide/16 v11, 0x0

    .line 3749
    :goto_10
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v25, v11, v13

    if-gez v25, :cond_f

    move-wide/from16 v25, v3

    .line 3750
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v13

    .line 3755
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v12, v3, v21

    .line 3756
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v3, v19

    .line 3757
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    add-long v8, v3, v17

    .line 3758
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 3759
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 3760
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v3, v15

    .line 3761
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v10, v21

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 3762
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 3764
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3765
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3766
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3767
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 3768
    :goto_11
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_10

    .line 3769
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v5

    .line 3774
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 3775
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 3776
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 3777
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 3778
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 3779
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 3780
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 3781
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 3785
    :goto_12
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_13

    .line 3786
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v8

    add-long v5, v31, v4

    mul-long v10, v8, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 3789
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v5, v21

    .line 3790
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v19

    .line 3791
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v5, v5, v17

    .line 3792
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    goto :goto_12

    .line 3794
    :cond_13
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3795
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 3796
    :goto_13
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_16

    .line 3797
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v31, v10

    mul-long v12, v4, v19

    mul-long v8, v8, v19

    add-long/2addr v8, v12

    .line 3800
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v10, v21

    add-long v12, v12, v21

    .line 3801
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v14, v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v19

    .line 3802
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v17

    add-long v8, v8, v21

    .line 3803
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    const-wide/16 v15, 0x6

    goto :goto_13

    :cond_14
    move/from16 v3, p5

    cmp-long v2, v8, v19

    if-nez v2, :cond_16

    const-wide/16 v4, 0x0

    .line 3806
    :goto_14
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_15

    .line 3807
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v4

    add-long v8, v31, v8

    mul-long v10, v4, v19

    .line 3809
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 3810
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    goto :goto_14

    .line 3812
    :cond_15
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v8, v4

    .line 3813
    :goto_15
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_17

    .line 3814
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    mul-long v12, v8, v19

    .line 3816
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 3817
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    goto :goto_15

    :cond_16
    :goto_16
    const-wide/16 v4, 0x0

    :cond_17
    if-eqz p3, :cond_18

    move-wide v8, v4

    .line 3821
    :goto_17
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_18

    .line 3822
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    invoke-virtual {v2, v1, v10, v11, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

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

.method private xdft3da_sub2(II[DZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 3832
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 3833
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    .line 3837
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v4, v5, :cond_2

    shr-int/lit8 v3, v3, 0x2

    .line 3842
    :cond_2
    :goto_0
    new-array v3, v3, [D

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p2

    if-ne v8, v4, :cond_c

    move v2, v6

    .line 3844
    :goto_1
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_16

    .line 3845
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    if-nez p1, :cond_3

    move v8, v6

    .line 3847
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3848
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v6

    .line 3851
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_4

    .line 3852
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3855
    :cond_4
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v8, v5, :cond_7

    move v8, v6

    .line 3856
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v8, v9, :cond_b

    move v9, v6

    .line 3857
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    .line 3858
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3863
    aget-wide v15, v1, v11

    aput-wide v15, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 3864
    aget-wide v15, v1, v15

    aput-wide v15, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3865
    aget-wide v15, v1, v12

    aput-wide v15, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v11, 0x3

    .line 3866
    aget-wide v15, v1, v12

    aput-wide v15, v3, v13

    add-int/lit8 v12, v11, 0x4

    .line 3867
    aget-wide v12, v1, v12

    aput-wide v12, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v11, 0x5

    .line 3868
    aget-wide v12, v1, v12

    aput-wide v12, v3, v14

    add-int/lit8 v12, v11, 0x6

    .line 3869
    aget-wide v12, v1, v12

    aput-wide v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x7

    .line 3870
    aget-wide v11, v1, v11

    aput-wide v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 3872
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3873
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3874
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v5

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3875
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v3, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 3876
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    .line 3877
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3882
    aget-wide v15, v3, v12

    aput-wide v15, v1, v11

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3883
    aget-wide v16, v3, v12

    aput-wide v16, v1, v15

    add-int/lit8 v12, v11, 0x2

    .line 3884
    aget-wide v15, v3, v13

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v13, 0x1

    .line 3885
    aget-wide v15, v3, v13

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x4

    .line 3886
    aget-wide v15, v3, v14

    aput-wide v15, v1, v12

    add-int/lit8 v12, v11, 0x5

    add-int/lit8 v14, v14, 0x1

    .line 3887
    aget-wide v13, v3, v14

    aput-wide v13, v1, v12

    add-int/lit8 v12, v11, 0x6

    .line 3888
    aget-wide v13, v3, v10

    aput-wide v13, v1, v12

    add-int/lit8 v11, v11, 0x7

    add-int/lit8 v10, v10, 0x1

    .line 3889
    aget-wide v12, v3, v10

    aput-wide v12, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v8, v5, :cond_9

    move v8, v6

    .line 3893
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_8

    .line 3894
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3897
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 3898
    aget-wide v12, v1, v12

    aput-wide v12, v3, v11

    add-int/lit8 v11, v10, 0x2

    .line 3899
    aget-wide v11, v1, v11

    aput-wide v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 3900
    aget-wide v10, v1, v10

    aput-wide v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3902
    :cond_8
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3903
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v8, v3, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v6

    .line 3904
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3905
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v8

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    .line 3908
    aget-wide v12, v3, v11

    aput-wide v12, v1, v10

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 3909
    aget-wide v13, v3, v11

    aput-wide v13, v1, v12

    add-int/lit8 v11, v10, 0x2

    .line 3910
    aget-wide v12, v3, v9

    aput-wide v12, v1, v11

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 3911
    aget-wide v11, v3, v9

    aput-wide v11, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    if-ne v8, v7, :cond_b

    move v8, v6

    .line 3914
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_a

    .line 3915
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3917
    aget-wide v11, v1, v9

    aput-wide v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 3918
    aget-wide v11, v1, v9

    aput-wide v11, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3920
    :cond_a
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v8, v3, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v6

    .line 3921
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v8, v9, :cond_b

    .line 3922
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    mul-int/lit8 v10, v8, 0x2

    .line 3924
    aget-wide v11, v3, v10

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 3925
    aget-wide v10, v3, v10

    aput-wide v10, v1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    move v4, v6

    .line 3930
    :goto_b
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v4, v8, :cond_16

    .line 3931
    iget v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v4

    if-nez p1, :cond_d

    move v9, v6

    .line 3933
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 3934
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v6

    .line 3937
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 3938
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    invoke-virtual {v10, v1, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 3941
    :cond_e
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v9, v5, :cond_11

    move v9, v6

    .line 3942
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v9, v10, :cond_15

    move v10, v6

    .line 3943
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    .line 3944
    iget v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3949
    aget-wide v16, v1, v12

    aput-wide v16, v3, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v16, v12, 0x1

    .line 3950
    aget-wide v16, v1, v16

    aput-wide v16, v3, v13

    add-int/lit8 v13, v12, 0x2

    .line 3951
    aget-wide v16, v1, v13

    aput-wide v16, v3, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v12, 0x3

    .line 3952
    aget-wide v16, v1, v13

    aput-wide v16, v3, v14

    add-int/lit8 v13, v12, 0x4

    .line 3953
    aget-wide v13, v1, v13

    aput-wide v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v12, 0x5

    .line 3954
    aget-wide v13, v1, v13

    aput-wide v13, v3, v15

    add-int/lit8 v13, v12, 0x6

    .line 3955
    aget-wide v13, v1, v13

    aput-wide v13, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x7

    .line 3956
    aget-wide v12, v1, v12

    aput-wide v12, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 3958
    :cond_f
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v10, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3959
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3960
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v5

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3961
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v3, v11, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v10, v6

    .line 3962
    :goto_10
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_10

    .line 3963
    iget v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

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

    .line 3968
    aget-wide v16, v3, v13

    aput-wide v16, v1, v12

    add-int/lit8 v16, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 3969
    aget-wide v17, v3, v13

    aput-wide v17, v1, v16

    add-int/lit8 v13, v12, 0x2

    .line 3970
    aget-wide v16, v3, v14

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x3

    add-int/lit8 v14, v14, 0x1

    .line 3971
    aget-wide v16, v3, v14

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x4

    .line 3972
    aget-wide v16, v3, v15

    aput-wide v16, v1, v13

    add-int/lit8 v13, v12, 0x5

    add-int/lit8 v15, v15, 0x1

    .line 3973
    aget-wide v14, v3, v15

    aput-wide v14, v1, v13

    add-int/lit8 v13, v12, 0x6

    .line 3974
    aget-wide v14, v3, v11

    aput-wide v14, v1, v13

    add-int/lit8 v12, v12, 0x7

    add-int/lit8 v11, v11, 0x1

    .line 3975
    aget-wide v13, v3, v11

    aput-wide v13, v1, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_e

    :cond_11
    if-ne v9, v5, :cond_13

    move v9, v6

    .line 3979
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_12

    .line 3980
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3983
    aget-wide v13, v1, v11

    aput-wide v13, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v11, 0x1

    .line 3984
    aget-wide v13, v1, v13

    aput-wide v13, v3, v12

    add-int/lit8 v12, v11, 0x2

    .line 3985
    aget-wide v12, v1, v12

    aput-wide v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x3

    .line 3986
    aget-wide v11, v1, v11

    aput-wide v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 3988
    :cond_12
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3989
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v3, v10, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 3990
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 3991
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v12

    .line 3994
    aget-wide v13, v3, v12

    aput-wide v13, v1, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 3995
    aget-wide v14, v3, v12

    aput-wide v14, v1, v13

    add-int/lit8 v12, v11, 0x2

    .line 3996
    aget-wide v13, v3, v10

    aput-wide v13, v1, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 3997
    aget-wide v12, v3, v10

    aput-wide v12, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_13
    if-ne v9, v7, :cond_15

    move v9, v6

    .line 4000
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    .line 4001
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 4003
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 4004
    aget-wide v12, v1, v10

    aput-wide v12, v3, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 4006
    :cond_14
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v3, v6, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4007
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    .line 4008
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v9

    add-int/2addr v10, v8

    mul-int/lit8 v11, v9, 0x2

    .line 4010
    aget-wide v12, v3, v11

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 4011
    aget-wide v11, v3, v11

    aput-wide v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub2(II[[[DZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 4386
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 4387
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    mul-int/lit8 v2, v2, 0x8

    .line 4391
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_2

    shr-int/lit8 v2, v2, 0x2

    .line 4396
    :cond_2
    :goto_0
    new-array v2, v2, [D

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v9, p2

    if-ne v9, v3, :cond_c

    move v1, v6

    .line 4398
    :goto_1
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_16

    if-nez p1, :cond_3

    move v3, v6

    .line 4400
    :goto_2
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4401
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    .line 4404
    :goto_3
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_4

    .line 4405
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v10, p3, v1

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4408
    :cond_4
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v3, v4, :cond_7

    move v3, v6

    .line 4409
    :goto_4
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v9, :cond_b

    move v9, v6

    .line 4410
    :goto_5
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_5

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4415
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v15, v3, 0x1

    .line 4416
    aget-wide v15, v14, v15

    aput-wide v15, v2, v11

    add-int/lit8 v11, v3, 0x2

    .line 4417
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v11, v3, 0x3

    .line 4418
    aget-wide v15, v14, v11

    aput-wide v15, v2, v12

    add-int/lit8 v11, v3, 0x4

    .line 4419
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v11, v3, 0x5

    .line 4420
    aget-wide v11, v14, v11

    aput-wide v11, v2, v13

    add-int/lit8 v11, v3, 0x6

    .line 4421
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/2addr v10, v8

    add-int/lit8 v11, v3, 0x7

    .line 4422
    aget-wide v11, v14, v11

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 4424
    :cond_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4425
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4426
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v4

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4427
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v2, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 4428
    :goto_6
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_6

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v11

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v13

    .line 4433
    aget-object v14, p3, v1

    aget-object v14, v14, v9

    aget-wide v15, v2, v11

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v11, v8

    .line 4434
    aget-wide v16, v2, v11

    aput-wide v16, v14, v15

    add-int/lit8 v11, v3, 0x2

    .line 4435
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x3

    add-int/2addr v12, v8

    .line 4436
    aget-wide v15, v2, v12

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x4

    .line 4437
    aget-wide v15, v2, v13

    aput-wide v15, v14, v11

    add-int/lit8 v11, v3, 0x5

    add-int/2addr v13, v8

    .line 4438
    aget-wide v12, v2, v13

    aput-wide v12, v14, v11

    add-int/lit8 v11, v3, 0x6

    .line 4439
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

    add-int/lit8 v11, v3, 0x7

    add-int/2addr v10, v8

    .line 4440
    aget-wide v12, v2, v10

    aput-wide v12, v14, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_4

    :cond_7
    if-ne v3, v4, :cond_9

    move v3, v6

    .line 4444
    :goto_7
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_8

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4447
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v2, v10

    add-int/2addr v10, v8

    .line 4448
    aget-wide v12, v11, v8

    aput-wide v12, v2, v10

    .line 4449
    aget-wide v12, v11, v7

    aput-wide v12, v2, v9

    add-int/2addr v9, v8

    .line 4450
    aget-wide v10, v11, v5

    aput-wide v10, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4452
    :cond_8
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 4453
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v9, v7

    invoke-virtual {v3, v2, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 4454
    :goto_8
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    .line 4457
    aget-object v11, p3, v1

    aget-object v11, v11, v3

    aget-wide v12, v2, v10

    aput-wide v12, v11, v6

    add-int/2addr v10, v8

    .line 4458
    aget-wide v12, v2, v10

    aput-wide v12, v11, v8

    .line 4459
    aget-wide v12, v2, v9

    aput-wide v12, v11, v7

    add-int/2addr v9, v8

    .line 4460
    aget-wide v9, v2, v9

    aput-wide v9, v11, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    if-ne v3, v7, :cond_b

    move v3, v6

    .line 4463
    :goto_9
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_a

    mul-int/lit8 v9, v3, 0x2

    .line 4465
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v2, v9

    add-int/2addr v9, v8

    .line 4466
    aget-wide v11, v10, v8

    aput-wide v11, v2, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4468
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v2, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 4469
    :goto_a
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v9, :cond_b

    mul-int/lit8 v9, v3, 0x2

    .line 4471
    aget-object v10, p3, v1

    aget-object v10, v10, v3

    aget-wide v11, v2, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 4472
    aget-wide v11, v2, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    move v3, v6

    .line 4477
    :goto_b
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v9, :cond_16

    if-nez p1, :cond_d

    move v9, v6

    .line 4479
    :goto_c
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 4480
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v6

    .line 4483
    :goto_d
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_e

    .line 4484
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v11, p3, v3

    aget-object v11, v11, v9

    invoke-virtual {v10, v11, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 4487
    :cond_e
    iget v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v9, v4, :cond_11

    move v9, v6

    .line 4488
    :goto_e
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v9, v10, :cond_15

    move v10, v6

    .line 4489
    :goto_f
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_f

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4494
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget-wide v16, v15, v9

    aput-wide v16, v2, v12

    add-int/2addr v12, v8

    add-int/lit8 v16, v9, 0x1

    .line 4495
    aget-wide v16, v15, v16

    aput-wide v16, v2, v12

    add-int/lit8 v12, v9, 0x2

    .line 4496
    aget-wide v16, v15, v12

    aput-wide v16, v2, v13

    add-int/2addr v13, v8

    add-int/lit8 v12, v9, 0x3

    .line 4497
    aget-wide v16, v15, v12

    aput-wide v16, v2, v13

    add-int/lit8 v12, v9, 0x4

    .line 4498
    aget-wide v12, v15, v12

    aput-wide v12, v2, v14

    add-int/2addr v14, v8

    add-int/lit8 v12, v9, 0x5

    .line 4499
    aget-wide v12, v15, v12

    aput-wide v12, v2, v14

    add-int/lit8 v12, v9, 0x6

    .line 4500
    aget-wide v12, v15, v12

    aput-wide v12, v2, v11

    add-int/2addr v11, v8

    add-int/lit8 v12, v9, 0x7

    .line 4501
    aget-wide v12, v15, v12

    aput-wide v12, v2, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 4503
    :cond_f
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v10, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4504
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v7

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4505
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v11, v4

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4506
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v11, v11, 0x6

    invoke-virtual {v10, v2, v11, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v10, v6

    .line 4507
    :goto_10
    iget v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v10, v11, :cond_10

    mul-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v12

    mul-int/lit8 v14, v11, 0x2

    add-int/2addr v14, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v14

    .line 4512
    aget-object v15, p3, v3

    aget-object v15, v15, v10

    aget-wide v16, v2, v12

    aput-wide v16, v15, v9

    add-int/lit8 v16, v9, 0x1

    add-int/2addr v12, v8

    .line 4513
    aget-wide v17, v2, v12

    aput-wide v17, v15, v16

    add-int/lit8 v12, v9, 0x2

    .line 4514
    aget-wide v16, v2, v13

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v13, v8

    .line 4515
    aget-wide v16, v2, v13

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x4

    .line 4516
    aget-wide v16, v2, v14

    aput-wide v16, v15, v12

    add-int/lit8 v12, v9, 0x5

    add-int/2addr v14, v8

    .line 4517
    aget-wide v13, v2, v14

    aput-wide v13, v15, v12

    add-int/lit8 v12, v9, 0x6

    .line 4518
    aget-wide v13, v2, v11

    aput-wide v13, v15, v12

    add-int/lit8 v12, v9, 0x7

    add-int/2addr v11, v8

    .line 4519
    aget-wide v13, v2, v11

    aput-wide v13, v15, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v9, v9, 0x8

    goto/16 :goto_e

    :cond_11
    if-ne v9, v4, :cond_13

    move v9, v6

    .line 4523
    :goto_11
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_12

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4526
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget-wide v13, v12, v6

    aput-wide v13, v2, v11

    add-int/2addr v11, v8

    .line 4527
    aget-wide v13, v12, v8

    aput-wide v13, v2, v11

    .line 4528
    aget-wide v13, v12, v7

    aput-wide v13, v2, v10

    add-int/2addr v10, v8

    .line 4529
    aget-wide v11, v12, v5

    aput-wide v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 4531
    :cond_12
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 4532
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v10, v7

    invoke-virtual {v9, v2, v10, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4533
    :goto_12
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    mul-int/lit8 v11, v9, 0x2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    .line 4536
    aget-object v12, p3, v3

    aget-object v12, v12, v9

    aget-wide v13, v2, v11

    aput-wide v13, v12, v6

    add-int/2addr v11, v8

    .line 4537
    aget-wide v13, v2, v11

    aput-wide v13, v12, v8

    .line 4538
    aget-wide v13, v2, v10

    aput-wide v13, v12, v7

    add-int/2addr v10, v8

    .line 4539
    aget-wide v10, v2, v10

    aput-wide v10, v12, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_13
    if-ne v9, v7, :cond_15

    move v9, v6

    .line 4542
    :goto_13
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_14

    mul-int/lit8 v10, v9, 0x2

    .line 4544
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget-wide v12, v11, v6

    aput-wide v12, v2, v10

    add-int/2addr v10, v8

    .line 4545
    aget-wide v12, v11, v8

    aput-wide v12, v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 4547
    :cond_14
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v9, v2, v6, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 4548
    :goto_14
    iget v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v9, v10, :cond_15

    mul-int/lit8 v10, v9, 0x2

    .line 4550
    aget-object v11, p3, v3

    aget-object v11, v11, v9

    aget-wide v12, v2, v10

    aput-wide v12, v11, v6

    add-int/2addr v10, v8

    .line 4551
    aget-wide v12, v2, v10

    aput-wide v12, v11, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_16
    return-void
.end method

.method private xdft3da_sub2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 4021
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 4022
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    .line 4026
    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 4031
    :cond_2
    :goto_1
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x3

    const-wide/16 v5, 0x0

    const-wide/16 v19, 0x2

    const-wide/16 v21, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_d

    move-wide v2, v5

    .line 4033
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v4, v2, v11

    if-gez v4, :cond_19

    .line 4034
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v2

    cmp-long v4, p1, v5

    if-nez v4, :cond_3

    move-wide/from16 v23, v5

    .line 4036
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v23, v5

    if-gez v4, :cond_4

    .line 4037
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v5, v5, v23

    add-long/2addr v5, v11

    invoke-virtual {v4, v1, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v23, v23, v21

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    .line 4040
    :goto_4
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 4041
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v13, v4

    add-long/2addr v13, v11

    invoke-virtual {v6, v1, v13, v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v4, v4, v21

    goto :goto_4

    .line 4044
    :cond_4
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v6, v4, v9

    if-lez v6, :cond_8

    const-wide/16 v4, 0x0

    .line 4045
    :goto_5
    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v6, v4, v13

    if-gez v6, :cond_7

    const-wide/16 v13, 0x0

    .line 4046
    :goto_6
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v13, v9

    if-gez v6, :cond_5

    move-wide/from16 v25, v2

    .line 4047
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v9

    .line 4052
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v8, v2, v21

    .line 4053
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v2, v19

    .line 4054
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v21

    add-long v4, v2, v17

    .line 4055
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v9, v2, v4

    .line 4056
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v13, v21

    const-wide/16 v4, 0x5

    add-long v8, v2, v4

    .line 4057
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v2, v15

    .line 4058
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    move-wide/from16 v13, v29

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v13, v21

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    .line 4059
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v33, v21

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v11, v31

    goto :goto_6

    :cond_5
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move-wide/from16 v31, v11

    .line 4061
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4062
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4063
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4064
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v3, v15

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4065
    :goto_7
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 4066
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v4

    .line 4071
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v21

    add-long v8, v8, v21

    .line 4072
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v19

    .line 4073
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v11, v17

    add-long v13, v13, v21

    .line 4074
    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v9, v11, v4

    .line 4075
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v11, v4

    add-long v2, v2, v21

    .line 4076
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v11, v15

    move-wide/from16 v4, v29

    .line 4077
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v11, v2

    add-long v4, v4, v21

    .line 4078
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4082
    :goto_8
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    .line 4083
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 4086
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v13, v11, v21

    .line 4087
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v11, v19

    .line 4088
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v11, v11, v17

    .line 4089
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_8

    .line 4091
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 4092
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v3, v3, v19

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4093
    :goto_9
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    .line 4094
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v11, v31, v8

    mul-long v8, v2, v19

    mul-long v4, v4, v19

    add-long/2addr v4, v8

    .line 4097
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v11, v21

    add-long v8, v8, v21

    .line 4098
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v11, v19

    .line 4099
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v17

    add-long v4, v4, v21

    .line 4100
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_9

    :cond_a
    cmp-long v2, v4, v19

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    .line 4103
    :goto_a
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 4104
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 4106
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    add-long v11, v11, v21

    .line 4107
    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    goto :goto_a

    .line 4109
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 4110
    :goto_b
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_c

    .line 4111
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v11, v31, v4

    mul-long v4, v2, v19

    .line 4113
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v11, v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v11, v11, v21

    add-long v4, v4, v21

    .line 4114
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4119
    :goto_d
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_19

    .line 4120
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    cmp-long v10, p1, v8

    if-nez v10, :cond_e

    const-wide/16 v8, 0x0

    .line 4122
    :goto_e
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    .line 4123
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v11, v8

    add-long/2addr v11, v5

    invoke-virtual {v10, v1, v11, v12, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_e

    :cond_e
    const-wide/16 v8, 0x0

    .line 4126
    :goto_f
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_f

    .line 4127
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v11, v8

    add-long/2addr v11, v5

    invoke-virtual {v10, v1, v11, v12, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v8, v8, v21

    goto :goto_f

    .line 4130
    :cond_f
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    const-wide/16 v10, 0x4

    cmp-long v12, v8, v10

    if-lez v12, :cond_13

    const-wide/16 v8, 0x0

    .line 4131
    :goto_10
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_12

    const-wide/16 v10, 0x0

    .line 4132
    :goto_11
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_10

    move-wide/from16 v25, v3

    .line 4133
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v12

    .line 4138
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    add-long v12, v3, v21

    .line 4139
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v3, v19

    .line 4140
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v5, v21

    add-long v8, v3, v17

    .line 4141
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x4

    add-long v8, v3, v5

    .line 4142
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    const-wide/16 v5, 0x5

    add-long v13, v3, v5

    .line 4143
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v5, v3, v15

    .line 4144
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    move-wide/from16 v10, v29

    invoke-virtual {v7, v10, v11, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v21

    const-wide/16 v5, 0x7

    add-long/2addr v3, v5

    .line 4145
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v33, v21

    move-wide/from16 v3, v25

    move-wide/from16 v8, v27

    move-wide/from16 v5, v31

    goto :goto_11

    :cond_10
    move-wide/from16 v25, v3

    move-wide/from16 v31, v5

    move-wide/from16 v27, v8

    .line 4147
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4148
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4149
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4150
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v4, v15

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 4151
    :goto_12
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_11

    .line 4152
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

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

    move-wide/from16 v29, v5

    .line 4157
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v21

    add-long v10, v10, v21

    .line 4158
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v19

    .line 4159
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v8, v17

    add-long v12, v12, v21

    .line 4160
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x4

    add-long v10, v8, v4

    .line 4161
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v10, v11, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x5

    add-long v13, v8, v4

    add-long v2, v2, v21

    .line 4162
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v8, v15

    move-wide/from16 v10, v29

    .line 4163
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x7

    add-long/2addr v8, v2

    add-long v10, v10, v21

    .line 4164
    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

    .line 4168
    :goto_13
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v6, v8, v2

    if-gez v6, :cond_14

    .line 4169
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v4, v8

    add-long v5, v31, v4

    mul-long v10, v8, v19

    mul-long v2, v2, v19

    add-long/2addr v2, v10

    .line 4172
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v5, v21

    .line 4173
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v19

    .line 4174
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v21

    add-long v5, v5, v17

    .line 4175
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v21

    const-wide/16 v4, 0x5

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x4

    goto :goto_13

    .line 4177
    :cond_14
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 4178
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v4, v4, v19

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 4179
    :goto_14
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_17

    .line 4180
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v31, v10

    mul-long v12, v4, v19

    mul-long v8, v8, v19

    add-long/2addr v8, v12

    .line 4183
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v10, v21

    add-long v12, v12, v21

    .line 4184
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v14, v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v19

    .line 4185
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v17

    add-long v8, v8, v21

    .line 4186
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    const-wide/16 v15, 0x6

    goto :goto_14

    :cond_15
    move/from16 v3, p5

    cmp-long v2, v8, v19

    if-nez v2, :cond_17

    const-wide/16 v4, 0x0

    .line 4189
    :goto_15
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_16

    .line 4190
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v8, v4

    add-long v8, v31, v8

    mul-long v10, v4, v19

    .line 4192
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v8, v8, v21

    .line 4193
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v21

    goto :goto_15

    .line 4195
    :cond_16
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v8, v4

    .line 4196
    :goto_16
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_18

    .line 4197
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v31, v10

    mul-long v12, v8, v19

    .line 4199
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v21

    add-long v12, v12, v21

    .line 4200
    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

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

.method private xdft3da_subth1(II[DZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5086
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5087
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 5088
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5092
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 5098
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5101
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$51;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$51;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 5286
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5290
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

    .line 5288
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth1(II[[[DZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5928
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5929
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 5930
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5934
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 5940
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5943
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$55;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$55;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6114
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6118
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

    .line 6116
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 20

    move-object/from16 v13, p0

    .line 5297
    const-class v14, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5298
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 5299
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 5303
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 5309
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v0, :cond_3

    int-to-long v6, v11

    .line 5312
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$52;

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

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_3D$52;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JIJIJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    goto :goto_2

    :cond_3
    move-object/from16 v19, v12

    const/4 v1, 0x0

    .line 5497
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5501
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

    .line 5499
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private xdft3da_subth2(II[DZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 5508
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 5509
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 5510
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 5514
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 5520
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 5523
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$53;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$53;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 5707
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5711
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

    .line 5709
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth2(II[[[DZ)V
    .locals 16

    move-object/from16 v10, p0

    .line 6125
    const-class v11, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 6126
    iget v1, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    .line 6127
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x8

    .line 6131
    iget v2, v10, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    .line 6137
    new-array v13, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v0, :cond_3

    .line 6140
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$56;

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v12

    move/from16 v4, p2

    move v5, v14

    move v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lorg/jtransforms/fft/DoubleFFT_3D$56;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6310
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6314
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

    .line 6312
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 20

    move-object/from16 v13, p0

    .line 5718
    const-class v14, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5719
    iget-wide v1, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    .line 5720
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    .line 5724
    iget-wide v3, v13, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

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

    .line 5730
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v0, :cond_3

    int-to-long v6, v11

    .line 5733
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$54;

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

    invoke-direct/range {v1 .. v12}, Lorg/jtransforms/fft/DoubleFFT_3D$54;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JIJIJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v19, v18

    add-int/lit8 v11, v18, 0x1

    move-object/from16 v12, v19

    goto :goto_2

    :cond_3
    move-object/from16 v19, v12

    const/4 v1, 0x0

    .line 5917
    :try_start_0
    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5921
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

    .line 5919
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
.method public complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 348
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 349
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v7, 0x1

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_1

    .line 350
    iget-wide v12, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v1, v12

    .line 351
    iput-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    .line 352
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    iput-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 353
    iput-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    const/4 v0, -0x1

    if-le v11, v7, :cond_0

    .line 354
    iget-boolean v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 355
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 356
    invoke-direct {v8, v0, v9, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    .line 358
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 359
    invoke-direct {v8, v0, v9, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 361
    :goto_0
    iput-wide v12, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    .line 362
    iget-wide v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v0, v12

    iput-wide v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 363
    iput-wide v12, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    goto/16 :goto_14

    .line 365
    :cond_1
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v5, v3, v1

    iget-wide v12, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v5, v12

    iput-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v5, v12, v1

    .line 366
    iput-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    if-le v11, v7, :cond_8

    .line 367
    iget-boolean v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    int-to-long v14, v11

    cmp-long v0, v5, v14

    if-ltz v0, :cond_8

    cmp-long v0, v3, v14

    if-ltz v0, :cond_8

    cmp-long v0, v12, v14

    if-ltz v0, :cond_8

    .line 368
    new-array v12, v11, [Ljava/util/concurrent/Future;

    .line 369
    div-long v17, v5, v14

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 372
    iget-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v17

    :goto_2
    move-wide v5, v1

    .line 373
    new-instance v13, Lorg/jtransforms/fft/DoubleFFT_3D$4;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$4;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 387
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 391
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

    .line 389
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v17

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 396
    iget-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_5

    :cond_4
    add-long v1, v3, v17

    :goto_5
    move-wide v5, v1

    .line 398
    new-instance v19, Lorg/jtransforms/fft/DoubleFFT_3D$5;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$5;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v19 .. v19}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 426
    :cond_5
    :try_start_1
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 430
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

    .line 428
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    :goto_6
    iget-wide v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    div-long v14, v0, v14

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_6

    .line 436
    iget-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    goto :goto_8

    :cond_6
    add-long v1, v3, v14

    :goto_8
    move-wide v5, v1

    .line 438
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$6;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D$6;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 466
    :cond_7
    :try_start_2
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 470
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

    .line 468
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v13, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    const-wide/16 v5, 0x0

    .line 474
    :goto_9
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v0, v5, v10

    const-wide/16 v10, 0x1

    if-gez v0, :cond_a

    .line 475
    iget-wide v12, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v12, v5

    const-wide/16 v14, 0x0

    .line 476
    :goto_a
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v0, v14, v3

    if-gez v0, :cond_9

    .line 477
    iget-object v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v3, v14

    add-long/2addr v3, v12

    invoke-virtual {v0, v9, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long/2addr v14, v10

    goto :goto_a

    :cond_9
    add-long/2addr v5, v10

    goto :goto_9

    .line 481
    :cond_a
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 482
    :goto_b
    iget-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 483
    iget-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v12, 0x0

    .line 484
    :goto_c
    iget-wide v14, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_d

    mul-long v14, v12, v1

    const-wide/16 v19, 0x0

    .line 486
    :goto_d
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v7, v19, v10

    if-gez v7, :cond_b

    add-long v10, v5, v14

    .line 487
    iget-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v1, v1, v19

    add-long/2addr v10, v1

    move-wide/from16 v21, v3

    const-wide/16 v1, 0x2

    mul-long v3, v19, v1

    .line 489
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    add-long/2addr v10, v1

    .line 490
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v19, v19, v1

    move-wide/from16 v3, v21

    const-wide/16 v1, 0x2

    goto :goto_d

    :cond_b
    move-wide/from16 v21, v3

    .line 492
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v1, 0x0

    .line 493
    :goto_e
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_c

    add-long v3, v5, v14

    .line 494
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v10, v1

    add-long/2addr v3, v10

    move-wide/from16 v19, v5

    const-wide/16 v10, 0x2

    mul-long v5, v1, v10

    .line 496
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v9, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    add-long/2addr v5, v10

    .line 497
    invoke-virtual {v0, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v9, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v10

    move-wide/from16 v5, v19

    goto :goto_e

    :cond_c
    move-wide/from16 v19, v5

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    move-wide/from16 v3, v21

    const-wide/16 v1, 0x2

    goto :goto_c

    :cond_d
    move-wide/from16 v21, v3

    add-long v3, v21, v10

    const-wide/16 v1, 0x2

    goto/16 :goto_b

    .line 502
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 503
    :goto_f
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 504
    iget-wide v3, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x0

    .line 505
    :goto_10
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v7, v5, v10

    if-gez v7, :cond_11

    const-wide/16 v10, 0x2

    mul-long v12, v5, v10

    const-wide/16 v14, 0x0

    .line 507
    :goto_11
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v7, v14, v10

    if-gez v7, :cond_f

    .line 508
    iget-wide v10, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v14

    add-long/2addr v10, v3

    add-long/2addr v10, v12

    move-wide/from16 v21, v1

    const-wide/16 v19, 0x2

    mul-long v1, v14, v19

    move-wide/from16 v19, v5

    .line 510
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v0, v1, v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    add-long/2addr v10, v5

    .line 511
    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v1, v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    move-wide/from16 v5, v19

    move-wide/from16 v1, v21

    goto :goto_11

    :cond_f
    move-wide/from16 v21, v1

    move-wide/from16 v19, v5

    .line 513
    iget-object v1, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v1, 0x0

    .line 514
    :goto_12
    iget-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_10

    .line 515
    iget-wide v5, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v5, v1

    add-long/2addr v5, v3

    add-long/2addr v5, v12

    const-wide/16 v10, 0x2

    mul-long v14, v1, v10

    .line 517
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v9, v5, v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    add-long/2addr v14, v10

    .line 518
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v9, v5, v6, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v10

    goto :goto_12

    :cond_10
    const-wide/16 v10, 0x1

    add-long v5, v19, v10

    move-wide/from16 v1, v21

    goto :goto_10

    :cond_11
    move-wide/from16 v21, v1

    const-wide/16 v10, 0x1

    add-long v1, v21, v10

    goto :goto_f

    .line 523
    :cond_12
    :goto_13
    iget-wide v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    iget-wide v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v0, v2

    iput-wide v0, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 524
    iput-wide v2, v8, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    :goto_14
    return-void
.end method

.method public complexForward([D)V
    .locals 12

    .line 147
    const-class v0, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 148
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 149
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 150
    iput v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 151
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v5, v2

    iput v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 152
    iput v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    const/4 v2, -0x1

    if-le v1, v4, :cond_0

    .line 153
    iget-boolean v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    .line 155
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    .line 158
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 160
    :goto_0
    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 161
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 162
    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_14

    .line 164
    :cond_1
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v5, v6, 0x2

    .line 165
    iput v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v1, v4, :cond_8

    .line 166
    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

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
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v5

    .line 172
    :goto_2
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_3D$1;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$1;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[D)V

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
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v5

    .line 197
    :goto_5
    new-instance v9, Lorg/jtransforms/fft/DoubleFFT_3D$2;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$2;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[D)V

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
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/2addr v5, v1

    :goto_7
    if-ge v3, v1, :cond_7

    mul-int v6, v3, v5

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_6

    .line 235
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v5

    .line 237
    :goto_8
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_3D$3;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$3;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[D)V

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
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 274
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v3

    .line 275
    :goto_a
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v5, :cond_9

    .line 276
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    invoke-virtual {v5, p1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 280
    :cond_a
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    move v1, v3

    .line 281
    :goto_b
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 282
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v5, v3

    .line 283
    :goto_c
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_d

    mul-int/lit8 v6, v5, 0x2

    move v7, v3

    .line 285
    :goto_d
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v7, v8, :cond_b

    add-int v8, v2, v6

    .line 286
    iget v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    mul-int/lit8 v9, v7, 0x2

    .line 288
    aget-wide v10, p1, v8

    aput-wide v10, v0, v9

    add-int/2addr v9, v4

    add-int/2addr v8, v4

    .line 289
    aget-wide v10, p1, v8

    aput-wide v10, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 291
    :cond_b
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v7, v3

    .line 292
    :goto_e
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v7, v8, :cond_c

    add-int v8, v2, v6

    .line 293
    iget v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    mul-int/lit8 v9, v7, 0x2

    .line 295
    aget-wide v10, v0, v9

    aput-wide v10, p1, v8

    add-int/2addr v8, v4

    add-int/2addr v9, v4

    .line 296
    aget-wide v9, v0, v9

    aput-wide v9, p1, v8

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
    new-array v0, v2, [D

    move v1, v3

    .line 302
    :goto_f
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 303
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v5, v3

    .line 304
    :goto_10
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v5, v6, :cond_11

    mul-int/lit8 v6, v5, 0x2

    move v7, v3

    .line 306
    :goto_11
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v7, v8, :cond_f

    .line 307
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 309
    aget-wide v10, p1, v8

    aput-wide v10, v0, v9

    add-int/2addr v9, v4

    add-int/2addr v8, v4

    .line 310
    aget-wide v10, p1, v8

    aput-wide v10, v0, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 312
    :cond_f
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v7, v3

    .line 313
    :goto_12
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v7, v8, :cond_10

    .line 314
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 316
    aget-wide v10, v0, v9

    aput-wide v10, p1, v8

    add-int/2addr v8, v4

    add-int/2addr v9, v4

    .line 317
    aget-wide v9, v0, v9

    aput-wide v9, p1, v8

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
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 323
    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :goto_14
    return-void
.end method

.method public complexForward([[[D)V
    .locals 12

    .line 544
    const-class v0, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 545
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 546
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 547
    iput v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 549
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v5, v2

    iput v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 550
    iput v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    const/4 v2, -0x1

    if-le v1, v4, :cond_0

    .line 552
    iget-boolean v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 553
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    .line 554
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-direct {p0, v3, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    .line 557
    invoke-direct {p0, v2, p1, v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 559
    :goto_0
    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 560
    iget p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 561
    iput v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_13

    :cond_1
    if-le v1, v4, :cond_8

    .line 562
    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v2, v1, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v5, v1, :cond_8

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v5, v1, :cond_8

    .line 563
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 564
    div-int/2addr v2, v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v6, v5, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_2

    .line 567
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v2

    .line 568
    :goto_2
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_3D$7;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$7;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 581
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 585
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v6

    .line 583
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

    .line 590
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v2

    .line 592
    :goto_5
    new-instance v9, Lorg/jtransforms/fft/DoubleFFT_3D$8;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$8;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 617
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    .line 621
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v2

    .line 619
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    :goto_6
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/2addr v2, v1

    :goto_7
    if-ge v3, v1, :cond_7

    mul-int v6, v3, v2

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_6

    .line 627
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v2

    .line 629
    :goto_8
    new-instance v8, Lorg/jtransforms/fft/DoubleFFT_3D$9;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D$9;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 654
    :cond_7
    :try_start_2
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception p1

    .line 658
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception p1

    .line 656
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, v5, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v3

    .line 662
    :goto_9
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v3

    .line 663
    :goto_a
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 664
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 668
    :cond_a
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    move v1, v3

    .line 669
    :goto_b
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v3

    .line 670
    :goto_c
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v5, :cond_d

    mul-int/lit8 v5, v2, 0x2

    move v6, v3

    .line 672
    :goto_d
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v7, :cond_b

    mul-int/lit8 v7, v6, 0x2

    .line 674
    aget-object v8, p1, v1

    aget-object v8, v8, v6

    aget-wide v9, v8, v5

    aput-wide v9, v0, v7

    add-int/2addr v7, v4

    add-int/lit8 v9, v5, 0x1

    .line 675
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 677
    :cond_b
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v3

    .line 678
    :goto_e
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v7, :cond_c

    mul-int/lit8 v7, v6, 0x2

    .line 680
    aget-object v8, p1, v1

    aget-object v8, v8, v6

    aget-wide v9, v0, v7

    aput-wide v9, v8, v5

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v7, v4

    .line 681
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

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

    .line 686
    new-array v0, v2, [D

    move v1, v3

    .line 687
    :goto_f
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v3

    .line 688
    :goto_10
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v5, :cond_11

    mul-int/lit8 v5, v2, 0x2

    move v6, v3

    .line 690
    :goto_11
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v7, :cond_f

    mul-int/lit8 v7, v6, 0x2

    .line 692
    aget-object v8, p1, v6

    aget-object v8, v8, v1

    aget-wide v9, v8, v5

    aput-wide v9, v0, v7

    add-int/2addr v7, v4

    add-int/lit8 v9, v5, 0x1

    .line 693
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 695
    :cond_f
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v3

    .line 696
    :goto_12
    iget v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v7, :cond_10

    mul-int/lit8 v7, v6, 0x2

    .line 698
    aget-object v8, p1, v6

    aget-object v8, v8, v1

    aget-wide v9, v0, v7

    aput-wide v9, v8, v5

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v7, v4

    .line 699
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

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

.method public complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 932
    const-class v12, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 934
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v7, 0x1

    const-wide/16 v1, 0x2

    if-eqz v0, :cond_1

    .line 935
    iget-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v1, v14

    .line 936
    iput-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    .line 937
    iget-wide v3, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v3, v1

    iput-wide v3, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 938
    iput-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    if-le v13, v7, :cond_0

    .line 939
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 940
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 941
    invoke-direct {v9, v7, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 943
    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 944
    invoke-direct {v9, v7, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 946
    :goto_0
    iput-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    .line 947
    iget-wide v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v0, v14

    iput-wide v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 948
    iput-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    goto/16 :goto_14

    .line 950
    :cond_1
    iget-wide v3, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long v5, v3, v1

    iget-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v5, v14

    iput-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long v5, v14, v1

    .line 951
    iput-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    const/4 v8, 0x0

    if-le v13, v7, :cond_8

    .line 952
    iget-boolean v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    int-to-long v10, v13

    cmp-long v0, v5, v10

    if-ltz v0, :cond_8

    cmp-long v0, v3, v10

    if-ltz v0, :cond_8

    cmp-long v0, v14, v10

    if-ltz v0, :cond_8

    .line 953
    new-array v14, v13, [Ljava/util/concurrent/Future;

    .line 954
    div-long v15, v5, v10

    move v0, v8

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v15

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 957
    iget-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v15

    :goto_2
    move-wide v5, v1

    .line 959
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$13;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$13;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 973
    :try_start_0
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 977
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

    .line 975
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v13, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v15

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_4

    .line 982
    iget-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    goto :goto_5

    :cond_4
    add-long v1, v3, v15

    :goto_5
    move-wide v5, v1

    .line 984
    new-instance v17, Lorg/jtransforms/fft/DoubleFFT_3D$14;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-wide/from16 v18, v15

    move-object v15, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$14;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v17 .. v17}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v15

    move-wide/from16 v15, v18

    goto :goto_4

    :cond_5
    move-object v15, v8

    .line 1012
    :try_start_1
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1016
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

    .line 1014
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    :goto_6
    iget-wide v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    div-long v10, v0, v10

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v10

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 1022
    iget-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    goto :goto_8

    :cond_6
    add-long v1, v3, v10

    :goto_8
    move-wide v5, v1

    .line 1024
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$15;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D$15;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1052
    :cond_7
    :try_start_2
    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1056
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

    .line 1054
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    const-wide/16 v5, 0x0

    .line 1060
    :goto_9
    iget-wide v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v0, v5, v7

    const-wide/16 v7, 0x1

    if-gez v0, :cond_a

    .line 1061
    iget-wide v10, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v5

    const-wide/16 v12, 0x0

    .line 1062
    :goto_a
    iget-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_9

    .line 1063
    iget-object v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget-wide v14, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v10

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v3, v14, v15, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v7

    goto :goto_a

    :cond_9
    move-object/from16 v3, p1

    move/from16 v4, p2

    add-long/2addr v5, v7

    goto :goto_9

    :cond_a
    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 1066
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    mul-long/2addr v5, v1

    const/4 v10, 0x0

    invoke-direct {v0, v5, v6, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v5, 0x0

    .line 1067
    :goto_b
    iget-wide v11, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v11, v5, v11

    if-gez v11, :cond_e

    .line 1068
    iget-wide v11, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v11, v5

    const-wide/16 v13, 0x0

    .line 1069
    :goto_c
    iget-wide v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v7, v13, v7

    if-gez v7, :cond_d

    mul-long v7, v13, v1

    const-wide/16 v19, 0x0

    .line 1071
    :goto_d
    iget-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v1, v19, v1

    if-gez v1, :cond_b

    add-long v1, v11, v7

    move-wide/from16 v21, v11

    .line 1072
    iget-wide v10, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long v10, v10, v19

    add-long/2addr v1, v10

    move-wide/from16 v23, v5

    const-wide/16 v10, 0x2

    mul-long v5, v19, v10

    .line 1074
    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v5, v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    add-long/2addr v1, v10

    .line 1075
    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v0, v5, v6, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v19, v19, v10

    move-wide/from16 v11, v21

    move-wide/from16 v5, v23

    const/4 v10, 0x0

    goto :goto_d

    :cond_b
    move-wide/from16 v23, v5

    move-wide/from16 v21, v11

    .line 1077
    iget-object v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 1078
    :goto_e
    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_c

    add-long v11, v21, v7

    .line 1079
    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v5, v1

    add-long/2addr v11, v5

    move-wide/from16 v19, v7

    const-wide/16 v5, 0x2

    mul-long v7, v1, v5

    .line 1081
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v3, v11, v12, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    add-long/2addr v7, v5

    .line 1082
    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v3, v11, v12, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v5

    move-wide/from16 v7, v19

    goto :goto_e

    :cond_c
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move-wide/from16 v11, v21

    move-wide/from16 v5, v23

    const-wide/16 v1, 0x2

    const/4 v10, 0x0

    goto :goto_c

    :cond_d
    move-wide/from16 v23, v5

    const-wide/16 v5, 0x1

    add-long v1, v23, v5

    move-wide v7, v5

    const/4 v10, 0x0

    move-wide v5, v1

    const-wide/16 v1, 0x2

    goto/16 :goto_b

    .line 1086
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    const-wide/16 v5, 0x2

    mul-long/2addr v1, v5

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 1087
    :goto_f
    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_12

    .line 1088
    iget-wide v5, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x0

    .line 1089
    :goto_10
    iget-wide v10, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    cmp-long v10, v7, v10

    if-gez v10, :cond_11

    const-wide/16 v10, 0x2

    mul-long v12, v7, v10

    const-wide/16 v14, 0x0

    .line 1091
    :goto_11
    iget-wide v10, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v10, v14, v10

    if-gez v10, :cond_f

    .line 1092
    iget-wide v10, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v10, v14

    add-long/2addr v10, v5

    add-long/2addr v10, v12

    move-wide/from16 v21, v1

    const-wide/16 v19, 0x2

    mul-long v1, v14, v19

    move-wide/from16 v19, v7

    .line 1094
    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    add-long/2addr v10, v7

    .line 1095
    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v1, v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v7

    move-wide/from16 v7, v19

    move-wide/from16 v1, v21

    goto :goto_11

    :cond_f
    move-wide/from16 v21, v1

    move-wide/from16 v19, v7

    .line 1097
    iget-object v1, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v1, 0x0

    .line 1098
    :goto_12
    iget-wide v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->slicesl:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_10

    .line 1099
    iget-wide v7, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    mul-long/2addr v7, v1

    add-long/2addr v7, v5

    add-long/2addr v7, v12

    const-wide/16 v10, 0x2

    mul-long v14, v1, v10

    .line 1101
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v3, v7, v8, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    add-long/2addr v14, v10

    .line 1102
    invoke-virtual {v0, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v3, v7, v8, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v10

    goto :goto_12

    :cond_10
    const-wide/16 v10, 0x1

    add-long v7, v19, v10

    move-wide/from16 v1, v21

    goto :goto_10

    :cond_11
    move-wide/from16 v21, v1

    const-wide/16 v10, 0x1

    add-long v1, v21, v10

    goto :goto_f

    .line 1107
    :cond_12
    :goto_13
    iget-wide v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowsl:J

    iget-wide v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->columnsl:J

    mul-long/2addr v0, v2

    iput-wide v0, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStridel:J

    .line 1108
    iput-wide v2, v9, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStridel:J

    :goto_14
    return-void
.end method

.method public complexInverse([DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 729
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 731
    iget-boolean v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 732
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 733
    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 734
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v3, v2

    iput v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 735
    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v11, v1, :cond_0

    .line 736
    iget-boolean v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_0

    .line 737
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    .line 738
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    .line 741
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 743
    :goto_0
    iput v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 744
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v1, v0

    iput v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 745
    iput v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_14

    .line 747
    :cond_1
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v2, v0, 0x2

    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v2, v3

    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v2, v3, 0x2

    .line 748
    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v11, v1, :cond_8

    .line 749
    iget-boolean v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v2, v11, :cond_8

    if-lt v0, v11, :cond_8

    if-lt v3, v11, :cond_8

    .line 750
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 751
    div-int v14, v2, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 754
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 756
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$10;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 770
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 774
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

    .line 772
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

    .line 779
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 781
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$11;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 809
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

    .line 813
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

    .line 811
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    :goto_6
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 819
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 821
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_3D$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$12;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 849
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

    .line 853
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

    .line 851
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 857
    :goto_9
    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_a

    .line 858
    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v2, v0

    move v3, v12

    .line 859
    :goto_a
    iget v4, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_9

    .line 860
    iget-object v4, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    iget v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-virtual {v4, v8, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 863
    :cond_a
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    move v2, v12

    .line 864
    :goto_b
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_e

    .line 865
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v2

    move v4, v12

    .line 866
    :goto_c
    iget v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v4, v5, :cond_d

    mul-int/lit8 v5, v4, 0x2

    move v6, v12

    .line 868
    :goto_d
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v10, :cond_b

    add-int v10, v3, v5

    .line 869
    iget v11, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x2

    .line 871
    aget-wide v13, v8, v10

    aput-wide v13, v0, v11

    add-int/2addr v11, v1

    add-int/2addr v10, v1

    .line 872
    aget-wide v13, v8, v10

    aput-wide v13, v0, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 874
    :cond_b
    iget-object v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v12

    .line 875
    :goto_e
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v6, v10, :cond_c

    add-int v10, v3, v5

    .line 876
    iget v11, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v11, v6

    add-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x2

    .line 878
    aget-wide v13, v0, v11

    aput-wide v13, v8, v10

    add-int/2addr v10, v1

    add-int/2addr v11, v1

    .line 879
    aget-wide v13, v0, v11

    aput-wide v13, v8, v10

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

    .line 883
    new-array v0, v3, [D

    move v2, v12

    .line 884
    :goto_f
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_12

    .line 885
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v3, v2

    move v4, v12

    .line 886
    :goto_10
    iget v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v4, v5, :cond_11

    mul-int/lit8 v5, v4, 0x2

    move v6, v12

    .line 888
    :goto_11
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v10, :cond_f

    .line 889
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v6, 0x2

    .line 891
    aget-wide v13, v8, v10

    aput-wide v13, v0, v11

    add-int/2addr v11, v1

    add-int/2addr v10, v1

    .line 892
    aget-wide v13, v8, v10

    aput-wide v13, v0, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 894
    :cond_f
    iget-object v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v6, v0, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v12

    .line 895
    :goto_12
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v6, v10, :cond_10

    .line 896
    iget v10, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    add-int/2addr v10, v5

    mul-int/lit8 v11, v6, 0x2

    .line 898
    aget-wide v13, v0, v11

    aput-wide v13, v8, v10

    add-int/2addr v10, v1

    add-int/2addr v11, v1

    .line 899
    aget-wide v13, v0, v11

    aput-wide v13, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 904
    :cond_12
    :goto_13
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 905
    iput v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :goto_14
    return-void
.end method

.method public complexInverse([[[DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 1129
    const-class v10, Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 1130
    iget-boolean v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1131
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v0, 0x2

    .line 1132
    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 1133
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v3, v2

    iput v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 1134
    iput v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v11, v1, :cond_0

    .line 1135
    iget-boolean v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_0

    .line 1136
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    .line 1137
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    goto :goto_0

    .line 1139
    :cond_0
    invoke-direct {v7, v12, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    .line 1140
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 1142
    :goto_0
    iput v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    .line 1143
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/2addr v1, v0

    iput v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    .line 1144
    iput v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_13

    :cond_1
    if-le v11, v1, :cond_8

    .line 1145
    iget-boolean v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v2, v11, :cond_8

    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v2, v11, :cond_8

    .line 1146
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 1147
    div-int v14, v0, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 1150
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 1152
    new-instance v15, Lorg/jtransforms/fft/DoubleFFT_3D$16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$16;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 1165
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1169
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

    .line 1167
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

    .line 1174
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 1176
    new-instance v16, Lorg/jtransforms/fft/DoubleFFT_3D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$17;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1201
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

    .line 1205
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

    .line 1203
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1208
    :goto_6
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 1211
    iget v1, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 1213
    new-instance v14, Lorg/jtransforms/fft/DoubleFFT_3D$18;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/fft/DoubleFFT_3D$18;-><init>(Lorg/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1238
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

    .line 1242
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

    .line 1240
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 1246
    :goto_9
    iget v2, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_a

    move v2, v12

    .line 1247
    :goto_a
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 1248
    iget-object v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftColumns:Lorg/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, v8, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1251
    :cond_a
    iget v0, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    move v2, v12

    .line 1252
    :goto_b
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_e

    move v3, v12

    .line 1253
    :goto_c
    iget v4, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_d

    mul-int/lit8 v4, v3, 0x2

    move v5, v12

    .line 1255
    :goto_d
    iget v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v6, :cond_b

    mul-int/lit8 v6, v5, 0x2

    .line 1257
    aget-object v10, v8, v2

    aget-object v10, v10, v5

    aget-wide v13, v10, v4

    aput-wide v13, v0, v6

    add-int/2addr v6, v1

    add-int/lit8 v11, v4, 0x1

    .line 1258
    aget-wide v13, v10, v11

    aput-wide v13, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1260
    :cond_b
    iget-object v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftRows:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v5, v12

    .line 1261
    :goto_e
    iget v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v6, :cond_c

    mul-int/lit8 v6, v5, 0x2

    .line 1263
    aget-object v10, v8, v2

    aget-object v10, v10, v5

    aget-wide v13, v0, v6

    aput-wide v13, v10, v4

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v6, v1

    .line 1264
    aget-wide v13, v0, v6

    aput-wide v13, v10, v11

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

    .line 1268
    new-array v0, v3, [D

    move v2, v12

    .line 1269
    :goto_f
    iget v3, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_12

    move v3, v12

    .line 1270
    :goto_10
    iget v4, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_11

    mul-int/lit8 v4, v3, 0x2

    move v5, v12

    .line 1272
    :goto_11
    iget v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_f

    mul-int/lit8 v6, v5, 0x2

    .line 1274
    aget-object v10, v8, v5

    aget-object v10, v10, v2

    aget-wide v13, v10, v4

    aput-wide v13, v0, v6

    add-int/2addr v6, v1

    add-int/lit8 v11, v4, 0x1

    .line 1275
    aget-wide v13, v10, v11

    aput-wide v13, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1277
    :cond_f
    iget-object v5, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->fftSlices:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v0, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v5, v12

    .line 1278
    :goto_12
    iget v6, v7, Lorg/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v5, v6, :cond_10

    mul-int/lit8 v6, v5, 0x2

    .line 1280
    aget-object v10, v8, v5

    aget-object v10, v10, v2

    aget-wide v13, v0, v6

    aput-wide v13, v10, v4

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v6, v1

    .line 1281
    aget-wide v13, v0, v6

    aput-wide v13, v10, v11

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

.method public realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 8

    .line 1410
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1413
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 1414
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1415
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1416
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1417
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1419
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1420
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1421
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_0
    return-void

    .line 1411
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realForward([D)V
    .locals 3

    .line 1341
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1344
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1345
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[DZ)V

    .line 1347
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    .line 1348
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_0

    .line 1350
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[DZ)V

    .line 1351
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 1352
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    :goto_0
    return-void

    .line 1342
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForward([[[D)V
    .locals 3

    .line 1469
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1472
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1473
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1474
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[[[DZ)V

    .line 1475
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    .line 1476
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_0

    .line 1478
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[[[DZ)V

    .line 1479
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 1480
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    :goto_0
    return-void

    .line 1470
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 8

    .line 1530
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1531
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v0, v7, :cond_0

    .line 1532
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1533
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1534
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1535
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x1

    const-wide/16 v1, 0x1

    move-object v0, p0

    move-object v4, p1

    .line 1537
    invoke-direct/range {v0 .. v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1538
    invoke-direct {p0, v6, p1, v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1539
    invoke-direct {p0, v7, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1541
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    .line 1543
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_1
    return-void
.end method

.method public realForwardFull([D)V
    .locals 3

    .line 1499
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1500
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1501
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1502
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    .line 1503
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    .line 1504
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_0

    .line 1506
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    .line 1507
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 1508
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    .line 1510
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([D)V

    goto :goto_1

    .line 1512
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([D)V

    :goto_1
    return-void
.end method

.method public realForwardFull([[[D)V
    .locals 3

    .line 1561
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1562
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1563
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1564
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    .line 1565
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    .line 1566
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_0

    .line 1568
    :cond_0
    invoke-direct {p0, v2, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    .line 1569
    invoke-direct {p0, v1, p1, v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 1570
    invoke-direct {p0, v2, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    .line 1572
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V

    goto :goto_1

    .line 1574
    :cond_1
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([[[D)V

    :goto_1
    return-void
.end method

.method public realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 13

    .line 1700
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1703
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1704
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1705
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1706
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    move-object v7, p1

    move v8, p2

    .line 1707
    invoke-direct/range {v3 .. v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_0

    .line 1709
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1710
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    move-object v11, p1

    move v12, p2

    .line 1711
    invoke-direct/range {v7 .. v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    :goto_0
    return-void

    .line 1701
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([DZ)V
    .locals 3

    .line 1631
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1634
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1635
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1636
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    .line 1637
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    .line 1638
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[DZ)V

    goto :goto_0

    .line 1640
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    .line 1641
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 1642
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[DZ)V

    :goto_0
    return-void

    .line 1632
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverse([[[DZ)V
    .locals 3

    .line 1759
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1762
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1763
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1764
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    .line 1765
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    .line 1766
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[[[DZ)V

    goto :goto_0

    .line 1768
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    .line 1769
    invoke-direct {p0, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 1770
    invoke-direct {p0, v2, v2, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[[[DZ)V

    :goto_0
    return-void

    .line 1760
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be power of two numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 12

    .line 1818
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1819
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1820
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    .line 1821
    invoke-direct/range {v2 .. v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1822
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1823
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    move-object v6, p0

    move-object v10, p1

    move v11, p2

    .line 1825
    invoke-direct/range {v6 .. v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1826
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 1827
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 1829
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto :goto_1

    .line 1831
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    :goto_1
    return-void
.end method

.method public realInverseFull([DZ)V
    .locals 2

    .line 1788
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1789
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1790
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1791
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    .line 1792
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    .line 1793
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_0

    .line 1795
    :cond_0
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    .line 1796
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    .line 1797
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    .line 1799
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([D)V

    goto :goto_1

    .line 1801
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull([DZ)V

    :goto_1
    return-void
.end method

.method public realInverseFull([[[DZ)V
    .locals 2

    .line 1848
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_1

    .line 1849
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1850
    iget-boolean v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 1851
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    .line 1852
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    .line 1853
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_0

    .line 1855
    :cond_0
    invoke-direct {p0, v1, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    .line 1856
    invoke-direct {p0, v1, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    .line 1857
    invoke-direct {p0, v1, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    .line 1859
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V

    goto :goto_1

    .line 1861
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull([[[DZ)V

    :goto_1
    return-void
.end method
