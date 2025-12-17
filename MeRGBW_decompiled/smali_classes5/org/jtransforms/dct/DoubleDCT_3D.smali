.class public Lorg/jtransforms/dct/DoubleDCT_3D;
.super Ljava/lang/Object;
.source "DoubleDCT_3D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

.field private dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

.field private dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    .line 76
    iput-boolean v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    cmp-long v3, p3, v1

    if-lez v3, :cond_6

    cmp-long v1, p5, v1

    if-lez v1, :cond_6

    long-to-int v1, p1

    .line 90
    iput v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    long-to-int v1, p3

    .line 91
    iput v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    long-to-int v1, p5

    .line 92
    iput v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    .line 93
    iput-wide p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    .line 94
    iput-wide p3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    .line 95
    iput-wide p5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    mul-long v2, p3, p5

    long-to-int v4, v2

    .line 96
    iput v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    .line 97
    iput v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    .line 98
    iput-wide v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    .line 99
    iput-wide p5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long v1, p1, p3

    mul-long/2addr v1, p5

    .line 100
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 101
    iput-boolean v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    .line 103
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

    .line 104
    iput-boolean v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    .line 106
    :cond_1
    invoke-static {}, Lpl/edu/icm/jlargearrays/LargeArray;->getMaxSizeOf32bitArray()I

    move-result v3

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    move v0, v4

    :cond_2
    invoke-static {v0}, Lorg/jtransforms/utils/CommonUtils;->setUseLargeArrays(Z)V

    .line 107
    new-instance v0, Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dct/DoubleDCT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    .line 109
    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-direct {v0, p3, p4}, Lorg/jtransforms/dct/DoubleDCT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    :goto_0
    cmp-long p1, p1, p5

    if-nez p1, :cond_4

    .line 114
    iget-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    goto :goto_1

    :cond_4
    cmp-long p1, p3, p5

    if-nez p1, :cond_5

    .line 116
    iget-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    goto :goto_1

    .line 118
    :cond_5
    new-instance p1, Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-direct {p1, p5, p6}, Lorg/jtransforms/dct/DoubleDCT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    :goto_1
    return-void

    .line 88
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dct/DoubleDCT_3D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dct/DoubleDCT_3D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    return p0
.end method

.method static synthetic access$1000(Lorg/jtransforms/dct/DoubleDCT_3D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/jtransforms/dct/DoubleDCT_3D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/jtransforms/dct/DoubleDCT_3D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jtransforms/dct/DoubleDCT_3D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dct/DoubleDCT_3D;)Lorg/jtransforms/dct/DoubleDCT_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dct/DoubleDCT_3D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/dct/DoubleDCT_3D;)Lorg/jtransforms/dct/DoubleDCT_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jtransforms/dct/DoubleDCT_3D;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    return p0
.end method

.method static synthetic access$700(Lorg/jtransforms/dct/DoubleDCT_3D;)Lorg/jtransforms/dct/DoubleDCT_1D;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    return-object p0
.end method

.method static synthetic access$800(Lorg/jtransforms/dct/DoubleDCT_3D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/jtransforms/dct/DoubleDCT_3D;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    return-wide v0
.end method

.method private ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1124
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1125
    iget-wide v7, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1128
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_8

    const-wide/16 v3, 0x0

    .line 1130
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_11

    .line 1131
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v17, 0x0

    .line 1132
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v8, v17, v13

    if-gez v8, :cond_1

    .line 1133
    iget-object v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long v13, v13, v17

    add-long/2addr v13, v5

    invoke-virtual {v8, v1, v13, v14, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v17, v17, v15

    goto :goto_1

    .line 1135
    :cond_1
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v8, v13, v9

    if-lez v8, :cond_5

    const-wide/16 v13, 0x0

    .line 1136
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v8, v13, v11

    if-gez v8, :cond_4

    const-wide/16 v11, 0x0

    .line 1137
    :goto_3
    iget-wide v9, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v8, v11, v9

    if-gez v8, :cond_2

    move-wide/from16 v21, v3

    .line 1138
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v3, v11

    add-long/2addr v3, v5

    add-long/2addr v3, v13

    add-long/2addr v9, v11

    move-wide/from16 v23, v13

    .line 1140
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v3, v15

    .line 1141
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1142
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v13, v9

    move-wide/from16 v25, v5

    const-wide/16 v19, 0x2

    add-long v5, v3, v19

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v13, v14, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1143
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1145
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1146
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1147
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1148
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1149
    :goto_4
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_3

    .line 1150
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v8, v3

    add-long v8, v25, v8

    add-long v8, v8, v23

    add-long/2addr v5, v3

    .line 1152
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1153
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1154
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1155
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1159
    :goto_5
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_6

    .line 1160
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    add-long v5, v25, v5

    .line 1161
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v3, v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1162
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v8, v3

    add-long/2addr v5, v15

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_5

    .line 1164
    :cond_6
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1165
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1166
    :goto_6
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    .line 1167
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    add-long v5, v25, v5

    .line 1168
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v5, v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    .line 1169
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1174
    :goto_8
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_11

    .line 1175
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 1176
    :goto_9
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v3, v10, v12

    if-gez v3, :cond_9

    .line 1177
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v12, v10

    add-long/2addr v12, v8

    invoke-virtual {v3, v1, v12, v13, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v10, v15

    goto :goto_9

    .line 1179
    :cond_9
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v12, 0x2

    cmp-long v3, v10, v12

    if-lez v3, :cond_d

    const-wide/16 v10, 0x0

    .line 1180
    :goto_a
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v3, v10, v12

    move-wide/from16 v21, v4

    if-gez v3, :cond_c

    const-wide/16 v12, 0x0

    .line 1181
    :goto_b
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v5, v12, v3

    if-gez v5, :cond_a

    .line 1182
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v5, v12

    add-long/2addr v5, v8

    add-long/2addr v5, v10

    add-long/2addr v3, v12

    move-wide/from16 v23, v10

    .line 1184
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v15

    .line 1185
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1186
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v10, v3

    move-wide/from16 v25, v8

    const-wide/16 v19, 0x2

    add-long v8, v5, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1187
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1189
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1190
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1191
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1192
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1193
    :goto_c
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_b

    .line 1194
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v10, v4

    add-long v10, v25, v10

    add-long v10, v10, v23

    add-long/2addr v8, v4

    .line 1196
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v15

    .line 1197
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x2

    add-long v12, v10, v2

    .line 1198
    iget-wide v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v2, v8

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x3

    add-long/2addr v10, v2

    .line 1199
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1203
    :goto_d
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_e

    .line 1204
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v10, v8

    add-long v10, v25, v10

    .line 1205
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1206
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_d

    .line 1208
    :cond_e
    iget-object v6, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    move/from16 v10, p3

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1209
    iget-object v6, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v11, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    invoke-virtual {v6, v7, v11, v12, v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v11, v8

    .line 1210
    :goto_e
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_10

    .line 1211
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v13, v11

    add-long v13, v25, v13

    .line 1212
    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    .line 1213
    iget-wide v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 1025
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1026
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1029
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    move p1, v3

    .line 1031
    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge p1, v1, :cond_e

    .line 1032
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 1033
    :goto_1
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_1

    .line 1034
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    invoke-virtual {v5, p2, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1036
    :cond_1
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-le v4, v2, :cond_4

    move v4, v3

    .line 1037
    :goto_2
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v4, v5, :cond_6

    move v5, v3

    .line 1038
    :goto_3
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_2

    .line 1039
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1041
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1042
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1043
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1044
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1046
    :cond_2
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1047
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1048
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1049
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v5, v3

    .line 1050
    :goto_4
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_3

    .line 1051
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1053
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1054
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1055
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1056
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

    .line 1060
    :goto_5
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_5

    .line 1061
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1062
    aget-wide v7, p2, v6

    aput-wide v7, v0, v4

    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    .line 1063
    aget-wide v6, p2, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1065
    :cond_5
    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1066
    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v4, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v4, v3

    .line 1067
    :goto_6
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_6

    .line 1068
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1069
    aget-wide v7, v0, v4

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v4

    .line 1070
    aget-wide v7, v0, v5

    aput-wide v7, p2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v3

    .line 1075
    :goto_7
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge p1, v1, :cond_e

    .line 1076
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 1077
    :goto_8
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_8

    .line 1078
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    invoke-virtual {v5, p2, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1080
    :cond_8
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-le v4, v2, :cond_b

    move v4, v3

    .line 1081
    :goto_9
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v4, v5, :cond_d

    move v5, v3

    .line 1082
    :goto_a
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_9

    .line 1083
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1085
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1086
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1087
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1088
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1090
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1091
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1092
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1093
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v5, v3

    .line 1094
    :goto_b
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_a

    .line 1095
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1097
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1098
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1099
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1100
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

    .line 1104
    :goto_c
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 1105
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1106
    aget-wide v7, p2, v6

    aput-wide v7, v0, v4

    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    .line 1107
    aget-wide v6, p2, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1109
    :cond_c
    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1110
    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v4, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v4, v3

    .line 1111
    :goto_d
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_d

    .line 1112
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1113
    aget-wide v7, v0, v4

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v4

    .line 1114
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

    .line 1223
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1224
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1227
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_7

    move p1, v4

    .line 1229
    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge p1, v1, :cond_e

    move v1, v4

    .line 1230
    :goto_1
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_1

    .line 1231
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    aget-object v6, p2, p1

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1233
    :cond_1
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-le v1, v2, :cond_4

    move v1, v4

    .line 1234
    :goto_2
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v1, v5, :cond_6

    move v5, v4

    .line 1235
    :goto_3
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_2

    add-int v7, v6, v5

    .line 1237
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v8, v1

    aput-wide v9, v0, v5

    add-int/lit8 v9, v1, 0x1

    .line 1238
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int v9, v7, v6

    add-int/lit8 v10, v1, 0x2

    .line 1239
    aget-wide v10, v8, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v1, 0x3

    .line 1240
    aget-wide v9, v8, v6

    aput-wide v9, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1242
    :cond_2
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1243
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1244
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1245
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v5, v4

    .line 1246
    :goto_4
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_3

    add-int v7, v6, v5

    .line 1248
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v0, v5

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    .line 1249
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x2

    add-int v10, v7, v6

    .line 1250
    aget-wide v10, v0, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 1251
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

    .line 1255
    :goto_5
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_5

    .line 1256
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v5, v1

    .line 1257
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1259
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1260
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v1, v4

    .line 1261
    :goto_6
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_6

    .line 1262
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, v4

    add-int/2addr v5, v1

    .line 1263
    aget-wide v7, v0, v5

    aput-wide v7, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v4

    .line 1268
    :goto_7
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge p1, v1, :cond_e

    move v1, v4

    .line 1269
    :goto_8
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_8

    .line 1270
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    aget-object v6, p2, p1

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1272
    :cond_8
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-le v1, v2, :cond_b

    move v1, v4

    .line 1273
    :goto_9
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v1, v5, :cond_d

    move v5, v4

    .line 1274
    :goto_a
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_9

    add-int v7, v6, v5

    .line 1276
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v8, v1

    aput-wide v9, v0, v5

    add-int/lit8 v9, v1, 0x1

    .line 1277
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int v9, v7, v6

    add-int/lit8 v10, v1, 0x2

    .line 1278
    aget-wide v10, v8, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v1, 0x3

    .line 1279
    aget-wide v9, v8, v6

    aput-wide v9, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1281
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1282
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1283
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1284
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v5, v4

    .line 1285
    :goto_b
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v5, v6, :cond_a

    add-int v7, v6, v5

    .line 1287
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v0, v5

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    .line 1288
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x2

    add-int v10, v7, v6

    .line 1289
    aget-wide v10, v0, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 1290
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

    .line 1294
    :goto_c
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_c

    .line 1295
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v5, v1

    .line 1296
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1298
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1299
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v1, v4

    .line 1300
    :goto_d
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v5, :cond_d

    .line 1301
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, v4

    add-int/2addr v5, v1

    .line 1302
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

    .line 1712
    const-class v12, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1713
    iget-wide v3, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    mul-long/2addr v3, v1

    .line 1714
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 1717
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 1721
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$20;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_3D$20;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1821
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1825
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

    .line 1823
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

    .line 1593
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1594
    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1595
    iget v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1598
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1602
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$19;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$19;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1702
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1706
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

    .line 1704
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

    .line 1831
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1832
    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1833
    iget v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1837
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1841
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$21;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$21;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1931
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1935
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

    .line 1933
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

    .line 1410
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1411
    iget-wide v7, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1414
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_7

    .line 1416
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v8, v3, v9

    if-lez v8, :cond_4

    const-wide/16 v3, 0x0

    .line 1417
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1418
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v17, 0x0

    .line 1419
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v8, v17, v13

    if-gez v8, :cond_3

    const-wide/16 v13, 0x0

    .line 1420
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v8, v13, v11

    if-gez v8, :cond_1

    .line 1421
    iget-wide v9, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v9, v13

    add-long/2addr v9, v5

    add-long v9, v9, v17

    add-long/2addr v11, v13

    move-wide/from16 v23, v3

    .line 1423
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v13, v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v9, v15

    .line 1424
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v11, v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1425
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v3, v11

    move-wide/from16 v25, v5

    const-wide/16 v21, 0x2

    add-long v5, v9, v21

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1426
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1428
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1429
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1430
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1431
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1432
    :goto_3
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_2

    .line 1433
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v8, v3

    add-long v8, v8, v25

    add-long v8, v8, v17

    add-long/2addr v5, v3

    .line 1435
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1436
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1437
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1438
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1443
    :goto_4
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1444
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 1445
    :goto_5
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_5

    .line 1446
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v5

    .line 1447
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1448
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_5

    .line 1450
    :cond_5
    iget-object v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v7, v9, v10, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1451
    iget-object v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v9, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    invoke-virtual {v8, v7, v9, v10, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v8, 0x0

    .line 1452
    :goto_6
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_6

    .line 1453
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v5

    .line 1454
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v15

    .line 1455
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_6

    :cond_6
    add-long/2addr v3, v15

    goto :goto_4

    .line 1459
    :cond_7
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    const-wide/16 v4, 0x0

    .line 1460
    :goto_7
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_e

    .line 1461
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 1462
    :goto_8
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v3, v10, v12

    if-gez v3, :cond_a

    move-wide/from16 v17, v4

    const-wide/16 v12, 0x0

    .line 1463
    :goto_9
    iget-wide v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v5, v12, v3

    if-gez v5, :cond_8

    .line 1464
    iget-wide v5, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v5, v12

    add-long/2addr v5, v8

    add-long/2addr v5, v10

    add-long/2addr v3, v12

    move-wide/from16 v23, v10

    .line 1466
    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v5, v15

    .line 1467
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1468
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v10, v3

    move-wide/from16 v25, v8

    const-wide/16 v21, 0x2

    add-long v8, v5, v21

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1469
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1471
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1472
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1473
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1474
    iget-object v3, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 1476
    :goto_a
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_9

    .line 1477
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v10, v4

    add-long v10, v10, v25

    add-long v10, v10, v23

    add-long/2addr v8, v4

    .line 1479
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v10, v15

    .line 1480
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v12, 0x2

    add-long v2, v10, v12

    .line 1481
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v2, v3, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x3

    add-long/2addr v10, v2

    .line 1482
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1487
    :goto_b
    iget-wide v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_e

    .line 1488
    iget-wide v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v2, v4

    const-wide/16 v8, 0x0

    .line 1489
    :goto_c
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_c

    .line 1490
    iget-wide v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v2

    .line 1491
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1492
    iget-wide v12, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_c

    .line 1494
    :cond_c
    iget-object v6, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    move/from16 v10, p3

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1495
    iget-object v6, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v11, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    invoke-virtual {v6, v7, v11, v12, v10}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v11, v8

    .line 1496
    :goto_d
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v6, v11, v13

    if-gez v6, :cond_d

    .line 1497
    iget-wide v13, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v13, v11

    add-long/2addr v13, v2

    .line 1498
    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    .line 1499
    iget-wide v8, v0, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

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

    .line 1312
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1313
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1316
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v4

    .line 1319
    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1320
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v3, v4

    .line 1321
    :goto_1
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v5, :cond_3

    move v5, v4

    .line 1322
    :goto_2
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v5, v6, :cond_1

    .line 1323
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1325
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1326
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1327
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1328
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1330
    :cond_1
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1331
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1332
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1333
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v5, v4

    .line 1334
    :goto_3
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v5, v6, :cond_2

    .line 1335
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1337
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1338
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1339
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1340
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

    .line 1345
    :goto_4
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1346
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v2, v4

    .line 1347
    :goto_5
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v2, v3, :cond_5

    .line 1348
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1349
    aget-wide v6, p2, v5

    aput-wide v6, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    .line 1350
    aget-wide v5, p2, v5

    aput-wide v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1352
    :cond_5
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v2, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1353
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v2, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v2, v4

    .line 1354
    :goto_6
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v2, v3, :cond_6

    .line 1355
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1356
    aget-wide v6, v0, v2

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v2

    .line 1357
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

    .line 1362
    :goto_7
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1363
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v3, v4

    .line 1364
    :goto_8
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v5, :cond_a

    move v5, v4

    .line 1365
    :goto_9
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v5, v6, :cond_8

    .line 1366
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1368
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1369
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1370
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1371
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1373
    :cond_8
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1374
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1375
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1376
    iget-object v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v5, v4

    .line 1378
    :goto_a
    iget v6, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v5, v6, :cond_9

    .line 1379
    iget v7, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1381
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1382
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1383
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1384
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

    .line 1389
    :goto_b
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1390
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v2, v4

    .line 1391
    :goto_c
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v2, v3, :cond_c

    .line 1392
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1393
    aget-wide v6, p2, v5

    aput-wide v6, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    .line 1394
    aget-wide v5, p2, v5

    aput-wide v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1396
    :cond_c
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v2, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1397
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v2, v0, v3, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v2, v4

    .line 1398
    :goto_d
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v2, v3, :cond_d

    .line 1399
    iget v5, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1400
    aget-wide v6, v0, v2

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v2

    .line 1401
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

    .line 1508
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1509
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1512
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v5

    .line 1515
    :goto_0
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1516
    :goto_1
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v1, v3, :cond_3

    move v3, v5

    .line 1517
    :goto_2
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_1

    add-int v6, v4, v3

    .line 1519
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v7, v1

    aput-wide v8, v0, v3

    add-int/lit8 v8, v1, 0x1

    .line 1520
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v4

    add-int/lit8 v9, v1, 0x2

    .line 1521
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x3

    .line 1522
    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1524
    :cond_1
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1525
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1526
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/2addr v4, v2

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1527
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v3, v5

    .line 1528
    :goto_3
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_2

    add-int v6, v4, v3

    .line 1530
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v0, v3

    aput-wide v8, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 1531
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    add-int v9, v6, v4

    .line 1532
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 1533
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

    .line 1538
    :goto_4
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1539
    :goto_5
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_5

    .line 1540
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    .line 1541
    aget-wide v6, v3, v4

    aput-wide v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1543
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    .line 1544
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v1, v0, v2, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    move v1, v5

    .line 1545
    :goto_6
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_6

    .line 1546
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v0, v1

    aput-wide v6, v3, v5

    add-int/2addr v2, v1

    .line 1547
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

    .line 1552
    :goto_7
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1553
    :goto_8
    iget v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v1, v3, :cond_a

    move v3, v5

    .line 1554
    :goto_9
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_8

    add-int v6, v4, v3

    .line 1556
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v7, v1

    aput-wide v8, v0, v3

    add-int/lit8 v8, v1, 0x1

    .line 1557
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v4

    add-int/lit8 v9, v1, 0x2

    .line 1558
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x3

    .line 1559
    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1561
    :cond_8
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1562
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1563
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/2addr v4, v2

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1564
    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v3, v5

    .line 1566
    :goto_a
    iget v4, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_9

    add-int v6, v4, v3

    .line 1568
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v0, v3

    aput-wide v8, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 1569
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    add-int v9, v6, v4

    .line 1570
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 1571
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

    .line 1576
    :goto_b
    iget v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1577
    :goto_c
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_c

    .line 1578
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    .line 1579
    aget-wide v6, v3, v4

    aput-wide v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1581
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    .line 1582
    iget-object v1, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    invoke-virtual {v1, v0, v2, p3}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    move v1, v5

    .line 1583
    :goto_d
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_d

    .line 1584
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v0, v1

    aput-wide v6, v3, v5

    add-int/2addr v2, v1

    .line 1585
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

    .line 2059
    const-class v12, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

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

    .line 2060
    iget-wide v3, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    mul-long/2addr v3, v1

    .line 2061
    iget-wide v1, v11, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 2065
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 2068
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$23;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dct/DoubleDCT_3D$23;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2167
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2171
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

    .line 2169
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

    .line 1941
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1942
    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 1943
    iget v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1947
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1950
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$22;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$22;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2049
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2053
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

    .line 2051
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

    .line 2177
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 2178
    iget v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 2179
    iget v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 2183
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 2187
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$24;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$24;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2274
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2278
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

    .line 2276
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

    .line 291
    const-class v12, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 292
    iget-boolean v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v13, v1, :cond_0

    .line 293
    iget-boolean v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 294
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 295
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    .line 297
    :cond_0
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 298
    invoke-direct {v9, v0, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    :cond_1
    if-le v13, v1, :cond_8

    .line 300
    iget-boolean v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    int-to-long v7, v13

    cmp-long v2, v0, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    .line 301
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 302
    div-long v16, v0, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 305
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    goto :goto_1

    :cond_2
    add-long v1, v3, v16

    :goto_1
    move-wide v5, v1

    .line 306
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$4;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_0

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 320
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 324
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

    .line 322
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

    .line 329
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    goto :goto_4

    :cond_4
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 330
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$5;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$5;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    goto :goto_3

    :cond_5
    move-object v14, v8

    .line 353
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 357
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

    .line 355
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :goto_5
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    div-long v16, v0, v19

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 363
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v16

    :goto_7
    move-wide v5, v1

    .line 364
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$6;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$6;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 387
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

    .line 391
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

    .line 389
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    const-wide/16 v2, 0x0

    .line 395
    :goto_8
    iget-wide v4, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 396
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v7, v2

    const-wide/16 v12, 0x0

    .line 397
    :goto_9
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 398
    iget-object v4, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v7

    invoke-virtual {v4, v10, v14, v15, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v5

    goto :goto_9

    :cond_9
    add-long/2addr v2, v5

    goto :goto_8

    .line 401
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 402
    :goto_a
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 403
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v7, v3

    const-wide/16 v12, 0x0

    .line 404
    :goto_b
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    const-wide/16 v14, 0x0

    .line 405
    :goto_c
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 406
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v0, v14

    add-long/2addr v0, v7

    add-long/2addr v0, v12

    .line 407
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    goto :goto_c

    .line 409
    :cond_b
    iget-object v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v0, v2, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 410
    :goto_d
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v14, v0, v14

    if-gez v14, :cond_c

    .line 411
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v14, v0

    add-long/2addr v14, v7

    add-long/2addr v14, v12

    move-wide/from16 v18, v7

    .line 412
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

    .line 416
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 417
    :goto_e
    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 418
    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x0

    .line 419
    :goto_f
    iget-wide v12, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_11

    const-wide/16 v12, 0x0

    .line 420
    :goto_10
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_f

    .line 421
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    .line 422
    invoke-virtual {v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    goto :goto_10

    .line 424
    :cond_f
    iget-object v12, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v12, v0, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v12, 0x0

    .line 425
    :goto_11
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 426
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    move-wide/from16 v18, v3

    .line 427
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

    .line 135
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 136
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v11, v1, :cond_0

    .line 137
    iget-boolean v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(I[DZ)V

    .line 139
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(I[DZ)V

    goto/16 :goto_12

    .line 141
    :cond_0
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(I[DZ)V

    .line 142
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(I[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 144
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 145
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 146
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 149
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 150
    new-instance v15, Lorg/jtransforms/dct/DoubleDCT_3D$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$1;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 164
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 168
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

    .line 166
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

    .line 173
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 174
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$2;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 197
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

    .line 201
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

    .line 199
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_5
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 207
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 208
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$3;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$3;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 231
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

    .line 235
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

    .line 233
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 239
    :goto_8
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 240
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v12

    .line 241
    :goto_9
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 242
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v8, v4, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 245
    :cond_a
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 246
    :goto_a
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 247
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 248
    :goto_b
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v12

    .line 249
    :goto_c
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 250
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 251
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 253
    :cond_b
    iget-object v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    move v4, v12

    .line 254
    :goto_d
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 255
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 256
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

    .line 260
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 261
    :goto_e
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 262
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 263
    :goto_f
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v12

    .line 264
    :goto_10
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 265
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 266
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 268
    :cond_f
    iget-object v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    move v4, v12

    .line 269
    :goto_11
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 270
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 271
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

    .line 443
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 444
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v11, v1, :cond_0

    .line 445
    iget-boolean v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 446
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(I[[[DZ)V

    .line 447
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(I[[[DZ)V

    goto/16 :goto_12

    .line 449
    :cond_0
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(I[[[DZ)V

    .line 450
    invoke-direct {v7, v0, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(I[[[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 452
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 453
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 454
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 457
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 458
    new-instance v15, Lorg/jtransforms/dct/DoubleDCT_3D$7;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$7;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 471
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 475
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

    .line 473
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

    .line 480
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 481
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$8;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$8;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 501
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

    .line 505
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

    .line 503
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    :goto_5
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 511
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 512
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$9;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$9;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 532
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

    .line 536
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

    .line 534
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 540
    :goto_8
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v12

    .line 541
    :goto_9
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 542
    iget-object v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    aget-object v3, v8, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 545
    :cond_a
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 546
    :goto_a
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v12

    .line 547
    :goto_b
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v2, v3, :cond_d

    move v3, v12

    .line 548
    :goto_c
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v3, v4, :cond_b

    .line 549
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 551
    :cond_b
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    move v3, v12

    .line 552
    :goto_d
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v3, v4, :cond_c

    .line 553
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

    .line 557
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 558
    :goto_e
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v12

    .line 559
    :goto_f
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v2, v3, :cond_11

    move v3, v12

    .line 560
    :goto_10
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_f

    .line 561
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 563
    :cond_f
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    move v3, v12

    .line 564
    :goto_11
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_10

    .line 565
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
    const-class v12, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 742
    iget-boolean v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v13, v1, :cond_0

    .line 743
    iget-boolean v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 744
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 745
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    .line 747
    :cond_0
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 748
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto/16 :goto_12

    :cond_1
    if-le v13, v1, :cond_8

    .line 750
    iget-boolean v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    int-to-long v7, v13

    cmp-long v2, v0, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

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
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    goto :goto_1

    :cond_2
    add-long v1, v3, v16

    :goto_1
    move-wide v5, v1

    .line 756
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$13;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$13;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

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
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    goto :goto_4

    :cond_4
    add-long v1, v3, v16

    :goto_4
    move-wide v5, v1

    .line 780
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$14;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$14;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

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
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    div-long v16, v0, v19

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 813
    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    goto :goto_7

    :cond_6
    add-long v1, v3, v16

    :goto_7
    move-wide v5, v1

    .line 814
    new-instance v18, Lorg/jtransforms/dct/DoubleDCT_3D$15;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dct/DoubleDCT_3D$15;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

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
    iget-wide v4, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 846
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v7, v2

    const-wide/16 v12, 0x0

    .line 847
    :goto_9
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 848
    iget-object v4, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v7

    invoke-virtual {v4, v10, v14, v15, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v5

    goto :goto_9

    :cond_9
    add-long/2addr v2, v5

    goto :goto_8

    .line 851
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 852
    :goto_a
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 853
    iget-wide v7, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

    mul-long/2addr v7, v3

    const-wide/16 v12, 0x0

    .line 854
    :goto_b
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    const-wide/16 v14, 0x0

    .line 855
    :goto_c
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 856
    iget-wide v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

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
    iget-object v0, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v0, v2, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 860
    :goto_d
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v14, v0, v14

    if-gez v14, :cond_c

    .line 861
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

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

    iget-wide v1, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 867
    :goto_e
    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 868
    iget-wide v3, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x0

    .line 869
    :goto_f
    iget-wide v12, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->columnsl:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_11

    const-wide/16 v12, 0x0

    .line 870
    :goto_10
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_f

    .line 871
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

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
    iget-object v12, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v12, v0, v11}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v12, 0x0

    .line 875
    :goto_11
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 876
    iget-wide v14, v9, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStridel:J

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

    .line 585
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 586
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 587
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(I[DZ)V

    .line 589
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(I[DZ)V

    goto/16 :goto_12

    .line 591
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(I[DZ)V

    .line 592
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(I[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 594
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 595
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 596
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 599
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 600
    new-instance v15, Lorg/jtransforms/dct/DoubleDCT_3D$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$10;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 614
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 618
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

    .line 616
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

    .line 623
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 624
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$11;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 647
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

    .line 651
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

    .line 649
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    :goto_5
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 657
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 658
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$12;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 681
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

    .line 685
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

    .line 683
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 689
    :goto_8
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 690
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v12

    .line 691
    :goto_9
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 692
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v8, v4, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 695
    :cond_a
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 696
    :goto_a
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 697
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 698
    :goto_b
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v12

    .line 699
    :goto_c
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 700
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 701
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 703
    :cond_b
    iget-object v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    move v4, v12

    .line 704
    :goto_d
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 705
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 706
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

    .line 710
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 711
    :goto_e
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 712
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 713
    :goto_f
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v12

    .line 714
    :goto_10
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 715
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 716
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 718
    :cond_f
    iget-object v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    move v4, v12

    .line 719
    :goto_11
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 720
    iget v5, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 721
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

    .line 893
    const-class v10, Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 894
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 895
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 896
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_subth(I[[[DZ)V

    .line 897
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_subth(I[[[DZ)V

    goto/16 :goto_12

    .line 899
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3da_sub(I[[[DZ)V

    .line 900
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->ddxt3db_sub(I[[[DZ)V

    goto/16 :goto_12

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 902
    iget-boolean v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 903
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 904
    div-int v14, v0, v11

    move v0, v12

    :goto_0
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 907
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_1

    :cond_2
    add-int v1, v3, v14

    :goto_1
    move v4, v1

    .line 908
    new-instance v15, Lorg/jtransforms/dct/DoubleDCT_3D$16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$16;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .line 921
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 925
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

    .line 923
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

    .line 930
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    goto :goto_4

    :cond_4
    add-int v1, v3, v14

    :goto_4
    move v4, v1

    .line 931
    new-instance v16, Lorg/jtransforms/dct/DoubleDCT_3D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$17;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 951
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

    .line 955
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

    .line 953
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 958
    :goto_5
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_6
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 961
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    goto :goto_7

    :cond_6
    add-int v1, v3, v0

    :goto_7
    move v4, v1

    .line 962
    new-instance v14, Lorg/jtransforms/dct/DoubleDCT_3D$18;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dct/DoubleDCT_3D$18;-><init>(Lorg/jtransforms/dct/DoubleDCT_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 982
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

    .line 986
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

    .line 984
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_8
    move v0, v12

    .line 990
    :goto_8
    iget v1, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v12

    .line 991
    :goto_9
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 992
    iget-object v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctColumns:Lorg/jtransforms/dct/DoubleDCT_1D;

    aget-object v3, v8, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 995
    :cond_a
    iget v0, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 996
    :goto_a
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v12

    .line 997
    :goto_b
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v2, v3, :cond_d

    move v3, v12

    .line 998
    :goto_c
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v3, v4, :cond_b

    .line 999
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1001
    :cond_b
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctRows:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    move v3, v12

    .line 1002
    :goto_d
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v3, v4, :cond_c

    .line 1003
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

    .line 1007
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 1008
    :goto_e
    iget v2, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v12

    .line 1009
    :goto_f
    iget v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->columns:I

    if-ge v2, v3, :cond_11

    move v3, v12

    .line 1010
    :goto_10
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_f

    .line 1011
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1013
    :cond_f
    iget-object v3, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->dctSlices:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    move v3, v12

    .line 1014
    :goto_11
    iget v4, v7, Lorg/jtransforms/dct/DoubleDCT_3D;->slices:I

    if-ge v3, v4, :cond_10

    .line 1015
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
