.class public Lorg/jtransforms/fft/BenchmarkFloatFFT;
.super Ljava/lang/Object;
.source "BenchmarkFloatFFT.java"


# static fields
.field private static doScaling:Z = false

.field private static doWarmup:Z = true

.field private static niter:I = 0x64

.field private static nsize:I = 0x8

.field private static nthread:I = 0x10

.field private static sizes1D:[J = null

.field private static sizes2D:[J = null

.field private static sizes3D:[J = null

.field private static threadsBegin2D:I = 0x10000

.field private static threadsBegin3D:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 56
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    .line 58
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    .line 60
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static benchmarkComplexForward_1D()V
    .locals 17

    .line 112
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 113
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 115
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Complex forward FFT 1D of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_1D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    .line 118
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v5, v1

    mul-long v5, v9, v3

    long-to-int v5, v5

    new-array v5, v5, [F

    mul-long/2addr v9, v3

    .line 119
    invoke-static {v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 120
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 121
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v6, v1

    mul-long/2addr v9, v3

    invoke-static {v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 122
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 125
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_1D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 127
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v11, v5, v1

    mul-long/2addr v11, v3

    long-to-int v5, v11

    new-array v5, v5, [F

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v0

    .line 129
    :goto_1
    sget v13, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v6, v13, :cond_2

    .line 130
    sget-object v13, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v14, v13, v1

    mul-long/2addr v14, v3

    invoke-static {v14, v15, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 132
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v13, v15, v13

    long-to-double v13, v13

    cmpg-double v15, v13, v11

    if-gez v15, :cond_1

    move-wide v11, v13

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v11, v9

    .line 138
    aput-wide v11, v7, v1

    .line 139
    aget-wide v2, v8, v1

    add-double/2addr v2, v11

    aput-wide v2, v8, v1

    .line 140
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

    .line 141
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

    .line 144
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 145
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 147
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    const-string v1, "benchmarkFloatComplexForwardFFT_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkComplexForward_2D_input_1D()V
    .locals 17

    .line 195
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 196
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_4

    .line 199
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Complex forward FFT 2D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 201
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 202
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v3

    mul-long/2addr v11, v9

    invoke-direct {v5, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 203
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v3

    invoke-static {v9, v10, v11, v12, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 204
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 205
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v3

    invoke-static {v9, v10, v11, v12, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 206
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 209
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 210
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 211
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v11, v6, v1

    mul-long v13, v11, v3

    mul-long/2addr v13, v11

    invoke-direct {v5, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 213
    sget v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    .line 214
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v12, v11, v1

    const-wide/16 v14, 0x2000

    cmp-long v11, v12, v14

    const/4 v12, 0x1

    if-ltz v11, :cond_1

    .line 215
    div-int/lit8 v6, v6, 0xa

    invoke-static {v12, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    :cond_1
    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v11, v0

    :goto_1
    if-ge v11, v6, :cond_3

    .line 218
    sget-object v15, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v15, v1

    move/from16 v16, v1

    mul-long v0, v9, v3

    invoke-static {v9, v10, v0, v1, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 220
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v0

    long-to-double v0, v9

    cmpg-double v9, v0, v13

    if-gez v9, :cond_2

    move-wide v13, v0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    const/4 v0, 0x0

    const-wide v9, 0x412e848000000000L    # 1000000.0

    goto :goto_1

    :cond_3
    move/from16 v16, v1

    move-wide v0, v9

    div-double/2addr v13, v0

    .line 226
    aput-wide v13, v7, v16

    .line 227
    aget-wide v0, v8, v16

    add-double/2addr v0, v13

    aput-wide v0, v8, v16

    .line 228
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tBest execution time without constructor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v2, v7, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%.2f"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msec"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time with constructor: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v8, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v0, 0x1388

    .line 233
    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v16, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 235
    :cond_4
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    const-string v1, "benchmarkFloatComplexForwardFFT_2D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkComplexForward_2D_input_2D()V
    .locals 17

    .line 240
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 241
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 243
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 244
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Complex forward FFT 2D (input 2D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 246
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 247
    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v10, v9, v1

    long-to-int v9, v10

    long-to-int v10, v10

    mul-int/2addr v10, v5

    new-array v11, v5, [I

    aput v10, v11, v6

    aput v9, v11, v0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    .line 248
    sget-object v10, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v11, v10, v1

    mul-long v13, v11, v3

    invoke-static {v11, v12, v13, v14, v9}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 249
    invoke-virtual {v2, v9}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    .line 250
    sget-object v10, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v11, v10, v1

    mul-long v13, v11, v3

    invoke-static {v11, v12, v13, v14, v9}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 251
    invoke-virtual {v2, v9}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    .line 253
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 254
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v12, v11, v1

    invoke-direct {v2, v12, v13, v12, v13}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-double v9, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    aput-wide v9, v8, v1

    .line 256
    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v13, v9, v1

    long-to-int v9, v13

    long-to-int v10, v13

    mul-int/2addr v10, v5

    new-array v5, v5, [I

    aput v10, v5, v6

    aput v9, v5, v0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v13, v0

    .line 258
    :goto_1
    sget v14, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v13, v14, :cond_2

    .line 259
    sget-object v14, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    move-object v15, v7

    aget-wide v6, v14, v1

    move/from16 v16, v1

    mul-long v0, v6, v3

    invoke-static {v6, v7, v0, v1, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 260
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 261
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    .line 262
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-double v0, v6

    cmpg-double v6, v0, v9

    if-gez v6, :cond_1

    move-wide v9, v0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-object v7, v15

    move/from16 v1, v16

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    move-object v15, v7

    div-double/2addr v9, v11

    .line 267
    aput-wide v9, v15, v16

    .line 268
    aget-wide v0, v8, v16

    add-double/2addr v0, v9

    aput-wide v0, v8, v16

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tBest execution time without constructor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v2, v15, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v2, "%.2f"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msec"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time with constructor: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v8, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    check-cast v0, [[F

    .line 273
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v0, 0x1388

    .line 274
    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v16, 0x1

    move v0, v6

    goto/16 :goto_0

    :cond_3
    move-object v15, v7

    .line 276
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    const-string v1, "benchmarkFloatComplexForwardFFT_2D_input_2D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkComplexForward_3D_input_1D()V
    .locals 23

    .line 363
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 364
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 366
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_4

    .line 367
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Complex forward FFT 3D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 369
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v5, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 370
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v9

    mul-long/2addr v11, v3

    mul-long/2addr v11, v9

    invoke-direct {v5, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 371
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v18, v6, v1

    mul-long v20, v18, v3

    move-wide/from16 v16, v18

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 372
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 373
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v18, v6, v1

    mul-long v20, v18, v3

    move-wide/from16 v16, v18

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 374
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 377
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v9, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 378
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 379
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v11, v6, v1

    mul-long v13, v11, v11

    mul-long/2addr v13, v3

    mul-long/2addr v13, v11

    invoke-direct {v5, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 381
    sget v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    .line 382
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v12, v11, v1

    const-wide/16 v14, 0x400

    cmp-long v11, v12, v14

    const/4 v15, 0x1

    if-ltz v11, :cond_1

    .line 383
    div-int/lit8 v6, v6, 0xa

    invoke-static {v15, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    :cond_1
    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v13, v0

    move-wide/from16 v18, v11

    :goto_1
    if-ge v13, v6, :cond_3

    .line 386
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v16, v11, v1

    mul-long v20, v16, v3

    move-wide/from16 v11, v16

    move/from16 v22, v13

    move-wide/from16 v13, v16

    move v3, v15

    move-wide/from16 v15, v20

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v17}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 387
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 388
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v4, v11, v18

    if-gez v4, :cond_2

    move-wide/from16 v18, v11

    :cond_2
    add-int/lit8 v13, v22, 0x1

    move v15, v3

    const-wide/16 v3, 0x2

    goto :goto_1

    :cond_3
    move v3, v15

    div-double v18, v18, v9

    .line 394
    aput-wide v18, v7, v1

    .line 395
    aget-wide v4, v8, v1

    add-double v4, v4, v18

    aput-wide v4, v8, v1

    .line 396
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tBest execution time without constructor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v5, v7, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "%.2f"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msec"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "\tBest execution time with constructor: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v9, v8, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v0

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 401
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 403
    :cond_4
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    const-string v1, "benchmarkFloatComplexForwardFFT_3D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkComplexForward_3D_input_3D()V
    .locals 21

    .line 408
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 409
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 411
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 412
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Complex forward FFT 3D (input 3D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const/4 v3, 0x3

    const-wide/16 v4, 0x2

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 414
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v10, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v15, v10, v1

    move-object v10, v2

    move-wide v11, v15

    move-wide v13, v15

    invoke-direct/range {v10 .. v16}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 415
    sget-object v10, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v11, v10, v1

    long-to-int v10, v11

    long-to-int v13, v11

    long-to-int v11, v11

    mul-int/2addr v11, v6

    new-array v12, v3, [I

    aput v11, v12, v6

    aput v13, v12, v9

    aput v10, v12, v0

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[F

    .line 416
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v13, v11, v1

    mul-long v15, v13, v4

    move-wide v11, v13

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 417
    invoke-virtual {v2, v10}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V

    .line 418
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v13, v11, v1

    mul-long v15, v13, v4

    move-wide v11, v13

    invoke-static/range {v11 .. v17}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 419
    invoke-virtual {v2, v10}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V

    .line 421
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 422
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v12, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v17, v12, v1

    move-object v12, v2

    move-wide/from16 v13, v17

    move-wide/from16 v15, v17

    invoke-direct/range {v12 .. v18}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 423
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    long-to-double v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 424
    sget-object v10, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v10, v1

    long-to-int v10, v14

    long-to-int v11, v14

    long-to-int v14, v14

    mul-int/2addr v14, v6

    new-array v3, v3, [I

    aput v14, v3, v6

    aput v11, v3, v9

    aput v10, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v0

    .line 426
    :goto_1
    sget v14, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v6, v14, :cond_2

    .line 427
    sget-object v14, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v16, v14, v1

    mul-long v18, v16, v4

    move-wide/from16 v14, v16

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v20}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 428
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 429
    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V

    .line 430
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v14, v16, v14

    long-to-double v14, v14

    cmpg-double v16, v14, v10

    if-gez v16, :cond_1

    move-wide v10, v14

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v10, v12

    .line 435
    aput-wide v10, v7, v1

    .line 436
    aget-wide v2, v8, v1

    add-double/2addr v2, v10

    aput-wide v2, v8, v1

    .line 437
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tBest execution time without constructor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "%.2f"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " msec"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\tBest execution time with constructor: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v10, v8, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v0

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 439
    check-cast v2, [[[F

    .line 441
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 442
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 444
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    const-string v1, "benchmarkFloatComplexForwardFFT_3D_input_3D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkRealForward_1D()V
    .locals 15

    .line 153
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 154
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 156
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 157
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Real forward FFT 1D of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_1D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    .line 160
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v5, v1

    mul-long v5, v9, v3

    long-to-int v5, v5

    new-array v5, v5, [F

    .line 161
    invoke-static {v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 162
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    .line 163
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 164
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 167
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_1D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11}, Lorg/jtransforms/fft/FloatFFT_1D;-><init>(J)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 169
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v11, v5, v1

    mul-long/2addr v11, v3

    long-to-int v3, v11

    new-array v3, v3, [F

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v0

    .line 171
    :goto_1
    sget v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v6, v11, :cond_2

    .line 172
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[F)V

    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 174
    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v13, v11, v4

    if-gez v13, :cond_1

    move-wide v4, v11

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v4, v9

    .line 180
    aput-wide v4, v7, v1

    .line 181
    aget-wide v2, v8, v1

    add-double/2addr v2, v4

    aput-wide v2, v8, v1

    .line 182
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

    .line 183
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

    .line 186
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 187
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 189
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    const-string v1, "benchmarkFloatRealForwardFFT_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkRealForward_2D_input_1D()V
    .locals 15

    .line 281
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 282
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 284
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 285
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Real forward FFT 2D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 287
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 288
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v3

    mul-long/2addr v11, v9

    invoke-direct {v5, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 289
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 290
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 291
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 292
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 294
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 295
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 297
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v11, v6, v1

    mul-long/2addr v3, v11

    mul-long/2addr v3, v11

    invoke-direct {v5, v3, v4, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v0

    .line 299
    :goto_1
    sget v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v6, v11, :cond_2

    .line 300
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v12, v13, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 301
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 302
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v13, v11, v3

    if-gez v13, :cond_1

    move-wide v3, v11

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v3, v9

    .line 308
    aput-wide v3, v7, v1

    .line 309
    aget-wide v5, v8, v1

    add-double/2addr v5, v3

    aput-wide v5, v8, v1

    .line 310
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

    .line 311
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

    .line 314
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 315
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 317
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    const-string v1, "benchmarkFloatRealForwardFFT_2D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkRealForward_2D_input_2D()V
    .locals 16

    .line 322
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 323
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 325
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 326
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Real forward FFT 2D (input 2D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 328
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10, v9, v10}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 329
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v5, v1

    long-to-int v5, v9

    long-to-int v6, v9

    mul-int/2addr v6, v3

    new-array v9, v3, [I

    aput v6, v9, v4

    aput v5, v9, v0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 330
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 331
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull([[F)V

    .line 332
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 333
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull([[F)V

    .line 335
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 336
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_2D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/fft/FloatFFT_2D;-><init>(JJ)V

    .line 337
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 338
    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v11, v5, v1

    long-to-int v5, v11

    long-to-int v6, v11

    mul-int/2addr v6, v3

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v5, v3, v0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v11, v0

    .line 340
    :goto_1
    sget v12, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v11, v12, :cond_2

    .line 341
    sget-object v12, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    aget-wide v13, v12, v1

    invoke-static {v13, v14, v13, v14, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[F)V

    .line 342
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 343
    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/FloatFFT_2D;->realForwardFull([[F)V

    .line 344
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

    .line 349
    aput-wide v5, v7, v1

    .line 350
    aget-wide v2, v8, v1

    add-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 351
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

    .line 352
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

    .line 353
    check-cast v2, [[F

    .line 355
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 356
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 358
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    const-string v1, "benchmarkFloatRealForwardFFT_2D_input_2D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkRealForward_3D_input_1D()V
    .locals 23

    .line 449
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 450
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 452
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 453
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Real forward FFT 3D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 455
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v5, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 456
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v6, v1

    mul-long v11, v9, v9

    mul-long/2addr v11, v3

    mul-long/2addr v11, v9

    invoke-direct {v5, v11, v12, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 457
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 458
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v20, v6, v1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 459
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 461
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 462
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v9, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 463
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 464
    new-instance v5, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v11, v6, v1

    mul-long v13, v11, v11

    mul-long/2addr v13, v3

    mul-long/2addr v13, v11

    invoke-direct {v5, v13, v14, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v0

    .line 466
    :goto_1
    sget v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v6, v11, :cond_2

    .line 467
    sget-object v11, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v15, v11, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v17}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 468
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 469
    invoke-virtual {v2, v5}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    .line 470
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-double v11, v13

    cmpg-double v13, v11, v3

    if-gez v13, :cond_1

    move-wide v3, v11

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v3, v9

    .line 475
    aput-wide v3, v7, v1

    .line 476
    aget-wide v5, v8, v1

    add-double/2addr v5, v3

    aput-wide v5, v8, v1

    .line 477
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

    .line 478
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

    .line 481
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 482
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 484
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    const-string v1, "benchmarkFloatRealForwardFFT_3D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkRealForward_3D_input_3D()V
    .locals 20

    .line 489
    sget v0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    new-array v7, v0, [D

    .line 490
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 492
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_3

    .line 493
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Real forward FFT 3D (input 3D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    sget-boolean v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 495
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v14, v6, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 496
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v6, v1

    long-to-int v6, v9

    long-to-int v11, v9

    long-to-int v9, v9

    mul-int/2addr v9, v4

    new-array v10, v3, [I

    aput v9, v10, v4

    aput v11, v10, v5

    aput v6, v10, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[F

    .line 497
    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 498
    invoke-virtual {v2, v6}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull([[[F)V

    .line 499
    sget-object v9, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 500
    invoke-virtual {v2, v6}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull([[[F)V

    .line 502
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 503
    new-instance v2, Lorg/jtransforms/fft/FloatFFT_3D;

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v16, v6, v1

    move-object v11, v2

    move-wide/from16 v12, v16

    move-wide/from16 v14, v16

    invoke-direct/range {v11 .. v17}, Lorg/jtransforms/fft/FloatFFT_3D;-><init>(JJJ)V

    .line 504
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-double v9, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    aput-wide v9, v8, v1

    .line 505
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v9, v6, v1

    long-to-int v6, v9

    long-to-int v13, v9

    long-to-int v9, v9

    mul-int/2addr v9, v4

    new-array v3, v3, [I

    aput v9, v3, v4

    aput v13, v3, v5

    aput v6, v3, v0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v0

    .line 507
    :goto_1
    sget v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    if-ge v4, v6, :cond_2

    .line 508
    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    aget-wide v17, v6, v1

    move-wide/from16 v13, v17

    move-wide/from16 v15, v17

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[F)V

    .line 509
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 510
    invoke-virtual {v2, v3}, Lorg/jtransforms/fft/FloatFFT_3D;->realForwardFull([[[F)V

    .line 511
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

    .line 516
    aput-wide v9, v7, v1

    .line 517
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 518
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

    .line 519
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

    .line 520
    check-cast v2, [[[F

    .line 522
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 523
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 525
    :cond_3
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    sget v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    sget-boolean v4, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    sget-object v6, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    const-string v1, "benchmarkFloatRealForwardFFT_3D_input_3D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 530
    invoke-static {p0}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->parseArguments([Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkComplexForward_1D()V

    .line 532
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkRealForward_1D()V

    .line 534
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkComplexForward_2D_input_1D()V

    .line 535
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkComplexForward_2D_input_2D()V

    .line 536
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkRealForward_2D_input_1D()V

    .line 537
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkRealForward_2D_input_2D()V

    .line 539
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkComplexForward_3D_input_1D()V

    .line 540
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkComplexForward_3D_input_3D()V

    .line 541
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkRealForward_3D_input_1D()V

    .line 542
    invoke-static {}, Lorg/jtransforms/fft/BenchmarkFloatFFT;->benchmarkRealForward_3D_input_3D()V

    const/4 p0, 0x0

    .line 543
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static parseArguments([Ljava/lang/String;)V
    .locals 6

    .line 71
    array-length v0, p0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 72
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    const/4 v1, 0x1

    .line 73
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin2D:I

    const/4 v1, 0x2

    .line 74
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin3D:I

    const/4 v1, 0x3

    .line 75
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    const/4 v1, 0x4

    .line 76
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    const/4 v1, 0x5

    .line 77
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    const/4 v1, 0x6

    .line 78
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    .line 79
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    .line 80
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    .line 81
    new-array v1, v1, [J

    sput-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    move v1, v0

    .line 82
    :goto_0
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_0

    .line 83
    sget-object v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

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

    .line 85
    :goto_1
    sget v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v1, v2, :cond_1

    .line 86
    sget-object v3, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_1
    :goto_2
    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    if-ge v0, v1, :cond_3

    .line 89
    sget-object v2, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

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

    .line 92
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Default settings are used."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_3
    sget p0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    invoke-static {p0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 95
    sget p0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin2D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_2D(J)V

    .line 96
    sget p0, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin3D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_3D(J)V

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nthred = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nthread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin2D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin2D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin3D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->threadsBegin3D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "niter = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->niter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doWarmup = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doWarmup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doScaling = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->doScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nsize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->nsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes1D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes1D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes2D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes2D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes3D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/fft/BenchmarkFloatFFT;->sizes3D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
