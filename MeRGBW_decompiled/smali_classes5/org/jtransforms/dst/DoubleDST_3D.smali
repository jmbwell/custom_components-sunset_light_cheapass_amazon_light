.class public Lorg/jtransforms/dst/DoubleDST_3D;
.super Ljava/lang/Object;
.source "DoubleDST_3D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

.field private dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

.field private dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    .line 75
    iput-boolean v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    cmp-long v3, p3, v1

    if-lez v3, :cond_6

    cmp-long v1, p5, v1

    if-lez v1, :cond_6

    long-to-int v1, p1

    .line 89
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    long-to-int v1, p3

    .line 90
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    long-to-int v1, p5

    .line 91
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    .line 92
    iput-wide p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    .line 93
    iput-wide p3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    .line 94
    iput-wide p5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    mul-long v2, p3, p5

    long-to-int v4, v2

    .line 95
    iput v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    .line 96
    iput v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    .line 97
    iput-wide v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    .line 98
    iput-wide p5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long v1, p1, p3

    mul-long/2addr v1, p5

    .line 99
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 100
    iput-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    .line 102
    :cond_0
    invoke-static {p1, p2}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3, p4}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p5, p6}, Lorg/jtransforms/utils/CommonUtils;->isPowerOf2(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iput-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    .line 105
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v3

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 106
    new-instance v0, Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    .line 108
    iput-object v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-direct {v0, p3, p4}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    :goto_0
    cmp-long p1, p1, p5

    if-nez p1, :cond_4

    .line 113
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    goto :goto_1

    :cond_4
    cmp-long p1, p3, p5

    if-nez p1, :cond_5

    .line 115
    iget-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    goto :goto_1

    .line 117
    :cond_5
    new-instance p1, Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-direct {p1, p5, p6}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    :goto_1
    return-void

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dst/DoubleDST_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dst/DoubleDST_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    return p0
.end method

.method static synthetic access$1000(Lorg/jtransforms/dst/DoubleDST_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jtransforms/dst/DoubleDST_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dst/DoubleDST_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jtransforms/dst/DoubleDST_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    return p0
.end method

.method static synthetic access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    return-object p0
.end method

.method static synthetic access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/jtransforms/dst/DoubleDST_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    return-wide v0
.end method

.method private ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1125
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1126
    iget-wide v7, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1129
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_8

    const-wide/16 v3, 0x0

    .line 1131
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_11

    .line 1132
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v17, 0x0

    .line 1133
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v8, v17, v13

    if-gez v8, :cond_1

    .line 1134
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    int-to-long v13, v13

    mul-long v13, v13, v17

    add-long/2addr v13, v5

    invoke-virtual {v8, v1, v13, v14, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v17, v17, v15

    goto :goto_1

    .line 1136
    :cond_1
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v8, v13, v9

    if-lez v8, :cond_5

    const-wide/16 v13, 0x0

    .line 1137
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v8, v13, v11

    if-gez v8, :cond_4

    const-wide/16 v11, 0x0

    .line 1138
    :goto_3
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v8, v11, v9

    if-gez v8, :cond_2

    move-wide/from16 v21, v3

    .line 1139
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v3, v11

    add-long/2addr v3, v5

    add-long/2addr v3, v13

    add-long/2addr v9, v11

    move-wide/from16 v23, v13

    .line 1141
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v3, v15

    .line 1142
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1143
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v13, v9

    move-wide/from16 v25, v5

    const-wide/16 v19, 0x2

    add-long v5, v3, v19

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v13, v14, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1144
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    mul-long v5, v5, v19

    add-long/2addr v9, v5

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v9, v10, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    move-wide/from16 v3, v21

    move-wide/from16 v13, v23

    move-wide/from16 v5, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v21, v3

    move-wide/from16 v25, v5

    move-wide/from16 v23, v13

    .line 1146
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1147
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1148
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1149
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1150
    :goto_4
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_3

    .line 1151
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v8, v3

    add-long v8, v25, v8

    add-long v8, v8, v23

    add-long/2addr v5, v3

    .line 1153
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1154
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1155
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1156
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v19, 0x2

    mul-long v10, v10, v19

    add-long/2addr v5, v10

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_4

    :cond_3
    const-wide/16 v3, 0x4

    const-wide/16 v19, 0x2

    add-long v13, v23, v3

    move-wide/from16 v9, v19

    move-wide/from16 v3, v21

    move-wide/from16 v5, v25

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v21, v3

    goto :goto_7

    :cond_5
    move-wide/from16 v21, v3

    move-wide/from16 v25, v5

    move-wide/from16 v19, v9

    cmp-long v3, v13, v19

    if-nez v3, :cond_7

    const-wide/16 v3, 0x0

    .line 1160
    :goto_5
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_6

    .line 1161
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v5, v3

    add-long v5, v25, v5

    .line 1162
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1163
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v8, v3

    add-long/2addr v5, v15

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_5

    .line 1165
    :cond_6
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1166
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1167
    :goto_6
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    .line 1168
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v5, v3

    add-long v5, v25, v5

    .line 1169
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    .line 1170
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_6

    :cond_7
    :goto_7
    add-long v3, v21, v15

    const-wide/16 v9, 0x2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v4, 0x0

    .line 1175
    :goto_8
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_11

    .line 1176
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 1177
    :goto_9
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v3, v10, v12

    if-gez v3, :cond_9

    .line 1178
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v12, v10

    add-long/2addr v12, v8

    invoke-virtual {v3, v1, v12, v13, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v10, v15

    goto :goto_9

    .line 1180
    :cond_9
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v12, 0x2

    cmp-long v3, v10, v12

    if-lez v3, :cond_d

    const-wide/16 v10, 0x0

    .line 1181
    :goto_a
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v3, v10, v12

    move-wide/from16 v21, v4

    if-gez v3, :cond_c

    const-wide/16 v12, 0x0

    .line 1182
    :goto_b
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v5, v12, v3

    if-gez v5, :cond_a

    .line 1183
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v5, v12

    add-long/2addr v5, v8

    add-long/2addr v5, v10

    add-long/2addr v3, v12

    move-wide/from16 v23, v10

    .line 1185
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v15

    .line 1186
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1187
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v10, v3

    move-wide/from16 v25, v8

    const-wide/16 v19, 0x2

    add-long v8, v5, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1188
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    mul-long v8, v8, v19

    add-long/2addr v3, v8

    const-wide/16 v8, 0x3

    add-long/2addr v5, v8

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v15

    move-wide/from16 v10, v23

    move-wide/from16 v8, v25

    goto :goto_b

    :cond_a
    move-wide/from16 v25, v8

    move-wide/from16 v23, v10

    .line 1190
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1191
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1192
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1193
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1194
    :goto_c
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_b

    .line 1195
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v25, v10

    add-long v10, v10, v23

    add-long/2addr v8, v4

    .line 1197
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v15

    .line 1198
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x2

    add-long v12, v10, v2

    .line 1199
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v2, v8

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x3

    add-long/2addr v10, v2

    .line 1200
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const-wide/16 v17, 0x2

    mul-long v12, v12, v17

    add-long/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v15

    move/from16 v2, p3

    goto :goto_c

    :cond_b
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    const-wide/16 v17, 0x2

    add-long v10, v23, v4

    move/from16 v2, p3

    move-wide/from16 v4, v21

    move-wide/from16 v8, v25

    goto/16 :goto_a

    :cond_c
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    const-wide/16 v17, 0x2

    goto :goto_f

    :cond_d
    move-wide/from16 v21, v4

    move-wide/from16 v25, v8

    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    const-wide/16 v17, 0x2

    cmp-long v6, v10, v17

    if-nez v6, :cond_f

    const-wide/16 v8, 0x0

    .line 1204
    :goto_d
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_e

    .line 1205
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v25, v10

    .line 1206
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1207
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_d

    .line 1209
    :cond_e
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    move/from16 v10, p3

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1210
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    invoke-virtual {v6, v7, v11, v12, v10}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v11, v8

    .line 1211
    :goto_e
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_10

    .line 1212
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v13, v11

    add-long v13, v25, v13

    .line 1213
    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    .line 1214
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    add-long/2addr v2, v11

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    const-wide/16 v2, 0x3

    goto :goto_e

    :cond_f
    :goto_f
    move/from16 v10, p3

    const-wide/16 v8, 0x0

    :cond_10
    add-long v2, v21, v15

    move-wide v4, v2

    move v2, v10

    goto/16 :goto_8

    :cond_11
    return-void
.end method

.method private ddxt3da_sub(I[DZ)V
    .locals 12

    .line 1026
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1027
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1030
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    move p1, v3

    .line 1032
    :goto_0
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge p1, v1, :cond_e

    .line 1033
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 1034
    :goto_1
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_1

    .line 1035
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    invoke-virtual {v5, p2, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1037
    :cond_1
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-le v4, v2, :cond_4

    move v4, v3

    .line 1038
    :goto_2
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v4, v5, :cond_6

    move v5, v3

    .line 1039
    :goto_3
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_2

    .line 1040
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1042
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1043
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1044
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1045
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1047
    :cond_2
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1048
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1049
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1050
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v5, v3

    .line 1051
    :goto_4
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_3

    .line 1052
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1054
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1055
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1056
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1057
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    :cond_4
    if-ne v4, v2, :cond_6

    move v4, v3

    .line 1061
    :goto_5
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_5

    .line 1062
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1063
    aget-wide v7, p2, v6

    aput-wide v7, v0, v4

    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    .line 1064
    aget-wide v6, p2, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1066
    :cond_5
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1067
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v4, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v4, v3

    .line 1068
    :goto_6
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_6

    .line 1069
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1070
    aget-wide v7, v0, v4

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v4

    .line 1071
    aget-wide v7, v0, v5

    aput-wide v7, p2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v3

    .line 1076
    :goto_7
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge p1, v1, :cond_e

    .line 1077
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 1078
    :goto_8
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_8

    .line 1079
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    invoke-virtual {v5, p2, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1081
    :cond_8
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-le v4, v2, :cond_b

    move v4, v3

    .line 1082
    :goto_9
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v4, v5, :cond_d

    move v5, v3

    .line 1083
    :goto_a
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_9

    .line 1084
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1086
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1087
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1088
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1089
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1091
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1092
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1093
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1094
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v5, v3

    .line 1095
    :goto_b
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_a

    .line 1096
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1098
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1099
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1100
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1101
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v4, v4, 0x4

    goto :goto_9

    :cond_b
    if-ne v4, v2, :cond_d

    move v4, v3

    .line 1105
    :goto_c
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 1106
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1107
    aget-wide v7, p2, v6

    aput-wide v7, v0, v4

    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    .line 1108
    aget-wide v6, p2, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1110
    :cond_c
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1111
    iget-object v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v4, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v4, v3

    .line 1112
    :goto_d
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_d

    .line 1113
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1114
    aget-wide v7, v0, v4

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v4

    .line 1115
    aget-wide v7, v0, v5

    aput-wide v7, p2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    :cond_e
    return-void
.end method

.method private ddxt3da_sub(I[[[DZ)V
    .locals 12

    .line 1224
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1225
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1228
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_7

    move p1, v4

    .line 1231
    :goto_0
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge p1, v1, :cond_e

    move v1, v4

    .line 1232
    :goto_1
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_1

    .line 1233
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v6, p2, p1

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1235
    :cond_1
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-le v1, v2, :cond_4

    move v1, v4

    .line 1236
    :goto_2
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v1, v5, :cond_6

    move v5, v4

    .line 1237
    :goto_3
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_2

    add-int v7, v6, v5

    .line 1239
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v8, v1

    aput-wide v9, v0, v5

    add-int/lit8 v9, v1, 0x1

    .line 1240
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int v9, v7, v6

    add-int/lit8 v10, v1, 0x2

    .line 1241
    aget-wide v10, v8, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v1, 0x3

    .line 1242
    aget-wide v9, v8, v6

    aput-wide v9, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1244
    :cond_2
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1245
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1246
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1247
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v5, v4

    .line 1248
    :goto_4
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_3

    add-int v7, v6, v5

    .line 1250
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v0, v5

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    .line 1251
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x2

    add-int v10, v7, v6

    .line 1252
    aget-wide v10, v0, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 1253
    aget-wide v6, v0, v7

    aput-wide v6, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_6

    move v1, v4

    .line 1257
    :goto_5
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_5

    .line 1258
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v5, v1

    .line 1259
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1261
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1262
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v1, v4

    .line 1263
    :goto_6
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_6

    .line 1264
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, v4

    add-int/2addr v5, v1

    .line 1265
    aget-wide v7, v0, v5

    aput-wide v7, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v4

    .line 1270
    :goto_7
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge p1, v1, :cond_e

    move v1, v4

    .line 1271
    :goto_8
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_8

    .line 1272
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v6, p2, p1

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1274
    :cond_8
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-le v1, v2, :cond_b

    move v1, v4

    .line 1275
    :goto_9
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v1, v5, :cond_d

    move v5, v4

    .line 1276
    :goto_a
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_9

    add-int v7, v6, v5

    .line 1278
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v8, v1

    aput-wide v9, v0, v5

    add-int/lit8 v9, v1, 0x1

    .line 1279
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int v9, v7, v6

    add-int/lit8 v10, v1, 0x2

    .line 1280
    aget-wide v10, v8, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v1, 0x3

    .line 1281
    aget-wide v9, v8, v6

    aput-wide v9, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1283
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1284
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1285
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1286
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v5, v4

    .line 1287
    :goto_b
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v5, v6, :cond_a

    add-int v7, v6, v5

    .line 1289
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v0, v5

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    .line 1290
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x2

    add-int v10, v7, v6

    .line 1291
    aget-wide v10, v0, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 1292
    aget-wide v6, v0, v7

    aput-wide v6, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x4

    goto :goto_9

    :cond_b
    if-ne v1, v2, :cond_d

    move v1, v4

    .line 1296
    :goto_c
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_c

    .line 1297
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v5, v1

    .line 1298
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1300
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1301
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v1, v4

    .line 1302
    :goto_d
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v5, :cond_d

    .line 1303
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, v4

    add-int/2addr v5, v1

    .line 1304
    aget-wide v7, v0, v5

    aput-wide v7, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    :cond_e
    return-void
.end method

.method private ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 1717
    const-class v12, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    :goto_0
    long-to-int v0, v2

    const-wide/16 v1, 0x4

    .line 1719
    iget-wide v3, v11, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    mul-long/2addr v3, v1

    .line 1720
    iget-wide v1, v11, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 1724
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 1728
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$20;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dst/DoubleDST_3D$20;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1828
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1832
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1830
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt3da_subth(I[DZ)V
    .locals 15

    move-object v9, p0

    .line 1596
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1598
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1599
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1603
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1607
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$19;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$19;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1707
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1711
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

    .line 1709
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt3da_subth(I[[[DZ)V
    .locals 15

    move-object v9, p0

    .line 1838
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1839
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1840
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1844
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1848
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$21;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$21;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1938
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1942
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

    .line 1940
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1412
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1413
    iget-wide v7, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1416
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_7

    .line 1418
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v8, v3, v9

    if-lez v8, :cond_4

    const-wide/16 v3, 0x0

    .line 1419
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1420
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v17, 0x0

    .line 1421
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v8, v17, v13

    if-gez v8, :cond_3

    const-wide/16 v13, 0x0

    .line 1422
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v8, v13, v11

    if-gez v8, :cond_1

    .line 1423
    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v9, v13

    add-long/2addr v9, v5

    add-long v9, v9, v17

    add-long/2addr v11, v13

    move-wide/from16 v23, v3

    .line 1425
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v9, v15

    .line 1426
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v11, v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1427
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v3, v11

    move-wide/from16 v25, v5

    const-wide/16 v21, 0x2

    add-long v5, v9, v21

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1428
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    mul-long v3, v3, v21

    add-long/2addr v11, v3

    const-wide/16 v3, 0x3

    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v11, v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    move-wide/from16 v3, v23

    move-wide/from16 v5, v25

    const-wide/16 v9, 0x2

    goto :goto_2

    :cond_1
    move-wide/from16 v23, v3

    move-wide/from16 v25, v5

    .line 1430
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1431
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1432
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1433
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1434
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_2

    .line 1435
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v8, v3

    add-long v8, v8, v25

    add-long v8, v8, v17

    add-long/2addr v5, v3

    .line 1437
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1438
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1439
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1440
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    add-long/2addr v5, v10

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_3

    :cond_2
    const-wide/16 v3, 0x4

    const-wide/16 v12, 0x2

    add-long v17, v17, v3

    move-wide v9, v12

    move-wide/from16 v3, v23

    move-wide/from16 v5, v25

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v23, v3

    move-wide v12, v9

    add-long v3, v23, v15

    goto/16 :goto_0

    :cond_4
    move-wide v12, v9

    cmp-long v3, v3, v12

    if-nez v3, :cond_e

    const-wide/16 v3, 0x0

    .line 1445
    :goto_4
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1446
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 1447
    :goto_5
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_5

    .line 1448
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v5

    .line 1449
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1450
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_5

    .line 1452
    :cond_5
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v7, v9, v10, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1453
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v9, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    invoke-virtual {v8, v7, v9, v10, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v8, 0x0

    .line 1454
    :goto_6
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_6

    .line 1455
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v5

    .line 1456
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v15

    .line 1457
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_6

    :cond_6
    add-long/2addr v3, v15

    goto :goto_4

    .line 1461
    :cond_7
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    const-wide/16 v4, 0x0

    .line 1462
    :goto_7
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_e

    .line 1463
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 1464
    :goto_8
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v3, v10, v12

    if-gez v3, :cond_a

    move-wide/from16 v17, v4

    const-wide/16 v12, 0x0

    .line 1465
    :goto_9
    iget-wide v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v5, v12, v3

    if-gez v5, :cond_8

    .line 1466
    iget-wide v5, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v5, v12

    add-long/2addr v5, v8

    add-long/2addr v5, v10

    add-long/2addr v3, v12

    move-wide/from16 v23, v10

    .line 1468
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v15

    .line 1469
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1470
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v10, v3

    move-wide/from16 v25, v8

    const-wide/16 v21, 0x2

    add-long v8, v5, v21

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1471
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    mul-long v8, v8, v21

    add-long/2addr v3, v8

    const-wide/16 v8, 0x3

    add-long/2addr v5, v8

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v15

    move-wide/from16 v10, v23

    move-wide/from16 v8, v25

    goto :goto_9

    :cond_8
    move-wide/from16 v25, v8

    move-wide/from16 v23, v10

    .line 1473
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1474
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1475
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1476
    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v4, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1478
    :goto_a
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_9

    .line 1479
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v10, v4

    add-long v10, v10, v25

    add-long v10, v10, v23

    add-long/2addr v8, v4

    .line 1481
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v15

    .line 1482
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x2

    add-long v2, v10, v12

    .line 1483
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x3

    add-long/2addr v10, v2

    .line 1484
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const-wide/16 v19, 0x2

    mul-long v12, v12, v19

    add-long/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v15

    move/from16 v2, p3

    goto :goto_a

    :cond_9
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    const-wide/16 v19, 0x2

    add-long v10, v23, v4

    move/from16 v2, p3

    move-wide/from16 v4, v17

    move-wide/from16 v8, v25

    goto/16 :goto_8

    :cond_a
    move-wide/from16 v17, v4

    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x4

    const-wide/16 v19, 0x2

    add-long v8, v17, v15

    move/from16 v2, p3

    move-wide v4, v8

    goto/16 :goto_7

    :cond_b
    const-wide/16 v19, 0x2

    cmp-long v2, v3, v19

    if-nez v2, :cond_e

    const-wide/16 v4, 0x0

    .line 1489
    :goto_b
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_e

    .line 1490
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v2, v4

    const-wide/16 v8, 0x0

    .line 1491
    :goto_c
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_c

    .line 1492
    iget-wide v10, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v2

    .line 1493
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1494
    iget-wide v12, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_c

    .line 1496
    :cond_c
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    move/from16 v10, p3

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1497
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v11, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    invoke-virtual {v6, v7, v11, v12, v10}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v11, v8

    .line 1498
    :goto_d
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_d

    .line 1499
    iget-wide v13, v0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v13, v11

    add-long/2addr v13, v2

    .line 1500
    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    .line 1501
    iget-wide v8, v0, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    add-long/2addr v8, v11

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    const-wide/16 v8, 0x0

    goto :goto_d

    :cond_d
    add-long/2addr v4, v15

    goto :goto_b

    :cond_e
    return-void
.end method

.method private ddxt3db_sub(I[DZ)V
    .locals 12

    .line 1314
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1315
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1318
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v4

    .line 1321
    :goto_0
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1322
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v3, v4

    .line 1323
    :goto_1
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v5, :cond_3

    move v5, v4

    .line 1324
    :goto_2
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v5, v6, :cond_1

    .line 1325
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1327
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1328
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1329
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1330
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1332
    :cond_1
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1333
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1334
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1335
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v5, v4

    .line 1336
    :goto_3
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v5, v6, :cond_2

    .line 1337
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1339
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1340
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1341
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1342
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    if-ne v1, v2, :cond_e

    move p1, v4

    .line 1347
    :goto_4
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1348
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v2, v4

    .line 1349
    :goto_5
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v2, v3, :cond_5

    .line 1350
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1351
    aget-wide v6, p2, v5

    aput-wide v6, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    .line 1352
    aget-wide v5, p2, v5

    aput-wide v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1354
    :cond_5
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1355
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v2, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v2, v4

    .line 1356
    :goto_6
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v2, v3, :cond_6

    .line 1357
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1358
    aget-wide v6, v0, v2

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v2

    .line 1359
    aget-wide v6, v0, v3

    aput-wide v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    if-le v1, v2, :cond_b

    move p1, v4

    .line 1364
    :goto_7
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1365
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v3, v4

    .line 1366
    :goto_8
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v5, :cond_a

    move v5, v4

    .line 1367
    :goto_9
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v5, v6, :cond_8

    .line 1368
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1370
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1371
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1372
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1373
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1375
    :cond_8
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1376
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1377
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1378
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v5, v4

    .line 1380
    :goto_a
    iget v6, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v5, v6, :cond_9

    .line 1381
    iget v7, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1383
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1384
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1385
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1386
    aget-wide v8, v0, v8

    aput-wide v8, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v3, v3, 0x4

    goto :goto_8

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    :cond_b
    if-ne v1, v2, :cond_e

    move p1, v4

    .line 1391
    :goto_b
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1392
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v2, v4

    .line 1393
    :goto_c
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v2, v3, :cond_c

    .line 1394
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1395
    aget-wide v6, p2, v5

    aput-wide v6, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    .line 1396
    aget-wide v5, p2, v5

    aput-wide v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1398
    :cond_c
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v2, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1399
    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v2, v0, v3, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v2, v4

    .line 1400
    :goto_d
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v2, v3, :cond_d

    .line 1401
    iget v5, p0, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1402
    aget-wide v6, v0, v2

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v2

    .line 1403
    aget-wide v6, v0, v3

    aput-wide v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private ddxt3db_sub(I[[[DZ)V
    .locals 11

    .line 1510
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1511
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1514
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v5

    .line 1518
    :goto_0
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1519
    :goto_1
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v1, v3, :cond_3

    move v3, v5

    .line 1520
    :goto_2
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_1

    add-int v6, v4, v3

    .line 1522
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v7, v1

    aput-wide v8, v0, v3

    add-int/lit8 v8, v1, 0x1

    .line 1523
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v4

    add-int/lit8 v9, v1, 0x2

    .line 1524
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x3

    .line 1525
    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1527
    :cond_1
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1528
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1529
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/2addr v4, v2

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1530
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v3, v5

    .line 1531
    :goto_3
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_2

    add-int v6, v4, v3

    .line 1533
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v0, v3

    aput-wide v8, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 1534
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    add-int v9, v6, v4

    .line 1535
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 1536
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_e

    move p1, v5

    .line 1541
    :goto_4
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1542
    :goto_5
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_5

    .line 1543
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    .line 1544
    aget-wide v6, v3, v4

    aput-wide v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1546
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 1547
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v1, v0, v2, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v1, v5

    .line 1548
    :goto_6
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_6

    .line 1549
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v0, v1

    aput-wide v6, v3, v5

    add-int/2addr v2, v1

    .line 1550
    aget-wide v6, v0, v2

    aput-wide v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    if-le v1, v2, :cond_b

    move p1, v5

    .line 1555
    :goto_7
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1556
    :goto_8
    iget v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v1, v3, :cond_a

    move v3, v5

    .line 1557
    :goto_9
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_8

    add-int v6, v4, v3

    .line 1559
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v7, v1

    aput-wide v8, v0, v3

    add-int/lit8 v8, v1, 0x1

    .line 1560
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v4

    add-int/lit8 v9, v1, 0x2

    .line 1561
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x3

    .line 1562
    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1564
    :cond_8
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1565
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1566
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/2addr v4, v2

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1567
    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v3, v5

    .line 1569
    :goto_a
    iget v4, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_9

    add-int v6, v4, v3

    .line 1571
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v0, v3

    aput-wide v8, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 1572
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    add-int v9, v6, v4

    .line 1573
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 1574
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v1, v1, 0x4

    goto :goto_8

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_b
    if-ne v1, v2, :cond_e

    move p1, v5

    .line 1579
    :goto_b
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1580
    :goto_c
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_c

    .line 1581
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    .line 1582
    aget-wide v6, v3, v4

    aput-wide v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1584
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 1585
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    invoke-virtual {v1, v0, v2, p3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v1, v5

    .line 1586
    :goto_d
    iget v2, p0, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_d

    .line 1587
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v0, v1

    aput-wide v6, v3, v5

    add-int/2addr v2, v1

    .line 1588
    aget-wide v6, v0, v2

    aput-wide v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 18

    move-object/from16 v11, p0

    .line 2067
    const-class v12, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v2, v0

    :goto_0
    long-to-int v0, v2

    const-wide/16 v1, 0x4

    .line 2068
    iget-wide v3, v11, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    mul-long/2addr v3, v1

    .line 2069
    iget-wide v1, v11, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 2073
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 2077
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$23;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dst/DoubleDST_3D$23;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2176
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2180
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 2178
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt3db_subth(I[DZ)V
    .locals 15

    move-object v9, p0

    .line 1948
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1949
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 1950
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1954
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1958
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$22;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$22;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2057
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2061
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

    .line 2059
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private ddxt3db_subth(I[[[DZ)V
    .locals 15

    move-object v9, p0

    .line 2186
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 2187
    iget v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 2188
    iget v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 2192
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 2196
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$24;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$24;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2283
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2287
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

    .line 2285
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 290
    const-class v12, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 291
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v13, v1, :cond_0

    .line 292
    iget-boolean v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 293
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 294
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    .line 296
    :cond_0
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 297
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    :cond_1
    if-le v13, v1, :cond_8

    .line 299
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    int-to-long v7, v13

    cmp-long v2, v0, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    .line 300
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 301
    div-long v16, v0, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 304
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    goto :goto_1

    :cond_2
    add-long v1, v3, v16

    :goto_1
    move-wide v5, v1

    .line 305
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$4;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_0

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 319
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 323
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 321
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v13, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_4

    .line 328
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    goto :goto_4

    :cond_4
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 329
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$5;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$5;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    goto :goto_3

    :cond_5
    move-object v14, v8

    .line 352
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 356
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 354
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    :goto_5
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    div-long v16, v0, v19

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 362
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v16

    :goto_7
    move-wide v5, v1

    .line 363
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$6;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$6;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 386
    :cond_7
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 390
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 388
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    const-wide/16 v2, 0x0

    .line 394
    :goto_8
    iget-wide v4, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 395
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v7, v2

    const-wide/16 v12, 0x0

    .line 396
    :goto_9
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 397
    iget-object v4, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v7

    invoke-virtual {v4, v10, v14, v15, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v5

    goto :goto_9

    :cond_9
    add-long/2addr v2, v5

    goto :goto_8

    .line 400
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 401
    :goto_a
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 402
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v7, v3

    const-wide/16 v12, 0x0

    .line 403
    :goto_b
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    const-wide/16 v14, 0x0

    .line 404
    :goto_c
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 405
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v0, v14

    add-long/2addr v0, v7

    add-long/2addr v0, v12

    .line 406
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    goto :goto_c

    .line 408
    :cond_b
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v0, v2, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 409
    :goto_d
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v14, v0, v14

    if-gez v14, :cond_c

    .line 410
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v14, v0

    add-long/2addr v14, v7

    add-long/2addr v14, v12

    move-wide/from16 v18, v7

    .line 411
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v10, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-wide/from16 v7, v18

    goto :goto_d

    :cond_c
    move-wide/from16 v18, v7

    add-long/2addr v12, v5

    goto :goto_b

    :cond_d
    add-long/2addr v3, v5

    goto :goto_a

    .line 415
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 416
    :goto_e
    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 417
    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x0

    .line 418
    :goto_f
    iget-wide v12, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_11

    const-wide/16 v12, 0x0

    .line 419
    :goto_10
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_f

    .line 420
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    .line 421
    invoke-virtual {v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    goto :goto_10

    .line 423
    :cond_f
    iget-object v12, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v12, v0, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v12, 0x0

    .line 424
    :goto_11
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 425
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    move-wide/from16 v18, v3

    .line 426
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v10, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    move-wide/from16 v3, v18

    goto :goto_11

    :cond_10
    move-wide/from16 v18, v3

    add-long/2addr v7, v5

    goto :goto_f

    :cond_11
    add-long/2addr v1, v5

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method

.method public forward([DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 134
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 135
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v11, v1, :cond_0

    .line 136
    iget-boolean v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(I[DZ)V

    .line 138
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(I[DZ)V

    goto/16 :goto_12

    .line 140
    :cond_0
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(I[DZ)V

    .line 141
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(I[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 143
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 144
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 145
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 148
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 149
    new-instance v15, Lorg/jtransforms/dst/DoubleDST_3D$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$1;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 163
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 167
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 165
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v12

    :goto_3
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 172
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 173
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$2;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 200
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 198
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    :goto_5
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 206
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 207
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$3;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$3;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 230
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 234
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 232
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 238
    :goto_8
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 239
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v12

    .line 240
    :goto_9
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 241
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v8, v4, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 244
    :cond_a
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 245
    :goto_a
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 246
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 247
    :goto_b
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v12

    .line 248
    :goto_c
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 249
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 250
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 252
    :cond_b
    iget-object v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v4, v12

    .line 253
    :goto_d
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 254
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 255
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 259
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 260
    :goto_e
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 261
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 262
    :goto_f
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v12

    .line 263
    :goto_10
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 264
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 265
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 267
    :cond_f
    iget-object v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v4, v12

    .line 268
    :goto_11
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 269
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 270
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method

.method public forward([[[DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 442
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 443
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v11, v1, :cond_0

    .line 444
    iget-boolean v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(I[[[DZ)V

    .line 446
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(I[[[DZ)V

    goto/16 :goto_12

    .line 448
    :cond_0
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(I[[[DZ)V

    .line 449
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(I[[[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 451
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 452
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 453
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 456
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 457
    new-instance v15, Lorg/jtransforms/dst/DoubleDST_3D$7;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$7;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 470
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 474
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 472
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v12

    :goto_3
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 479
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 480
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$8;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$8;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 500
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 504
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 502
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :goto_5
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 510
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 511
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$9;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$9;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 531
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 535
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 533
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 539
    :goto_8
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v12

    .line 540
    :goto_9
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 541
    iget-object v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v3, v8, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 544
    :cond_a
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 545
    :goto_a
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v12

    .line 546
    :goto_b
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v2, v3, :cond_d

    move v3, v12

    .line 547
    :goto_c
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v3, v4, :cond_b

    .line 548
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 550
    :cond_b
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v3, v12

    .line 551
    :goto_d
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v3, v4, :cond_c

    .line 552
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 556
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 557
    :goto_e
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v12

    .line 558
    :goto_f
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v2, v3, :cond_11

    move v3, v12

    .line 559
    :goto_10
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_f

    .line 560
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 562
    :cond_f
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    move v3, v12

    .line 563
    :goto_11
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_10

    .line 564
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 741
    const-class v12, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 742
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v13, v1, :cond_0

    .line 743
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 745
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    .line 747
    :cond_0
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 748
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    :cond_1
    if-le v13, v1, :cond_8

    .line 750
    iget-boolean v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    int-to-long v7, v13

    cmp-long v2, v0, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    .line 751
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 752
    div-long v16, v0, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 755
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    goto :goto_1

    :cond_2
    add-long v1, v3, v16

    :goto_1
    move-wide v5, v1

    .line 756
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$13;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$13;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_0

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 770
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 774
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 772
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v13, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_4

    .line 779
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    goto :goto_4

    :cond_4
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 780
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$14;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$14;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    goto :goto_3

    :cond_5
    move-object v14, v8

    .line 803
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 807
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 805
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    :goto_5
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    div-long v16, v0, v19

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 813
    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v16

    :goto_7
    move-wide v5, v1

    .line 814
    new-instance v18, Lorg/jtransforms/dst/DoubleDST_3D$15;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dst/DoubleDST_3D$15;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 837
    :cond_7
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 841
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 839
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    const-wide/16 v2, 0x0

    .line 845
    :goto_8
    iget-wide v4, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 846
    iget v4, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    int-to-long v7, v4

    mul-long/2addr v7, v2

    const-wide/16 v12, 0x0

    .line 847
    :goto_9
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 848
    iget-object v4, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    int-to-long v14, v14

    mul-long/2addr v14, v12

    add-long/2addr v14, v7

    invoke-virtual {v4, v10, v14, v15, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v5

    goto :goto_9

    :cond_9
    add-long/2addr v2, v5

    goto :goto_8

    .line 851
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 852
    :goto_a
    iget-wide v7, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 853
    iget v7, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    int-to-long v7, v7

    mul-long/2addr v7, v3

    const-wide/16 v12, 0x0

    .line 854
    :goto_b
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    const-wide/16 v14, 0x0

    .line 855
    :goto_c
    iget-wide v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 856
    iget v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    int-to-long v0, v0

    mul-long/2addr v0, v14

    add-long/2addr v0, v7

    add-long/2addr v0, v12

    .line 857
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    goto :goto_c

    .line 859
    :cond_b
    iget-object v0, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v0, v2, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 860
    :goto_d
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v14, v0, v14

    if-gez v14, :cond_c

    .line 861
    iget v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    int-to-long v14, v14

    mul-long/2addr v14, v0

    add-long/2addr v14, v7

    add-long/2addr v14, v12

    move-wide/from16 v18, v7

    .line 862
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v10, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-wide/from16 v7, v18

    goto :goto_d

    :cond_c
    move-wide/from16 v18, v7

    add-long/2addr v12, v5

    goto :goto_b

    :cond_d
    add-long/2addr v3, v5

    goto :goto_a

    .line 866
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 867
    :goto_e
    iget-wide v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 868
    iget v3, v9, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    int-to-long v3, v3

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x0

    .line 869
    :goto_f
    iget-wide v12, v9, Lorg/jtransforms/dst/DoubleDST_3D;->columnsl:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_11

    const-wide/16 v12, 0x0

    .line 870
    :goto_10
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_f

    .line 871
    iget v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    int-to-long v14, v14

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    .line 872
    invoke-virtual {v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    goto :goto_10

    .line 874
    :cond_f
    iget-object v12, v9, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v12, v0, v11}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v12, 0x0

    .line 875
    :goto_11
    iget-wide v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 876
    iget v14, v9, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    int-to-long v14, v14

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    move-wide/from16 v18, v3

    .line 877
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v10, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    move-wide/from16 v3, v18

    goto :goto_11

    :cond_10
    move-wide/from16 v18, v3

    add-long/2addr v7, v5

    goto :goto_f

    :cond_11
    add-long/2addr v1, v5

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method

.method public inverse([DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 584
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 585
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 586
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(I[DZ)V

    .line 588
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(I[DZ)V

    goto/16 :goto_12

    .line 590
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(I[DZ)V

    .line 591
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(I[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 593
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 594
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 595
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 598
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 599
    new-instance v15, Lorg/jtransforms/dst/DoubleDST_3D$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$10;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 613
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 617
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 615
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v12

    :goto_3
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 622
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 623
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$11;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 646
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 650
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 648
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    :goto_5
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 656
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 657
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$12;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 680
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 684
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 682
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 688
    :goto_8
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 689
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v12

    .line 690
    :goto_9
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 691
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v8, v4, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 694
    :cond_a
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 695
    :goto_a
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 696
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 697
    :goto_b
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v12

    .line 698
    :goto_c
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 699
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 700
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 702
    :cond_b
    iget-object v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v4, v12

    .line 703
    :goto_d
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 704
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 705
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 709
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 710
    :goto_e
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 711
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 712
    :goto_f
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v12

    .line 713
    :goto_10
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 714
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 715
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 717
    :cond_f
    iget-object v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v4, v12

    .line 718
    :goto_11
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 719
    iget v5, v7, Lorg/jtransforms/dst/DoubleDST_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 720
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method

.method public inverse([[[DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 894
    const-class v10, Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 895
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 896
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 897
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(I[[[DZ)V

    .line 898
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(I[[[DZ)V

    goto/16 :goto_12

    .line 900
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3da_sub(I[[[DZ)V

    .line 901
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_sub(I[[[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 903
    iget-boolean v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 904
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 905
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 908
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 909
    new-instance v15, Lorg/jtransforms/dst/DoubleDST_3D$16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$16;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 922
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 926
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 924
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v12

    :goto_3
    if-ge v0, v11, :cond_5

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 931
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 932
    new-instance v16, Lorg/jtransforms/dst/DoubleDST_3D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$17;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 952
    :cond_5
    :try_start_1
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 956
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 954
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    :goto_5
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 962
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 963
    new-instance v14, Lorg/jtransforms/dst/DoubleDST_3D$18;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dst/DoubleDST_3D$18;-><init>(Lorg/jtransforms/dst/DoubleDST_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 983
    :cond_7
    :try_start_2
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_12

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 987
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 985
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 991
    :goto_8
    iget v1, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v12

    .line 992
    :goto_9
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 993
    iget-object v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstColumns:Lorg/jtransforms/dst/DoubleDST_1D;

    aget-object v3, v8, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 996
    :cond_a
    iget v0, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 997
    :goto_a
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v12

    .line 998
    :goto_b
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v2, v3, :cond_d

    move v3, v12

    .line 999
    :goto_c
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v3, v4, :cond_b

    .line 1000
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1002
    :cond_b
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstRows:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v3, v12

    .line 1003
    :goto_d
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v3, v4, :cond_c

    .line 1004
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1008
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 1009
    :goto_e
    iget v2, v7, Lorg/jtransforms/dst/DoubleDST_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v12

    .line 1010
    :goto_f
    iget v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->columns:I

    if-ge v2, v3, :cond_11

    move v3, v12

    .line 1011
    :goto_10
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_f

    .line 1012
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1014
    :cond_f
    iget-object v3, v7, Lorg/jtransforms/dst/DoubleDST_3D;->dstSlices:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v3, v12

    .line 1015
    :goto_11
    iget v4, v7, Lorg/jtransforms/dst/DoubleDST_3D;->slices:I

    if-ge v3, v4, :cond_10

    .line 1016
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    :goto_12
    return-void
.end method
