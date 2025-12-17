.class public Lorg/jtransforms/dct/BenchmarkDoubleDCT;
.super Ljava/lang/Object;
.source "BenchmarkDoubleDCT.java"


# static fields
.field private static doScaling:Z = false

.field private static doWarmup:Z = true

.field private static niter:I = 0xc8

.field private static nsize:I = 0x10

.field private static nthread:I = 0x8

.field private static sizes1D:[J = null

.field private static sizes2D:[J = null

.field private static sizes3D:[J = null

.field private static threadsBegin2D:I = 0x10064

.field private static threadsBegin3D:I = 0x10064


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 55
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    .line 57
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    .line 59
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x2880
        0x6978
        0x12750
        0x285ff
        0x58980
        0x17d784
        0x310000
        0x5f5e10
    .end array-data

    :array_1
    .array-data 8
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x104
        0x208
        0x41a
        0x5b2
        0x7a8
        0xb64
        0x1014
        0x16c8
    .end array-data

    :array_2
    .array-data 8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x5
        0x11
        0x1e
        0x5f
        0xb4
        0x10e
        0x144
        0x1a4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static benchmarkForward_1D()V
    .locals 15

    .line 110
    sget v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    new-array v7, v0, [D

    .line 111
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_4

    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DCT 1D of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-boolean v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_1D;

    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5}, Lorg/jtransforms/dct/DoubleDCT_1D;-><init>(J)V

    .line 117
    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v4, v3, v1

    long-to-int v3, v4

    new-array v3, v3, [D

    .line 118
    invoke-static {v4, v5, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 119
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    .line 120
    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 121
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    .line 123
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 124
    new-instance v4, Lorg/jtransforms/dct/DoubleDCT_1D;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v9, v5, v1

    invoke-direct {v4, v9, v10}, Lorg/jtransforms/dct/DoubleDCT_1D;-><init>(J)V

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 126
    sget-object v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v9, v2, v1

    long-to-int v2, v9

    new-array v2, v2, [D

    .line 127
    sget-boolean v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    if-eqz v3, :cond_1

    .line 128
    invoke-static {v9, v10, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 129
    sget-boolean v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v4, v2, v3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    .line 130
    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v9, v3, v1

    invoke-static {v9, v10, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 131
    sget-boolean v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v4, v2, v3}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    :cond_1
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    .line 134
    :goto_1
    sget v11, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    if-ge v3, v11, :cond_3

    .line 135
    sget-object v11, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 136
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 137
    sget-boolean v13, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v4, v2, v13}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v13, v11, v9

    if-gez v13, :cond_2

    move-wide v9, v11

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    div-double/2addr v9, v5

    .line 143
    aput-wide v9, v7, v1

    .line 144
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time without constructor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "%.2f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 150
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 152
    :cond_4
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    sget v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    const-string v1, "benchmarkDoubleForwardDCT_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_1D()V
    .locals 15

    .line 157
    sget v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    new-array v7, v0, [D

    .line 158
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 161
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DCT 2D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    sget-boolean v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_2D;

    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/jtransforms/dct/DoubleDCT_2D;-><init>(JJ)V

    .line 164
    new-instance v3, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    mul-long/2addr v5, v5

    invoke-direct {v3, v5, v6, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 165
    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 166
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 167
    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 168
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 170
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 171
    new-instance v4, Lorg/jtransforms/dct/DoubleDCT_2D;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v4, v9, v10, v9, v10}, Lorg/jtransforms/dct/DoubleDCT_2D;-><init>(JJ)V

    .line 172
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 173
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v3, v1

    mul-long/2addr v9, v9

    invoke-direct {v2, v9, v10, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    .line 175
    :goto_1
    sget v11, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    if-ge v3, v11, :cond_2

    .line 176
    sget-object v11, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v12, v13, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 178
    sget-boolean v13, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v4, v2, v13}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v13, v11, v9

    if-gez v13, :cond_1

    move-wide v9, v11

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v9, v5

    .line 184
    aput-wide v9, v7, v1

    .line 185
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 186
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time without constructor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "%.2f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 191
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 193
    :cond_3
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    sget v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    const-string v1, "benchmarkDoubleForwardDCT_2D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_2D()V
    .locals 16

    .line 199
    sget v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    new-array v7, v0, [D

    .line 200
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 203
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DCT 2D (input 2D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-boolean v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_2D;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10, v9, v10}, Lorg/jtransforms/dct/DoubleDCT_2D;-><init>(JJ)V

    .line 206
    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v5, v1

    long-to-int v5, v9

    long-to-int v6, v9

    new-array v9, v3, [I

    aput v6, v9, v4

    aput v5, v9, v0

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 207
    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 208
    sget-boolean v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward([[DZ)V

    .line 209
    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 210
    sget-boolean v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward([[DZ)V

    .line 212
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 213
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_2D;

    sget-object v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/dct/DoubleDCT_2D;-><init>(JJ)V

    .line 214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 215
    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v11, v5, v1

    long-to-int v5, v11

    long-to-int v6, v11

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v5, v3, v0

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v11, v0

    .line 217
    :goto_1
    sget v12, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    if-ge v11, v12, :cond_2

    .line 218
    sget-object v12, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    aget-wide v13, v12, v1

    invoke-static {v13, v14, v13, v14, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 219
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 220
    sget-boolean v14, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v14}, Lorg/jtransforms/dct/DoubleDCT_2D;->forward([[DZ)V

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    long-to-double v12, v14

    cmpg-double v14, v12, v5

    if-gez v14, :cond_1

    move-wide v5, v12

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v5, v9

    .line 226
    aput-wide v5, v7, v1

    .line 227
    aget-wide v2, v8, v1

    add-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 228
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\tBest execution time without constructor: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v5, v7, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "%.2f"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 230
    check-cast v2, [[D

    .line 232
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 233
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 235
    :cond_3
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    sget v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    const-string v1, "benchmarkDoubleForwardDCT_2D_input_2D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_1D()V
    .locals 23

    .line 241
    sget v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    new-array v7, v0, [D

    .line 242
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 245
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DCT 3D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    sget-boolean v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 247
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_3D;

    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v14, v3, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dct/DoubleDCT_3D;-><init>(JJJ)V

    .line 248
    new-instance v3, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v5, v4, v1

    mul-long v9, v5, v5

    mul-long/2addr v9, v5

    invoke-direct {v3, v9, v10, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 249
    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v20, v4, v1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    move-object/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 250
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 251
    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v20, v4, v1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 252
    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 254
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 255
    new-instance v4, Lorg/jtransforms/dct/DoubleDCT_3D;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v14, v5, v1

    move-object v9, v4

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dct/DoubleDCT_3D;-><init>(JJJ)V

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 257
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v9, v3, v1

    mul-long v11, v9, v9

    mul-long/2addr v11, v9

    invoke-direct {v2, v11, v12, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    move-wide/from16 v16, v9

    .line 259
    :goto_1
    sget v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    if-ge v3, v9, :cond_2

    .line 260
    sget-object v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object v15, v2

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 262
    sget-boolean v11, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v4, v2, v11}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-double v9, v11

    cmpg-double v11, v9, v16

    if-gez v11, :cond_1

    move-wide/from16 v16, v9

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    div-double v16, v16, v5

    .line 268
    aput-wide v16, v7, v1

    .line 269
    aget-wide v2, v8, v1

    add-double v2, v2, v16

    aput-wide v2, v8, v1

    .line 270
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time without constructor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "%.2f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 275
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 277
    :cond_3
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    sget v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    const-string v1, "benchmarkDoubleForwardDCT_3D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_3D()V
    .locals 20

    .line 283
    sget v0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    new-array v7, v0, [D

    .line 284
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 286
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DCT 3D (input 3D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    sget-boolean v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 289
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_3D;

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v14, v6, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dct/DoubleDCT_3D;-><init>(JJJ)V

    .line 290
    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v9, v6, v1

    long-to-int v6, v9

    long-to-int v11, v9

    long-to-int v9, v9

    new-array v10, v4, [I

    aput v9, v10, v3

    aput v11, v10, v5

    aput v6, v10, v0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[D

    .line 291
    sget-object v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 292
    sget-boolean v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v6, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward([[[DZ)V

    .line 293
    sget-object v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 294
    sget-boolean v9, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v6, v9}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward([[[DZ)V

    .line 296
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 297
    new-instance v2, Lorg/jtransforms/dct/DoubleDCT_3D;

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v16, v6, v1

    move-object v11, v2

    move-wide/from16 v12, v16

    move-wide/from16 v14, v16

    invoke-direct/range {v11 .. v17}, Lorg/jtransforms/dct/DoubleDCT_3D;-><init>(JJJ)V

    .line 298
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-double v9, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    aput-wide v9, v8, v1

    .line 299
    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v9, v6, v1

    long-to-int v6, v9

    long-to-int v13, v9

    long-to-int v9, v9

    new-array v4, v4, [I

    aput v9, v4, v3

    aput v13, v4, v5

    aput v6, v4, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[D

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v0

    .line 301
    :goto_1
    sget v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    if-ge v4, v6, :cond_2

    .line 302
    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    aget-wide v17, v6, v1

    move-wide/from16 v13, v17

    move-wide/from16 v15, v17

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 304
    sget-boolean v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v2, v3, v6}, Lorg/jtransforms/dct/DoubleDCT_3D;->forward([[[DZ)V

    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v13, v15, v13

    long-to-double v13, v13

    cmpg-double v6, v13, v9

    if-gez v6, :cond_1

    move-wide v9, v13

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v9, v11

    .line 310
    aput-wide v9, v7, v1

    .line 311
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time without constructor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v7, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "%.2f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 314
    check-cast v2, [[[D

    .line 316
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 317
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 319
    :cond_3
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    sget v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    sget-boolean v4, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    const-string v1, "benchmarkDoubleForwardDCT_3D_input_3D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-static {p0}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->parseArguments([Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->benchmarkForward_1D()V

    .line 326
    invoke-static {}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->benchmarkForward_2D_input_1D()V

    .line 327
    invoke-static {}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->benchmarkForward_2D_input_2D()V

    .line 328
    invoke-static {}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->benchmarkForward_3D_input_1D()V

    .line 329
    invoke-static {}, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->benchmarkForward_3D_input_3D()V

    const/4 p0, 0x0

    .line 330
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static parseArguments([Ljava/lang/String;)V
    .locals 6

    .line 70
    array-length v0, p0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 71
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    const/4 v1, 0x1

    .line 72
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin2D:I

    const/4 v1, 0x2

    .line 73
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin3D:I

    const/4 v1, 0x3

    .line 74
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    const/4 v1, 0x4

    .line 75
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    const/4 v1, 0x5

    .line 76
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    const/4 v1, 0x6

    .line 77
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    .line 78
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    .line 79
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    .line 80
    new-array v1, v1, [J

    sput-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    move v1, v0

    .line 81
    :goto_0
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_0

    .line 82
    sget-object v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    add-int/lit8 v3, v1, 0x7

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 84
    :goto_1
    sget v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v1, v2, :cond_1

    .line 85
    sget-object v3, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    :goto_2
    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    if-ge v0, v1, :cond_3

    .line 88
    sget-object v2, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    add-int/lit8 v3, v1, 0x7

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Default settings are used."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :cond_3
    sget p0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    invoke-static {p0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 94
    sget p0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin2D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_2D(J)V

    .line 95
    sget p0, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin3D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_3D(J)V

    .line 96
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nthred = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nthread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin2D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin2D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin3D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->threadsBegin3D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "niter = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->niter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doWarmup = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doWarmup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doScaling = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->doScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nsize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->nsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes1D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes1D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes2D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes2D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes3D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/dct/BenchmarkDoubleDCT;->sizes3D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
