.class public Lorg/jtransforms/dht/DoubleDHT_3D;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"


# instance fields
.field private columns:I

.field private columnsl:J

.field private dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

.field private dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

.field private dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

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
    iput-boolean v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    .line 75
    iput-boolean v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    cmp-long v3, p3, v1

    if-lez v3, :cond_6

    cmp-long v1, p5, v1

    if-lez v1, :cond_6

    long-to-int v1, p1

    .line 89
    iput v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    long-to-int v1, p3

    .line 90
    iput v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    long-to-int v1, p5

    .line 91
    iput v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    .line 92
    iput-wide p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    .line 93
    iput-wide p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    .line 94
    iput-wide p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    mul-long v2, p3, p5

    long-to-int v4, v2

    .line 95
    iput v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    .line 96
    iput v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    .line 97
    iput-wide v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    .line 98
    iput-wide p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long v1, p1, p3

    mul-long/2addr v1, p5

    .line 99
    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    .line 100
    iput-boolean v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

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
    iput-boolean v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

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
    new-instance v0, Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-direct {v0, p1, p2}, Lorg/jtransforms/dht/DoubleDHT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    .line 108
    iput-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-direct {v0, p3, p4}, Lorg/jtransforms/dht/DoubleDHT_1D;-><init>(J)V

    iput-object v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    :goto_0
    cmp-long p1, p1, p5

    if-nez p1, :cond_4

    .line 113
    iget-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    goto :goto_1

    :cond_4
    cmp-long p1, p3, p5

    if-nez p1, :cond_5

    .line 115
    iget-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    goto :goto_1

    .line 117
    :cond_5
    new-instance p1, Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-direct {p1, p5, p6}, Lorg/jtransforms/dht/DoubleDHT_1D;-><init>(J)V

    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    :goto_1
    return-void

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "slices, rows and columns must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    return p0
.end method

.method static synthetic access$100(Lorg/jtransforms/dht/DoubleDHT_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    return p0
.end method

.method static synthetic access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/jtransforms/dht/DoubleDHT_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/jtransforms/dht/DoubleDHT_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    return p0
.end method

.method static synthetic access$300(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    return-object p0
.end method

.method static synthetic access$400(Lorg/jtransforms/dht/DoubleDHT_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    return p0
.end method

.method static synthetic access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    return-object p0
.end method

.method static synthetic access$600(Lorg/jtransforms/dht/DoubleDHT_3D;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    return p0
.end method

.method static synthetic access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    return-object p0
.end method

.method static synthetic access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    return-wide v0
.end method

.method private ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1154
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1155
    iget-wide v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1158
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_8

    const-wide/16 v2, 0x0

    .line 1160
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_11

    .line 1161
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v17, 0x0

    .line 1162
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v6, v17, v13

    if-gez v6, :cond_1

    .line 1163
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long v13, v13, v17

    add-long/2addr v13, v4

    invoke-virtual {v6, v1, v13, v14}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v17, v17, v15

    goto :goto_1

    .line 1165
    :cond_1
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v6, v13, v9

    if-lez v6, :cond_5

    const-wide/16 v13, 0x0

    .line 1166
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v6, v13, v11

    if-gez v6, :cond_4

    const-wide/16 v11, 0x0

    .line 1167
    :goto_3
    iget-wide v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v6, v11, v9

    if-gez v6, :cond_2

    move-wide/from16 v21, v2

    .line 1168
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v2, v11

    add-long/2addr v2, v4

    add-long/2addr v2, v13

    add-long/2addr v9, v11

    move-wide/from16 v23, v13

    .line 1170
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v13, v2, v15

    .line 1171
    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v7, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1172
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v13, v9

    move-wide/from16 v25, v4

    const-wide/16 v19, 0x2

    add-long v4, v2, v19

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1173
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    mul-long v4, v4, v19

    add-long/2addr v9, v4

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v9, v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    move-wide/from16 v2, v21

    move-wide/from16 v13, v23

    move-wide/from16 v4, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v21, v2

    move-wide/from16 v25, v4

    move-wide/from16 v23, v13

    .line 1175
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1176
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1177
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1178
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 1179
    :goto_4
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 1180
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v8, v2

    add-long v8, v25, v8

    add-long v8, v8, v23

    add-long/2addr v4, v2

    .line 1182
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1183
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1184
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v10, v4

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1185
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v19, 0x2

    mul-long v10, v10, v19

    add-long/2addr v4, v10

    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v15

    goto :goto_4

    :cond_3
    const-wide/16 v2, 0x4

    const-wide/16 v19, 0x2

    add-long v13, v23, v2

    move-wide/from16 v9, v19

    move-wide/from16 v2, v21

    move-wide/from16 v4, v25

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v21, v2

    goto :goto_7

    :cond_5
    move-wide/from16 v21, v2

    move-wide/from16 v25, v4

    move-wide/from16 v19, v9

    cmp-long v2, v13, v19

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    .line 1189
    :goto_5
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    .line 1190
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v4, v25, v4

    .line 1191
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1192
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v8, v2

    add-long/2addr v4, v15

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v15

    goto :goto_5

    .line 1194
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1195
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 1196
    :goto_6
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    .line 1197
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    add-long v4, v25, v4

    .line 1198
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v15

    .line 1199
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v15

    goto :goto_6

    :cond_7
    :goto_7
    add-long v2, v21, v15

    const-wide/16 v9, 0x2

    goto/16 :goto_0

    :cond_8
    const-wide/16 v3, 0x0

    .line 1204
    :goto_8
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_11

    .line 1205
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 1206
    :goto_9
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 1207
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v11, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v11, v8

    add-long/2addr v11, v5

    invoke-virtual {v10, v1, v11, v12, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v8, v15

    goto :goto_9

    .line 1209
    :cond_9
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v10, 0x2

    cmp-long v12, v8, v10

    if-lez v12, :cond_d

    const-wide/16 v8, 0x0

    .line 1210
    :goto_a
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_c

    const-wide/16 v10, 0x0

    .line 1211
    :goto_b
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_a

    move-wide/from16 v21, v3

    .line 1212
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v3, v8

    add-long/2addr v12, v10

    move-wide/from16 v23, v8

    .line 1214
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v3, v15

    .line 1215
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1216
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v8, v12

    move-wide/from16 v25, v5

    const-wide/16 v19, 0x2

    add-long v5, v3, v19

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1217
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    mul-long v5, v5, v19

    add-long/2addr v12, v5

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v15

    move-wide/from16 v3, v21

    move-wide/from16 v8, v23

    move-wide/from16 v5, v25

    goto :goto_b

    :cond_a
    move-wide/from16 v21, v3

    move-wide/from16 v25, v5

    move-wide/from16 v23, v8

    .line 1219
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1220
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1221
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1222
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1223
    :goto_c
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_b

    .line 1224
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v8, v3

    add-long v8, v25, v8

    add-long v8, v8, v23

    add-long/2addr v5, v3

    .line 1226
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1227
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1228
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1229
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const-wide/16 v17, 0x2

    mul-long v12, v12, v17

    add-long/2addr v5, v12

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_c

    :cond_b
    const-wide/16 v3, 0x4

    const-wide/16 v10, 0x3

    const-wide/16 v17, 0x2

    add-long v8, v23, v3

    move-wide/from16 v3, v21

    move-wide/from16 v5, v25

    goto/16 :goto_a

    :cond_c
    move-wide/from16 v21, v3

    const-wide/16 v10, 0x3

    const-wide/16 v17, 0x2

    goto :goto_f

    :cond_d
    move-wide/from16 v21, v3

    move-wide/from16 v25, v5

    const-wide/16 v3, 0x4

    const-wide/16 v10, 0x3

    const-wide/16 v17, 0x2

    cmp-long v5, v8, v17

    if-nez v5, :cond_f

    const-wide/16 v5, 0x0

    .line 1233
    :goto_d
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v8, v5, v8

    if-gez v8, :cond_e

    .line 1234
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v8, v5

    add-long v8, v25, v8

    .line 1235
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v5, v6, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1236
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v12, v5

    add-long/2addr v8, v15

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    goto :goto_d

    .line 1238
    :cond_e
    iget-object v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1239
    iget-object v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    invoke-virtual {v5, v7, v12, v13, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v5, v8

    .line 1240
    :goto_e
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v12, v5, v12

    if-gez v12, :cond_10

    .line 1241
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v12, v5

    add-long v12, v25, v12

    .line 1242
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v1, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v15

    .line 1243
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    add-long/2addr v3, v5

    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v1, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v15

    const-wide/16 v3, 0x4

    goto :goto_e

    :cond_f
    :goto_f
    const-wide/16 v8, 0x0

    :cond_10
    add-long v3, v21, v15

    goto/16 :goto_8

    :cond_11
    return-void
.end method

.method private ddxt3da_sub(I[DZ)V
    .locals 12

    .line 1055
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1056
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1059
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    move p1, v3

    .line 1061
    :goto_0
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p1, p3, :cond_e

    .line 1062
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr p3, p1

    move v1, v3

    .line 1063
    :goto_1
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v4, :cond_1

    .line 1064
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p3

    invoke-virtual {v4, p2, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1066
    :cond_1
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-le v1, v2, :cond_4

    move v1, v3

    .line 1067
    :goto_2
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v1, v4, :cond_6

    move v4, v3

    .line 1068
    :goto_3
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_2

    .line 1069
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, p3

    add-int/2addr v6, v1

    add-int v7, v5, v4

    .line 1071
    aget-wide v8, p2, v6

    aput-wide v8, v0, v4

    add-int/lit8 v8, v6, 0x1

    .line 1072
    aget-wide v8, p2, v8

    aput-wide v8, v0, v7

    add-int v8, v7, v5

    add-int/lit8 v9, v6, 0x2

    .line 1073
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x3

    .line 1074
    aget-wide v5, p2, v6

    aput-wide v5, v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1076
    :cond_2
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1077
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1078
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/2addr v5, v2

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1079
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v4, v3

    .line 1080
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_3

    .line 1081
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, p3

    add-int/2addr v6, v1

    add-int v7, v5, v4

    .line 1083
    aget-wide v8, v0, v4

    aput-wide v8, p2, v6

    add-int/lit8 v8, v6, 0x1

    .line 1084
    aget-wide v9, v0, v7

    aput-wide v9, p2, v8

    add-int/lit8 v8, v6, 0x2

    add-int v9, v7, v5

    .line 1085
    aget-wide v9, v0, v9

    aput-wide v9, p2, v8

    add-int/lit8 v6, v6, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    .line 1086
    aget-wide v7, v0, v7

    aput-wide v7, p2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_6

    move v1, v3

    .line 1090
    :goto_5
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v4, :cond_5

    .line 1091
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p3

    .line 1092
    aget-wide v6, p2, v5

    aput-wide v6, v0, v1

    add-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x1

    .line 1093
    aget-wide v5, p2, v5

    aput-wide v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1095
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1096
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v3

    .line 1097
    :goto_6
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v4, :cond_6

    .line 1098
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v1

    add-int/2addr v5, p3

    .line 1099
    aget-wide v6, v0, v1

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v1

    .line 1100
    aget-wide v6, v0, v4

    aput-wide v6, p2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v3

    .line 1105
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p1, v1, :cond_e

    .line 1106
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v1, p1

    move v4, v3

    .line 1107
    :goto_8
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_8

    .line 1108
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    invoke-virtual {v5, p2, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1110
    :cond_8
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-le v4, v2, :cond_b

    move v4, v3

    .line 1111
    :goto_9
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v4, v5, :cond_d

    move v5, v3

    .line 1112
    :goto_a
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_9

    .line 1113
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1115
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1116
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1117
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1118
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1120
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v5, v0, v3, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1121
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1122
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1123
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v5, v3

    .line 1124
    :goto_b
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_a

    .line 1125
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int v8, v6, v5

    .line 1127
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1128
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1129
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1130
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

    .line 1134
    :goto_c
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 1135
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1136
    aget-wide v7, p2, v6

    aput-wide v7, v0, v4

    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    .line 1137
    aget-wide v6, p2, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1139
    :cond_c
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0, v3, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1140
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v4, v0, v5, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v4, v3

    .line 1141
    :goto_d
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_d

    .line 1142
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 1143
    aget-wide v7, v0, v4

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v4

    .line 1144
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

    .line 1253
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    .line 1254
    iget-wide v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1257
    :cond_0
    new-array v0, v0, [D

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_7

    move p1, v4

    .line 1259
    :goto_0
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p1, p3, :cond_e

    move p3, v4

    .line 1260
    :goto_1
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p3, v1, :cond_1

    .line 1261
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    aget-object v5, p2, p1

    aget-object v5, v5, p3

    invoke-virtual {v1, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1263
    :cond_1
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-le p3, v2, :cond_4

    move p3, v4

    .line 1264
    :goto_2
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge p3, v1, :cond_6

    move v1, v4

    .line 1265
    :goto_3
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v5, :cond_2

    add-int v6, v5, v1

    .line 1267
    aget-object v7, p2, p1

    aget-object v7, v7, v1

    aget-wide v8, v7, p3

    aput-wide v8, v0, v1

    add-int/lit8 v8, p3, 0x1

    .line 1268
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v5

    add-int/lit8 v9, p3, 0x2

    .line 1269
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v5

    add-int/lit8 v5, p3, 0x3

    .line 1270
    aget-wide v8, v7, v5

    aput-wide v8, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1272
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1273
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v1, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1274
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/2addr v5, v2

    invoke-virtual {v1, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1275
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v4

    .line 1276
    :goto_4
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v5, :cond_3

    add-int v6, v5, v1

    .line 1278
    aget-object v7, p2, p1

    aget-object v7, v7, v1

    aget-wide v8, v0, v1

    aput-wide v8, v7, p3

    add-int/lit8 v8, p3, 0x1

    .line 1279
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, p3, 0x2

    add-int v9, v6, v5

    .line 1280
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, p3, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v5

    .line 1281
    aget-wide v5, v0, v6

    aput-wide v5, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :cond_4
    if-ne p3, v2, :cond_6

    move p3, v4

    .line 1285
    :goto_5
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p3, v1, :cond_5

    .line 1286
    aget-object v5, p2, p1

    aget-object v5, v5, p3

    aget-wide v6, v5, v4

    aput-wide v6, v0, p3

    add-int/2addr v1, p3

    .line 1287
    aget-wide v6, v5, v3

    aput-wide v6, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1289
    :cond_5
    iget-object p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {p3, v0, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1290
    iget-object p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move p3, v4

    .line 1291
    :goto_6
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p3, v1, :cond_6

    .line 1292
    aget-object v5, p2, p1

    aget-object v5, v5, p3

    aget-wide v6, v0, p3

    aput-wide v6, v5, v4

    add-int/2addr v1, p3

    .line 1293
    aget-wide v6, v0, v1

    aput-wide v6, v5, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_7
    move p1, v4

    .line 1298
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p1, v1, :cond_e

    move v1, v4

    .line 1299
    :goto_8
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v5, :cond_8

    .line 1300
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    aget-object v6, p2, p1

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1302
    :cond_8
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-le v1, v2, :cond_b

    move v1, v4

    .line 1303
    :goto_9
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v1, v5, :cond_d

    move v5, v4

    .line 1304
    :goto_a
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_9

    add-int v7, v6, v5

    .line 1306
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v8, v1

    aput-wide v9, v0, v5

    add-int/lit8 v9, v1, 0x1

    .line 1307
    aget-wide v9, v8, v9

    aput-wide v9, v0, v7

    add-int v9, v7, v6

    add-int/lit8 v10, v1, 0x2

    .line 1308
    aget-wide v10, v8, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v6, v1, 0x3

    .line 1309
    aget-wide v9, v8, v6

    aput-wide v9, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1311
    :cond_9
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1312
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1313
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1314
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v5, v4

    .line 1315
    :goto_b
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_a

    add-int v7, v6, v5

    .line 1317
    aget-object v8, p2, p1

    aget-object v8, v8, v5

    aget-wide v9, v0, v5

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    .line 1318
    aget-wide v10, v0, v7

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x2

    add-int v10, v7, v6

    .line 1319
    aget-wide v10, v0, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v1, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 1320
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

    .line 1324
    :goto_c
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v5, :cond_c

    .line 1325
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v6, v4

    aput-wide v7, v0, v1

    add-int/2addr v5, v1

    .line 1326
    aget-wide v7, v6, v3

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1328
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1329
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v1, v4

    .line 1330
    :goto_d
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v5, :cond_d

    .line 1331
    aget-object v6, p2, p1

    aget-object v6, v6, v1

    aget-wide v7, v0, v1

    aput-wide v7, v6, v4

    add-int/2addr v5, v1

    .line 1332
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

    .line 1743
    const-class v12, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

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

    .line 1744
    iget-wide v3, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    mul-long/2addr v3, v1

    .line 1745
    iget-wide v1, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 1749
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 1753
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_3D$20;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dht/DoubleDHT_3D$20;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1853
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1857
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

    .line 1855
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

    .line 1623
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1624
    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1625
    iget v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1629
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1633
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$19;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$19;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1733
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1737
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

    .line 1735
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

    .line 1863
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1864
    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    mul-int/lit8 v1, v1, 0x4

    .line 1865
    iget v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1869
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1873
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$21;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$21;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1963
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1967
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

    .line 1965
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

    .line 1440
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    .line 1441
    iget-wide v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    shr-long/2addr v3, v7

    .line 1444
    :cond_0
    new-instance v7, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    const/4 v3, -0x1

    const-wide/16 v15, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_7

    .line 1446
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v4, v2, v9

    if-lez v4, :cond_4

    const-wide/16 v2, 0x0

    .line 1447
    :goto_0
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v2, v5

    if-gez v4, :cond_e

    .line 1448
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v17, 0x0

    .line 1449
    :goto_1
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v6, v17, v13

    if-gez v6, :cond_3

    const-wide/16 v13, 0x0

    .line 1450
    :goto_2
    iget-wide v11, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v6, v13, v11

    if-gez v6, :cond_1

    .line 1451
    iget-wide v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v9, v13

    add-long/2addr v9, v4

    add-long v9, v9, v17

    add-long/2addr v11, v13

    move-wide/from16 v23, v2

    .line 1453
    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v9, v15

    .line 1454
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1455
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v2, v11

    move-wide/from16 v25, v4

    const-wide/16 v21, 0x2

    add-long v4, v9, v21

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v7, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1456
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    mul-long v2, v2, v21

    add-long/2addr v11, v2

    const-wide/16 v2, 0x3

    add-long/2addr v9, v2

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v7, v11, v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    move-wide/from16 v2, v23

    move-wide/from16 v4, v25

    const-wide/16 v9, 0x2

    goto :goto_2

    :cond_1
    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    .line 1458
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1459
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1460
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1461
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 1462
    :goto_3
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 1463
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v8, v2

    add-long v8, v8, v25

    add-long v8, v8, v17

    add-long/2addr v4, v2

    .line 1465
    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1466
    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1467
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v10, v4

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1468
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    add-long/2addr v4, v10

    invoke-virtual {v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v15

    goto :goto_3

    :cond_2
    const-wide/16 v2, 0x4

    const-wide/16 v12, 0x2

    add-long v17, v17, v2

    move-wide v9, v12

    move-wide/from16 v2, v23

    move-wide/from16 v4, v25

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v23, v2

    move-wide v12, v9

    add-long v2, v23, v15

    goto/16 :goto_0

    :cond_4
    move-wide v12, v9

    cmp-long v2, v2, v12

    if-nez v2, :cond_e

    const-wide/16 v2, 0x0

    .line 1473
    :goto_4
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    .line 1474
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 1475
    :goto_5
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_5

    .line 1476
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    .line 1477
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1478
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_5

    .line 1480
    :cond_5
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1481
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v8, 0x0

    .line 1482
    :goto_6
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_6

    .line 1483
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    .line 1484
    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v15

    .line 1485
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v12, v8

    invoke-virtual {v7, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_6

    :cond_6
    add-long/2addr v2, v15

    goto :goto_4

    .line 1489
    :cond_7
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    const-wide/16 v3, 0x0

    .line 1490
    :goto_7
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1491
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 1492
    :goto_8
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_a

    const-wide/16 v10, 0x0

    .line 1493
    :goto_9
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_8

    move-wide/from16 v17, v3

    .line 1494
    iget-wide v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v3, v8

    add-long/2addr v12, v10

    move-wide/from16 v23, v8

    .line 1496
    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v3, v15

    .line 1497
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v12, v13, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1498
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v8, v12

    move-wide/from16 v25, v5

    const-wide/16 v21, 0x2

    add-long v5, v3, v21

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1499
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    mul-long v5, v5, v21

    add-long/2addr v12, v5

    const-wide/16 v5, 0x3

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v7, v12, v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v15

    move-wide/from16 v3, v17

    move-wide/from16 v8, v23

    move-wide/from16 v5, v25

    goto :goto_9

    :cond_8
    move-wide/from16 v17, v3

    move-wide/from16 v25, v5

    move-wide/from16 v23, v8

    .line 1501
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1502
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1503
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1504
    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {v3, v7, v4, v5, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 1506
    :goto_a
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v8, v3, v5

    if-gez v8, :cond_9

    .line 1507
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v8, v3

    add-long v8, v8, v25

    add-long v8, v8, v23

    add-long/2addr v5, v3

    .line 1509
    invoke-virtual {v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v8, v15

    .line 1510
    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 1511
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v10, v5

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    .line 1512
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v19, 0x2

    mul-long v12, v12, v19

    add-long/2addr v5, v12

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v8, v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v15

    goto :goto_a

    :cond_9
    const-wide/16 v3, 0x4

    const-wide/16 v10, 0x3

    const-wide/16 v19, 0x2

    add-long v8, v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v5, v25

    goto/16 :goto_8

    :cond_a
    move-wide/from16 v17, v3

    const-wide/16 v3, 0x4

    const-wide/16 v10, 0x3

    const-wide/16 v19, 0x2

    add-long v5, v17, v15

    move-wide v3, v5

    goto/16 :goto_7

    :cond_b
    const-wide/16 v19, 0x2

    cmp-long v3, v3, v19

    if-nez v3, :cond_e

    const-wide/16 v3, 0x0

    .line 1517
    :goto_b
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 1518
    iget-wide v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v5, v3

    const-wide/16 v8, 0x0

    .line 1519
    :goto_c
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_c

    .line 1520
    iget-wide v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v5

    .line 1521
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1522
    iget-wide v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v12, v8

    add-long/2addr v10, v15

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v7, v12, v13, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v15

    goto :goto_c

    .line 1524
    :cond_c
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v7, v9, v10, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1525
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v11, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    invoke-virtual {v8, v7, v11, v12, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v11, v9

    .line 1526
    :goto_d
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v8, v11, v13

    if-gez v8, :cond_d

    .line 1527
    iget-wide v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v13, v11

    add-long/2addr v13, v5

    .line 1528
    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v1, v13, v14, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v15

    .line 1529
    iget-wide v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    add-long/2addr v8, v11

    invoke-virtual {v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v11, v15

    const-wide/16 v9, 0x0

    goto :goto_d

    :cond_d
    add-long/2addr v3, v15

    goto :goto_b

    :cond_e
    return-void
.end method

.method private ddxt3db_sub(I[DZ)V
    .locals 12

    .line 1342
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1343
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1346
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v4

    .line 1349
    :goto_0
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, p3, :cond_e

    .line 1350
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr p3, p1

    move v1, v4

    .line 1351
    :goto_1
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v1, v3, :cond_3

    move v3, v4

    .line 1352
    :goto_2
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v5, :cond_1

    .line 1353
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, p3

    add-int/2addr v6, v1

    add-int v7, v5, v3

    .line 1355
    aget-wide v8, p2, v6

    aput-wide v8, v0, v3

    add-int/lit8 v8, v6, 0x1

    .line 1356
    aget-wide v8, p2, v8

    aput-wide v8, v0, v7

    add-int v8, v7, v5

    add-int/lit8 v9, v6, 0x2

    .line 1357
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x3

    .line 1358
    aget-wide v5, p2, v6

    aput-wide v5, v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1360
    :cond_1
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v3, v0, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1361
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v3, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1362
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/2addr v5, v2

    invoke-virtual {v3, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1363
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v3, v4

    .line 1364
    :goto_3
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v5, :cond_2

    .line 1365
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, p3

    add-int/2addr v6, v1

    add-int v7, v5, v3

    .line 1367
    aget-wide v8, v0, v3

    aput-wide v8, p2, v6

    add-int/lit8 v8, v6, 0x1

    .line 1368
    aget-wide v9, v0, v7

    aput-wide v9, p2, v8

    add-int/lit8 v8, v6, 0x2

    add-int v9, v7, v5

    .line 1369
    aget-wide v9, v0, v9

    aput-wide v9, p2, v8

    add-int/lit8 v6, v6, 0x3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    .line 1370
    aget-wide v7, v0, v7

    aput-wide v7, p2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    if-ne v1, v2, :cond_e

    move p1, v4

    .line 1375
    :goto_4
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, p3, :cond_e

    .line 1376
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr p3, p1

    move v1, v4

    .line 1377
    :goto_5
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_5

    .line 1378
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p3

    .line 1379
    aget-wide v5, p2, v3

    aput-wide v5, v0, v1

    add-int/2addr v2, v1

    add-int/lit8 v3, v3, 0x1

    .line 1380
    aget-wide v5, p2, v3

    aput-wide v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1382
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1383
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v4

    .line 1384
    :goto_6
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_6

    .line 1385
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p3

    .line 1386
    aget-wide v5, v0, v1

    aput-wide v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v1

    .line 1387
    aget-wide v5, v0, v2

    aput-wide v5, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    if-le v1, v2, :cond_b

    move p1, v4

    .line 1392
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1393
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v3, v4

    .line 1394
    :goto_8
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v3, v5, :cond_a

    move v5, v4

    .line 1395
    :goto_9
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v5, v6, :cond_8

    .line 1396
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1398
    aget-wide v9, p2, v7

    aput-wide v9, v0, v5

    add-int/lit8 v9, v7, 0x1

    .line 1399
    aget-wide v9, p2, v9

    aput-wide v9, v0, v8

    add-int v9, v8, v6

    add-int/lit8 v10, v7, 0x2

    .line 1400
    aget-wide v10, p2, v10

    aput-wide v10, v0, v9

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, 0x3

    .line 1401
    aget-wide v6, p2, v7

    aput-wide v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1403
    :cond_8
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v5, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1404
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1405
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/2addr v6, v2

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1406
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v0, v6, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v5, v4

    .line 1408
    :goto_a
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v5, v6, :cond_9

    .line 1409
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    add-int v8, v6, v5

    .line 1411
    aget-wide v9, v0, v5

    aput-wide v9, p2, v7

    add-int/lit8 v9, v7, 0x1

    .line 1412
    aget-wide v10, v0, v8

    aput-wide v10, p2, v9

    add-int/lit8 v9, v7, 0x2

    add-int v10, v8, v6

    .line 1413
    aget-wide v10, v0, v10

    aput-wide v10, p2, v9

    add-int/lit8 v7, v7, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    .line 1414
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

    .line 1419
    :goto_b
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, v1, :cond_e

    .line 1420
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v1, p1

    move v2, v4

    .line 1421
    :goto_c
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v2, v3, :cond_c

    .line 1422
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1423
    aget-wide v6, p2, v5

    aput-wide v6, v0, v2

    add-int/2addr v3, v2

    add-int/lit8 v5, v5, 0x1

    .line 1424
    aget-wide v5, p2, v5

    aput-wide v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1426
    :cond_c
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v2, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1427
    iget-object v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v2, v0, v3, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v2, v4

    .line 1428
    :goto_d
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v2, v3, :cond_d

    .line 1429
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 1430
    aget-wide v6, v0, v2

    aput-wide v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v2

    .line 1431
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

    .line 1538
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    .line 1539
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    .line 1542
    :cond_0
    new-array v0, v0, [D

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_7

    if-le v1, v2, :cond_4

    move p1, v5

    .line 1545
    :goto_0
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, p3, :cond_e

    move p3, v5

    .line 1546
    :goto_1
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge p3, v1, :cond_3

    move v1, v5

    .line 1547
    :goto_2
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v3, :cond_1

    add-int v4, v3, v1

    .line 1549
    aget-object v6, p2, v1

    aget-object v6, v6, p1

    aget-wide v7, v6, p3

    aput-wide v7, v0, v1

    add-int/lit8 v7, p3, 0x1

    .line 1550
    aget-wide v7, v6, v7

    aput-wide v7, v0, v4

    add-int v7, v4, v3

    add-int/lit8 v8, p3, 0x2

    .line 1551
    aget-wide v8, v6, v8

    aput-wide v8, v0, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    add-int/lit8 v3, p3, 0x3

    .line 1552
    aget-wide v7, v6, v3

    aput-wide v7, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1554
    :cond_1
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1555
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1556
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1557
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v5

    .line 1558
    :goto_3
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v3, :cond_2

    add-int v4, v3, v1

    .line 1560
    aget-object v6, p2, v1

    aget-object v6, v6, p1

    aget-wide v7, v0, v1

    aput-wide v7, v6, p3

    add-int/lit8 v7, p3, 0x1

    .line 1561
    aget-wide v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, p3, 0x2

    add-int v8, v4, v3

    .line 1562
    aget-wide v8, v0, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, p3, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    .line 1563
    aget-wide v3, v0, v4

    aput-wide v3, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_e

    move p1, v5

    .line 1568
    :goto_4
    iget p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, p3, :cond_e

    move p3, v5

    .line 1569
    :goto_5
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p3, v1, :cond_5

    .line 1570
    aget-object v2, p2, p3

    aget-object v2, v2, p1

    aget-wide v6, v2, v5

    aput-wide v6, v0, p3

    add-int/2addr v1, p3

    .line 1571
    aget-wide v6, v2, v4

    aput-wide v6, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1573
    :cond_5
    iget-object p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {p3, v0, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    .line 1574
    iget-object p3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {p3, v0, v1}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move p3, v5

    .line 1575
    :goto_6
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge p3, v1, :cond_6

    .line 1576
    aget-object v2, p2, p3

    aget-object v2, v2, p1

    aget-wide v6, v0, p3

    aput-wide v6, v2, v5

    add-int/2addr v1, p3

    .line 1577
    aget-wide v6, v0, v1

    aput-wide v6, v2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    if-le v1, v2, :cond_b

    move p1, v5

    .line 1582
    :goto_7
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1583
    :goto_8
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v1, v3, :cond_a

    move v3, v5

    .line 1584
    :goto_9
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v4, :cond_8

    add-int v6, v4, v3

    .line 1586
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v7, v1

    aput-wide v8, v0, v3

    add-int/lit8 v8, v1, 0x1

    .line 1587
    aget-wide v8, v7, v8

    aput-wide v8, v0, v6

    add-int v8, v6, v4

    add-int/lit8 v9, v1, 0x2

    .line 1588
    aget-wide v9, v7, v9

    aput-wide v9, v0, v8

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x3

    .line 1589
    aget-wide v8, v7, v4

    aput-wide v8, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1591
    :cond_8
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v3, v0, v5, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1592
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1593
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/2addr v4, v2

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1594
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v0, v4, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v3, v5

    .line 1596
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v4, :cond_9

    add-int v6, v4, v3

    .line 1598
    aget-object v7, p2, v3

    aget-object v7, v7, p1

    aget-wide v8, v0, v3

    aput-wide v8, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 1599
    aget-wide v9, v0, v6

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x2

    add-int v9, v6, v4

    .line 1600
    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v1, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 1601
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

    .line 1606
    :goto_b
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge p1, v1, :cond_e

    move v1, v5

    .line 1607
    :goto_c
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_c

    .line 1608
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v3, v5

    aput-wide v6, v0, v1

    add-int/2addr v2, v1

    .line 1609
    aget-wide v6, v3, v4

    aput-wide v6, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1611
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v0, v5, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    .line 1612
    iget-object v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    invoke-virtual {v1, v0, v2, p3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v1, v5

    .line 1613
    :goto_d
    iget v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_d

    .line 1614
    aget-object v3, p2, v1

    aget-object v3, v3, p1

    aget-wide v6, v0, v1

    aput-wide v6, v3, v5

    add-int/2addr v2, v1

    .line 1615
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

    .line 2091
    const-class v12, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

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

    .line 2092
    iget-wide v3, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    mul-long/2addr v3, v1

    .line 2093
    iget-wide v1, v11, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    shr-long/2addr v3, v1

    :cond_1
    move-wide v13, v3

    .line 2097
    new-array v15, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_2

    int-to-long v6, v10

    .line 2101
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_3D$23;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v5, p1

    move v8, v0

    move-object/from16 v9, p2

    move/from16 v17, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/jtransforms/dht/DoubleDHT_3D$23;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2199
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2203
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

    .line 2201
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

    .line 1973
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 1974
    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 1975
    iget v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 1979
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 1983
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$22;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$22;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;IIII[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2081
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2085
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

    .line 2083
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

    .line 2209
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    :goto_0
    move v0, v1

    .line 2210
    iget v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    mul-int/lit8 v1, v1, 0x4

    .line 2211
    iget v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    move v11, v1

    .line 2215
    new-array v12, v0, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_2

    .line 2219
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$24;

    move-object v1, v14

    move-object v2, p0

    move v3, v11

    move/from16 v4, p1

    move v5, v13

    move v6, v0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$24;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;IIII[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2306
    :try_start_0
    invoke-static {v12}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2310
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

    .line 2308
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private yTransform(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v4, 0x0

    .line 2363
    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const-wide/16 v8, 0x2

    div-long v10, v6, v8

    cmp-long v10, v4, v10

    if-gtz v10, :cond_2

    sub-long v10, v6, v4

    .line 2364
    rem-long/2addr v10, v6

    .line 2365
    iget-wide v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long v12, v4, v6

    mul-long/2addr v10, v6

    const-wide/16 v6, 0x0

    .line 2367
    :goto_1
    iget-wide v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    div-long v16, v14, v8

    cmp-long v16, v6, v16

    const-wide/16 v17, 0x1

    if-gtz v16, :cond_1

    sub-long v19, v14, v6

    .line 2368
    rem-long v19, v19, v14

    .line 2369
    iget-wide v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long v21, v6, v14

    mul-long v19, v19, v14

    const-wide/16 v14, 0x0

    .line 2371
    :goto_2
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    div-long v23, v2, v8

    cmp-long v16, v14, v23

    if-gtz v16, :cond_0

    sub-long v23, v2, v14

    .line 2372
    rem-long v23, v23, v2

    add-long v2, v12, v19

    add-long v8, v2, v14

    add-long v25, v12, v21

    move-wide/from16 v27, v12

    add-long v12, v25, v23

    add-long v29, v10, v21

    move-wide/from16 v31, v4

    add-long v4, v29, v14

    add-long v33, v10, v19

    move-wide/from16 v35, v10

    add-long v10, v33, v23

    move-wide/from16 v37, v6

    add-long v6, v33, v14

    move-wide/from16 v33, v6

    add-long v6, v29, v23

    move-wide/from16 v29, v6

    add-long v6, v25, v14

    add-long v2, v2, v23

    .line 2381
    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v23

    .line 2382
    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v25

    .line 2383
    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v39

    .line 2384
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v41

    move-wide/from16 v43, v14

    move-wide/from16 v14, v33

    .line 2385
    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v33

    move-wide/from16 v45, v10

    move-wide/from16 v10, v29

    .line 2386
    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v29

    .line 2387
    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v47

    .line 2388
    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v49

    add-double v51, v23, v25

    add-double v53, v51, v39

    sub-double v53, v53, v41

    const-wide/high16 v55, 0x4000000000000000L    # 2.0

    move-wide/from16 v57, v2

    div-double v2, v53, v55

    .line 2389
    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v2, v33, v29

    add-double v6, v2, v47

    sub-double v6, v6, v49

    div-double v6, v6, v55

    .line 2390
    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v4, v47, v49

    add-double v6, v4, v33

    sub-double v6, v6, v29

    div-double v6, v6, v55

    .line 2391
    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v6, v39, v41

    add-double v8, v6, v23

    sub-double v8, v8, v25

    div-double v8, v8, v55

    .line 2392
    invoke-virtual {v1, v14, v15, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v4, v4, v29

    sub-double v4, v4, v33

    div-double v4, v4, v55

    .line 2393
    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v6, v6, v25

    sub-double v6, v6, v23

    div-double v6, v6, v55

    .line 2394
    invoke-virtual {v1, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v51, v51, v41

    sub-double v51, v51, v39

    div-double v4, v51, v55

    move-wide/from16 v6, v57

    .line 2395
    invoke-virtual {v1, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-double v2, v2, v49

    sub-double v2, v2, v47

    div-double v2, v2, v55

    move-wide/from16 v4, v45

    .line 2396
    invoke-virtual {v1, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v43, v17

    move-wide/from16 v12, v27

    move-wide/from16 v4, v31

    move-wide/from16 v10, v35

    move-wide/from16 v6, v37

    const-wide/16 v8, 0x2

    goto/16 :goto_2

    :cond_0
    move-wide/from16 v31, v4

    move-wide/from16 v37, v6

    move-wide/from16 v35, v10

    move-wide/from16 v27, v12

    add-long v6, v37, v17

    const-wide/16 v8, 0x2

    goto/16 :goto_1

    :cond_1
    move-wide/from16 v31, v4

    add-long v4, v31, v17

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private yTransform([D)V
    .locals 44

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 2319
    :goto_0
    iget v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    div-int/lit8 v4, v3, 0x2

    if-gt v2, v4, :cond_2

    sub-int v4, v3, v2

    .line 2320
    rem-int/2addr v4, v3

    .line 2321
    iget v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int v5, v2, v3

    mul-int/2addr v4, v3

    move v3, v1

    .line 2323
    :goto_1
    iget v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/lit8 v7, v6, 0x2

    if-gt v3, v7, :cond_1

    sub-int v7, v6, v3

    .line 2324
    rem-int/2addr v7, v6

    .line 2325
    iget v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int v8, v3, v6

    mul-int/2addr v7, v6

    move v6, v1

    .line 2327
    :goto_2
    iget v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    div-int/lit8 v10, v9, 0x2

    if-gt v6, v10, :cond_0

    sub-int v10, v9, v6

    .line 2328
    rem-int/2addr v10, v9

    add-int v9, v5, v7

    add-int v11, v9, v6

    add-int v12, v5, v8

    add-int v13, v12, v10

    add-int v14, v4, v8

    add-int v15, v14, v6

    add-int v16, v4, v7

    add-int v17, v16, v10

    add-int v16, v16, v6

    add-int/2addr v14, v10

    add-int/2addr v12, v6

    add-int/2addr v9, v10

    .line 2337
    aget-wide v18, p1, v11

    .line 2338
    aget-wide v20, p1, v13

    .line 2339
    aget-wide v22, p1, v15

    .line 2340
    aget-wide v24, p1, v17

    .line 2341
    aget-wide v26, p1, v16

    .line 2342
    aget-wide v28, p1, v14

    .line 2343
    aget-wide v30, p1, v12

    .line 2344
    aget-wide v32, p1, v9

    add-double v34, v18, v20

    add-double v36, v34, v22

    sub-double v36, v36, v24

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    .line 2345
    aput-wide v36, p1, v12

    add-double v36, v26, v28

    add-double v40, v36, v30

    sub-double v40, v40, v32

    div-double v40, v40, v38

    .line 2346
    aput-wide v40, p1, v15

    add-double v40, v30, v32

    add-double v42, v40, v26

    sub-double v42, v42, v28

    div-double v42, v42, v38

    .line 2347
    aput-wide v42, p1, v11

    add-double v10, v22, v24

    add-double v42, v10, v18

    sub-double v42, v42, v20

    div-double v42, v42, v38

    .line 2348
    aput-wide v42, p1, v16

    add-double v40, v40, v28

    sub-double v40, v40, v26

    div-double v40, v40, v38

    .line 2349
    aput-wide v40, p1, v13

    add-double v10, v10, v20

    sub-double v10, v10, v18

    div-double v10, v10, v38

    .line 2350
    aput-wide v10, p1, v14

    add-double v34, v34, v24

    sub-double v34, v34, v22

    div-double v34, v34, v38

    .line 2351
    aput-wide v34, p1, v9

    add-double v36, v36, v32

    sub-double v36, v36, v30

    div-double v36, v36, v38

    .line 2352
    aput-wide v36, p1, v17

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private yTransform([[[D)V
    .locals 40

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 2406
    :goto_0
    iget v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    div-int/lit8 v4, v3, 0x2

    if-gt v2, v4, :cond_2

    sub-int v4, v3, v2

    .line 2407
    rem-int/2addr v4, v3

    move v3, v1

    .line 2408
    :goto_1
    iget v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/lit8 v6, v5, 0x2

    if-gt v3, v6, :cond_1

    sub-int v6, v5, v3

    .line 2409
    rem-int/2addr v6, v5

    move v5, v1

    .line 2410
    :goto_2
    iget v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    div-int/lit8 v8, v7, 0x2

    if-gt v5, v8, :cond_0

    sub-int v8, v7, v5

    .line 2411
    rem-int/2addr v8, v7

    .line 2412
    aget-object v7, p1, v2

    aget-object v9, v7, v6

    aget-wide v10, v9, v5

    .line 2413
    aget-object v7, v7, v3

    aget-wide v12, v7, v8

    .line 2414
    aget-object v14, p1, v4

    aget-object v15, v14, v3

    aget-wide v16, v15, v5

    .line 2415
    aget-object v14, v14, v6

    aget-wide v18, v14, v8

    .line 2416
    aget-wide v20, v14, v5

    .line 2417
    aget-wide v22, v15, v8

    .line 2418
    aget-wide v24, v7, v5

    .line 2419
    aget-wide v26, v9, v8

    add-double v28, v10, v12

    add-double v30, v28, v16

    sub-double v30, v30, v18

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    .line 2420
    aput-wide v30, v7, v5

    add-double v30, v20, v22

    add-double v34, v30, v24

    sub-double v34, v34, v26

    div-double v34, v34, v32

    .line 2421
    aput-wide v34, v15, v5

    add-double v34, v24, v26

    add-double v36, v34, v20

    sub-double v36, v36, v22

    div-double v36, v36, v32

    .line 2422
    aput-wide v36, v9, v5

    add-double v36, v16, v18

    add-double v38, v36, v10

    sub-double v38, v38, v12

    div-double v38, v38, v32

    .line 2423
    aput-wide v38, v14, v5

    add-double v34, v34, v22

    sub-double v34, v34, v20

    div-double v34, v34, v32

    .line 2424
    aput-wide v34, v7, v8

    add-double v36, v36, v12

    sub-double v36, v36, v10

    div-double v36, v36, v32

    .line 2425
    aput-wide v36, v15, v8

    add-double v28, v28, v18

    sub-double v28, v28, v16

    div-double v28, v28, v32

    .line 2426
    aput-wide v28, v9, v8

    add-double v30, v30, v26

    sub-double v30, v30, v24

    div-double v30, v30, v32

    .line 2427
    aput-wide v30, v14, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 297
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 298
    iget-boolean v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-le v11, v1, :cond_0

    .line 299
    iget-boolean v2, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v2, :cond_0

    .line 300
    invoke-direct {v8, v0, v9, v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 301
    invoke-direct {v8, v0, v9, v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {v8, v0, v9, v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 304
    invoke-direct {v8, v0, v9, v1}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 306
    :goto_0
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto/16 :goto_14

    :cond_1
    if-le v11, v1, :cond_8

    .line 308
    iget-boolean v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    int-to-long v13, v11

    cmp-long v2, v0, v13

    if-ltz v2, :cond_8

    iget-wide v2, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v2, v2, v13

    if-ltz v2, :cond_8

    iget-wide v2, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v2, v2, v13

    if-ltz v2, :cond_8

    .line 309
    new-array v15, v11, [Ljava/util/concurrent/Future;

    .line 310
    div-long v16, v0, v13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 313
    iget-wide v1, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 314
    new-instance v18, Lorg/jtransforms/dht/DoubleDHT_3D$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/DoubleDHT_3D$4;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 328
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 332
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 330
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_5

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_4

    .line 337
    iget-wide v1, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    goto :goto_5

    :cond_4
    add-long v1, v3, v16

    :goto_5
    move-wide v5, v1

    .line 338
    new-instance v18, Lorg/jtransforms/dht/DoubleDHT_3D$5;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v12, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/DoubleDHT_3D$5;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v7, v12

    goto :goto_4

    :cond_5
    move-object v12, v7

    .line 361
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 365
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 363
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :goto_6
    iget-wide v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    div-long v13, v0, v13

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v13

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_6

    .line 373
    iget-wide v1, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    goto :goto_8

    :cond_6
    add-long v1, v3, v13

    :goto_8
    move-wide v5, v1

    .line 377
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_3D$6;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/jtransforms/dht/DoubleDHT_3D$6;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 400
    :cond_7
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 404
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 402
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    const-wide/16 v2, 0x0

    .line 408
    :goto_9
    iget-wide v4, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 409
    iget v4, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    int-to-long v10, v4

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x0

    .line 410
    :goto_a
    iget-wide v14, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 411
    iget-object v4, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    int-to-long v14, v7

    mul-long/2addr v14, v12

    add-long/2addr v14, v10

    invoke-virtual {v4, v9, v14, v15}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long/2addr v12, v5

    goto :goto_a

    :cond_9
    add-long/2addr v2, v5

    goto :goto_9

    .line 414
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 415
    :goto_b
    iget-wide v10, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v7, v3, v10

    if-gez v7, :cond_e

    .line 416
    iget v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    int-to-long v10, v7

    mul-long/2addr v10, v3

    const-wide/16 v12, 0x0

    .line 417
    :goto_c
    iget-wide v14, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_d

    const-wide/16 v14, 0x0

    .line 418
    :goto_d
    iget-wide v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 419
    iget v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    int-to-long v0, v0

    mul-long/2addr v0, v14

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    .line 420
    invoke-virtual {v9, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    goto :goto_d

    .line 422
    :cond_b
    iget-object v0, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v0, v2}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v0, 0x0

    .line 423
    :goto_e
    iget-wide v14, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v7, v0, v14

    if-gez v7, :cond_c

    .line 424
    iget v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    int-to-long v14, v7

    mul-long/2addr v14, v0

    add-long/2addr v14, v10

    add-long/2addr v14, v12

    move-wide/from16 v20, v10

    .line 425
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v9, v14, v15, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-wide/from16 v10, v20

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v10

    add-long/2addr v12, v5

    goto :goto_c

    :cond_d
    add-long/2addr v3, v5

    goto :goto_b

    .line 429
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 430
    :goto_f
    iget-wide v3, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 431
    iget v3, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    int-to-long v3, v3

    mul-long/2addr v3, v1

    const-wide/16 v10, 0x0

    .line 432
    :goto_10
    iget-wide v12, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v7, v10, v12

    if-gez v7, :cond_11

    const-wide/16 v12, 0x0

    .line 433
    :goto_11
    iget-wide v14, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_f

    .line 434
    iget v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    int-to-long v14, v7

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v10

    .line 435
    invoke-virtual {v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    goto :goto_11

    .line 437
    :cond_f
    iget-object v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v7, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v12, 0x0

    .line 438
    :goto_12
    iget-wide v14, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_10

    .line 439
    iget v7, v8, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    int-to-long v14, v7

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v10

    move-wide/from16 v18, v3

    .line 440
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v9, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    move-wide/from16 v3, v18

    goto :goto_12

    :cond_10
    move-wide/from16 v18, v3

    add-long/2addr v10, v5

    goto :goto_10

    :cond_11
    add-long/2addr v1, v5

    goto :goto_f

    .line 445
    :cond_12
    :goto_13
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_14
    return-void
.end method

.method public forward([D)V
    .locals 10

    .line 133
    const-class v0, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 134
    iget-boolean v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v3, :cond_0

    .line 135
    iget-boolean v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 136
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(I[DZ)V

    .line 137
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[DZ)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(I[DZ)V

    .line 140
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(I[DZ)V

    .line 142
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([D)V

    goto/16 :goto_14

    :cond_1
    const/4 v2, 0x0

    if-le v1, v3, :cond_8

    .line 144
    iget-boolean v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-lt v3, v1, :cond_8

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-lt v4, v1, :cond_8

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-lt v4, v1, :cond_8

    .line 145
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 146
    div-int/2addr v3, v1

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v6, v5, v3

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_2

    .line 149
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v3

    .line 150
    :goto_2
    new-instance v8, Lorg/jtransforms/dht/DoubleDHT_3D$1;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$1;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 164
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 168
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v6

    .line 166
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_5

    mul-int v7, v6, v3

    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_4

    .line 173
    iget v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v3

    .line 174
    :goto_5
    new-instance v9, Lorg/jtransforms/dht/DoubleDHT_3D$2;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$2;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[D)V

    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 197
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v3

    .line 201
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v3

    .line 199
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_6
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/2addr v3, v1

    :goto_7
    if-ge v2, v1, :cond_7

    mul-int v6, v2, v3

    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_6

    .line 209
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v3

    .line 213
    :goto_8
    new-instance v8, Lorg/jtransforms/dht/DoubleDHT_3D$3;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$3;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 236
    :cond_7
    :try_start_2
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v1

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v1

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v2

    .line 244
    :goto_9
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 245
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v3, v2

    .line 246
    :goto_a
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v3, v4, :cond_9

    .line 247
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    invoke-virtual {v4, p1, v5}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 250
    :cond_a
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v2

    .line 251
    :goto_b
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v3, :cond_e

    .line 252
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    move v4, v2

    .line 253
    :goto_c
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v4, v5, :cond_d

    move v5, v2

    .line 254
    :goto_d
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_b

    .line 255
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    .line 256
    aget-wide v6, p1, v6

    aput-wide v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 258
    :cond_b
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v5, v2

    .line 259
    :goto_e
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v5, v6, :cond_c

    .line 260
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    .line 261
    aget-wide v7, v0, v5

    aput-wide v7, p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 265
    :cond_e
    new-array v0, v3, [D

    move v1, v2

    .line 266
    :goto_f
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v3, :cond_12

    .line 267
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v3, v1

    move v4, v2

    .line 268
    :goto_10
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v4, v5, :cond_11

    move v5, v2

    .line 269
    :goto_11
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v5, v6, :cond_f

    .line 270
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    .line 271
    aget-wide v6, p1, v6

    aput-wide v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 273
    :cond_f
    iget-object v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v5, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v5, v2

    .line 274
    :goto_12
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v5, v6, :cond_10

    .line 275
    iget v6, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    .line 276
    aget-wide v7, v0, v5

    aput-wide v7, p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 281
    :cond_12
    :goto_13
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([D)V

    :goto_14
    return-void
.end method

.method public forward([[[D)V
    .locals 10

    .line 457
    const-class v0, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    .line 458
    iget-boolean v2, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-le v1, v3, :cond_0

    .line 459
    iget-boolean v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v1, :cond_0

    .line 460
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(I[[[DZ)V

    .line 461
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[[[DZ)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(I[[[DZ)V

    .line 464
    invoke-direct {p0, v0, p1, v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(I[[[DZ)V

    .line 466
    :goto_0
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([[[D)V

    goto/16 :goto_14

    :cond_1
    const/4 v2, 0x0

    if-le v1, v3, :cond_8

    .line 468
    iget-boolean v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-lt v3, v1, :cond_8

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-lt v4, v1, :cond_8

    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-lt v4, v1, :cond_8

    .line 469
    new-array v4, v1, [Ljava/util/concurrent/Future;

    .line 470
    div-int/2addr v3, v1

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_3

    mul-int v6, v5, v3

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_2

    .line 473
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v7, v6, v3

    .line 474
    :goto_2
    new-instance v8, Lorg/jtransforms/dht/DoubleDHT_3D$7;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$7;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 487
    :try_start_0
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 491
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v6

    .line 489
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_5

    mul-int v7, v6, v3

    add-int/lit8 v8, v1, -0x1

    if-ne v6, v8, :cond_4

    .line 496
    iget v8, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v8, v7, v3

    .line 497
    :goto_5
    new-instance v9, Lorg/jtransforms/dht/DoubleDHT_3D$8;

    invoke-direct {v9, p0, v7, v8, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$8;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[D)V

    invoke-static {v9}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 517
    :cond_5
    :try_start_1
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v3

    .line 521
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v3

    .line 519
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    :goto_6
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/2addr v3, v1

    :goto_7
    if-ge v2, v1, :cond_7

    mul-int v6, v2, v3

    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_6

    .line 527
    iget v7, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v7, v6, v3

    .line 528
    :goto_8
    new-instance v8, Lorg/jtransforms/dht/DoubleDHT_3D$9;

    invoke-direct {v8, p0, v6, v7, p1}, Lorg/jtransforms/dht/DoubleDHT_3D$9;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[D)V

    invoke-static {v8}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 548
    :cond_7
    :try_start_2
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v1

    .line 552
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v1

    .line 550
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v2

    .line 556
    :goto_9
    iget v1, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v2

    .line 557
    :goto_a
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v3, :cond_9

    .line 558
    iget-object v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    aget-object v4, p1, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 561
    :cond_a
    iget v0, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v2

    .line 562
    :goto_b
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v3, :cond_e

    move v3, v2

    .line 563
    :goto_c
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v2

    .line 564
    :goto_d
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 565
    aget-object v5, p1, v1

    aget-object v5, v5, v4

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 567
    :cond_b
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v4, v2

    .line 568
    :goto_e
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 569
    aget-object v5, p1, v1

    aget-object v5, v5, v4

    aget-wide v6, v0, v4

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 573
    :cond_e
    new-array v0, v3, [D

    move v1, v2

    .line 574
    :goto_f
    iget v3, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v3, :cond_12

    move v3, v2

    .line 575
    :goto_10
    iget v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v2

    .line 576
    :goto_11
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 577
    aget-object v5, p1, v4

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 579
    :cond_f
    iget-object v4, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v4, v2

    .line 580
    :goto_12
    iget v5, p0, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 581
    aget-object v5, p1, v4

    aget-object v5, v5, v1

    aget-wide v6, v0, v4

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 586
    :cond_12
    :goto_13
    invoke-direct {p0, p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([[[D)V

    :goto_14
    return-void
.end method

.method public inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 763
    const-class v12, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    .line 764
    iget-boolean v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v13, v1, :cond_0

    .line 765
    iget-boolean v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 766
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 767
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    goto :goto_0

    .line 769
    :cond_0
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 770
    invoke-direct {v9, v1, v10, v11}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 772
    :goto_0
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    goto/16 :goto_14

    :cond_1
    if-le v13, v1, :cond_8

    .line 774
    iget-boolean v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget-wide v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    int-to-long v7, v13

    cmp-long v2, v0, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    iget-wide v2, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_8

    .line 775
    new-array v15, v13, [Ljava/util/concurrent/Future;

    .line 776
    div-long v16, v0, v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v13, :cond_3

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_2

    .line 779
    iget-wide v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    goto :goto_2

    :cond_2
    add-long v1, v3, v16

    :goto_2
    move-wide v5, v1

    .line 780
    new-instance v18, Lorg/jtransforms/dht/DoubleDHT_3D$13;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-wide/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$13;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v19

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    const/4 v8, 0x0

    .line 794
    :try_start_0
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 798
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

    .line 796
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

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_4

    .line 803
    iget-wide v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    goto :goto_5

    :cond_4
    add-long v1, v3, v16

    :goto_5
    move-wide v5, v1

    .line 804
    new-instance v18, Lorg/jtransforms/dht/DoubleDHT_3D$14;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object v14, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$14;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    goto :goto_4

    :cond_5
    move-object v14, v8

    .line 827
    :try_start_1
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 831
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 829
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 834
    :goto_6
    iget-wide v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    div-long v16, v0, v19

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v13, :cond_7

    int-to-long v1, v0

    mul-long v3, v1, v16

    add-int/lit8 v1, v13, -0x1

    if-ne v0, v1, :cond_6

    .line 837
    iget-wide v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    goto :goto_8

    :cond_6
    add-long v1, v3, v16

    :goto_8
    move-wide v5, v1

    .line 838
    new-instance v18, Lorg/jtransforms/dht/DoubleDHT_3D$15;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/jtransforms/dht/DoubleDHT_3D$15;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    invoke-static/range {v18 .. v18}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 861
    :cond_7
    :try_start_2
    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 865
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 863
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v14, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    const-wide/16 v2, 0x0

    .line 869
    :goto_9
    iget-wide v4, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-gez v4, :cond_a

    .line 870
    iget-wide v7, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v7, v2

    const-wide/16 v12, 0x0

    .line 871
    :goto_a
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_9

    .line 872
    iget-object v4, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v7

    invoke-virtual {v4, v10, v14, v15, v11}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v12, v5

    goto :goto_a

    :cond_9
    add-long/2addr v2, v5

    goto :goto_9

    .line 875
    :cond_a
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v3, 0x0

    .line 876
    :goto_b
    iget-wide v7, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_e

    .line 877
    iget-wide v7, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v7, v3

    const-wide/16 v12, 0x0

    .line 878
    :goto_c
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_d

    const-wide/16 v14, 0x0

    .line 879
    :goto_d
    iget-wide v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    .line 880
    iget-wide v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v0, v14

    add-long/2addr v0, v7

    add-long/2addr v0, v12

    .line 881
    invoke-virtual {v10, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v14, v15, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v14, v5

    goto :goto_d

    .line 883
    :cond_b
    iget-object v0, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v0, v2, v11}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v0, 0x0

    .line 884
    :goto_e
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v14, v0, v14

    if-gez v14, :cond_c

    .line 885
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v14, v0

    add-long/2addr v14, v7

    add-long/2addr v14, v12

    move-wide/from16 v18, v7

    .line 886
    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v10, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v5

    move-wide/from16 v7, v18

    goto :goto_e

    :cond_c
    move-wide/from16 v18, v7

    add-long/2addr v12, v5

    goto :goto_c

    :cond_d
    add-long/2addr v3, v5

    goto :goto_b

    .line 890
    :cond_e
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide/16 v1, 0x0

    .line 891
    :goto_f
    iget-wide v3, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowsl:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_12

    .line 892
    iget-wide v3, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStridel:J

    mul-long/2addr v3, v1

    const-wide/16 v7, 0x0

    .line 893
    :goto_10
    iget-wide v12, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->columnsl:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_11

    const-wide/16 v12, 0x0

    .line 894
    :goto_11
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_f

    .line 895
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    .line 896
    invoke-virtual {v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    goto :goto_11

    .line 898
    :cond_f
    iget-object v12, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v12, v0, v11}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v12, 0x0

    .line 899
    :goto_12
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->slicesl:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    .line 900
    iget-wide v14, v9, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStridel:J

    mul-long/2addr v14, v12

    add-long/2addr v14, v3

    add-long/2addr v14, v7

    move-wide/from16 v18, v3

    .line 901
    invoke-virtual {v0, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v10, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v5

    move-wide/from16 v3, v18

    goto :goto_12

    :cond_10
    move-wide/from16 v18, v3

    add-long/2addr v7, v5

    goto :goto_10

    :cond_11
    add-long/2addr v1, v5

    goto :goto_f

    .line 906
    :cond_12
    :goto_13
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    :goto_14
    return-void
.end method

.method public inverse([DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 603
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 604
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 605
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(I[DZ)V

    .line 607
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[DZ)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(I[DZ)V

    .line 610
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(I[DZ)V

    .line 612
    :goto_0
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([D)V

    goto/16 :goto_14

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 614
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 615
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 616
    div-int v14, v0, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 619
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 620
    new-instance v15, Lorg/jtransforms/dht/DoubleDHT_3D$10;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$10;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 634
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 638
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

    .line 636
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

    .line 643
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 644
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_3D$11;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$11;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 667
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

    .line 671
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

    .line 669
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    :goto_6
    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 677
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 678
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$12;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 701
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

    .line 705
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

    .line 703
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 709
    :goto_9
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v0, v1, :cond_a

    .line 710
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v1, v0

    move v2, v12

    .line 711
    :goto_a
    iget v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v2, v3, :cond_9

    .line 712
    iget-object v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v3, v8, v4, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 715
    :cond_a
    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 716
    :goto_b
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_e

    .line 717
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 718
    :goto_c
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v3, v4, :cond_d

    move v4, v12

    .line 719
    :goto_d
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_b

    .line 720
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 721
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 723
    :cond_b
    iget-object v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v4, v12

    .line 724
    :goto_e
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v4, v5, :cond_c

    .line 725
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 726
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 730
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 731
    :goto_f
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v2, :cond_12

    .line 732
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rowStride:I

    mul-int/2addr v2, v1

    move v3, v12

    .line 733
    :goto_10
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v3, v4, :cond_11

    move v4, v12

    .line 734
    :goto_11
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v4, v5, :cond_f

    .line 735
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 736
    aget-wide v5, v8, v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 738
    :cond_f
    iget-object v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v4, v0, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v4, v12

    .line 739
    :goto_12
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v4, v5, :cond_10

    .line 740
    iget v5, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 741
    aget-wide v10, v0, v4

    aput-wide v10, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 746
    :cond_12
    :goto_13
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([D)V

    :goto_14
    return-void
.end method

.method public inverse([[[DZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 919
    const-class v10, Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    .line 920
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->isPowerOfTwo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-le v11, v1, :cond_0

    .line 921
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_0

    .line 922
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(I[[[DZ)V

    .line 923
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[[[DZ)V

    goto :goto_0

    .line 925
    :cond_0
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_sub(I[[[DZ)V

    .line 926
    invoke-direct {v7, v1, v8, v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3db_sub(I[[[DZ)V

    .line 928
    :goto_0
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([[[D)V

    goto/16 :goto_14

    :cond_1
    const/4 v12, 0x0

    if-le v11, v1, :cond_8

    .line 930
    iget-boolean v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->useThreads:Z

    if-eqz v0, :cond_8

    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-lt v0, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-lt v1, v11, :cond_8

    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-lt v1, v11, :cond_8

    .line 931
    new-array v13, v11, [Ljava/util/concurrent/Future;

    .line 932
    div-int v14, v0, v11

    move v0, v12

    :goto_1
    if-ge v0, v11, :cond_3

    mul-int v3, v0, v14

    add-int/lit8 v1, v11, -0x1

    if-ne v0, v1, :cond_2

    .line 935
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_2

    :cond_2
    add-int v1, v3, v14

    :goto_2
    move v4, v1

    .line 936
    new-instance v15, Lorg/jtransforms/dht/DoubleDHT_3D$16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$16;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[DZ)V

    invoke-static {v15}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 949
    :try_start_0
    invoke-static {v13}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 953
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

    .line 951
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

    .line 958
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    goto :goto_5

    :cond_4
    add-int v1, v3, v14

    :goto_5
    move v4, v1

    .line 959
    new-instance v16, Lorg/jtransforms/dht/DoubleDHT_3D$17;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$17;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[DZ)V

    invoke-static/range {v16 .. v16}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 979
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

    .line 983
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

    .line 981
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 986
    :goto_6
    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    div-int/2addr v0, v11

    :goto_7
    if-ge v12, v11, :cond_7

    mul-int v3, v12, v0

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_6

    .line 989
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    goto :goto_8

    :cond_6
    add-int v1, v3, v0

    :goto_8
    move v4, v1

    .line 990
    new-instance v14, Lorg/jtransforms/dht/DoubleDHT_3D$18;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jtransforms/dht/DoubleDHT_3D$18;-><init>(Lorg/jtransforms/dht/DoubleDHT_3D;II[[[DZ)V

    invoke-static {v14}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1010
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

    .line 1014
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

    .line 1012
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v15, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_8
    move v0, v12

    .line 1018
    :goto_9
    iget v1, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v0, v1, :cond_a

    move v1, v12

    .line 1019
    :goto_a
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v2, :cond_9

    .line 1020
    iget-object v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtColumns:Lorg/jtransforms/dht/DoubleDHT_1D;

    aget-object v3, v8, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1023
    :cond_a
    iget v0, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    new-array v0, v0, [D

    move v1, v12

    .line 1024
    :goto_b
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v1, v2, :cond_e

    move v2, v12

    .line 1025
    :goto_c
    iget v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v2, v3, :cond_d

    move v3, v12

    .line 1026
    :goto_d
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v3, v4, :cond_b

    .line 1027
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1029
    :cond_b
    iget-object v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtRows:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v3, v12

    .line 1030
    :goto_e
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v3, v4, :cond_c

    .line 1031
    aget-object v4, v8, v1

    aget-object v4, v4, v3

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1035
    :cond_e
    new-array v0, v2, [D

    move v1, v12

    .line 1036
    :goto_f
    iget v2, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->rows:I

    if-ge v1, v2, :cond_12

    move v2, v12

    .line 1037
    :goto_10
    iget v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->columns:I

    if-ge v2, v3, :cond_11

    move v3, v12

    .line 1038
    :goto_11
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v4, :cond_f

    .line 1039
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v4, v2

    aput-wide v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1041
    :cond_f
    iget-object v3, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->dhtSlices:Lorg/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v3, v0, v9}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v3, v12

    .line 1042
    :goto_12
    iget v4, v7, Lorg/jtransforms/dht/DoubleDHT_3D;->slices:I

    if-ge v3, v4, :cond_10

    .line 1043
    aget-object v4, v8, v3

    aget-object v4, v4, v1

    aget-wide v5, v0, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1048
    :cond_12
    :goto_13
    invoke-direct/range {p0 .. p1}, Lorg/jtransforms/dht/DoubleDHT_3D;->yTransform([[[D)V

    :goto_14
    return-void
.end method
