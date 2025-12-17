.class public Lorg/jtransforms/dst/BenchmarkDoubleDST;
.super Ljava/lang/Object;
.source "BenchmarkDoubleDST.java"


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

    sput-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    .line 57
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    .line 59
    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

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
    sget v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    new-array v7, v0, [D

    .line 111
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_3

    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DST 1D of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-boolean v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_1D;

    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    .line 117
    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v4, v3, v1

    long-to-int v3, v4

    new-array v3, v3, [D

    .line 118
    invoke-static {v4, v5, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 119
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    .line 120
    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 121
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    .line 123
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 124
    new-instance v4, Lorg/jtransforms/dst/DoubleDST_1D;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v9, v5, v1

    invoke-direct {v4, v9, v10}, Lorg/jtransforms/dst/DoubleDST_1D;-><init>(J)V

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 126
    sget-object v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v9, v2, v1

    long-to-int v2, v9

    new-array v2, v2, [D

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    .line 128
    :goto_1
    sget v11, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    if-ge v3, v11, :cond_2

    .line 129
    sget-object v11, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_1D(J[D)V

    .line 130
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 131
    sget-boolean v13, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v4, v2, v13}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    .line 132
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

    .line 137
    aput-wide v9, v7, v1

    .line 138
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 139
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

    .line 140
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

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 144
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 146
    :cond_3
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    sget v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    const-string v1, "benchmarkDoubleForwardDST_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_1D()V
    .locals 15

    .line 151
    sget v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    new-array v7, v0, [D

    .line 152
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_3

    .line 155
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DST 2D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    sget-boolean v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 157
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_2D;

    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/jtransforms/dst/DoubleDST_2D;-><init>(JJ)V

    .line 158
    new-instance v3, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    mul-long/2addr v5, v5

    invoke-direct {v3, v5, v6, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 159
    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 160
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 161
    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6, v5, v6, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 162
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 165
    new-instance v4, Lorg/jtransforms/dst/DoubleDST_2D;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v4, v9, v10, v9, v10}, Lorg/jtransforms/dst/DoubleDST_2D;-><init>(JJ)V

    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 167
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v9, v3, v1

    mul-long/2addr v9, v9

    invoke-direct {v2, v9, v10, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    .line 169
    :goto_1
    sget v11, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    if-ge v3, v11, :cond_2

    .line 170
    sget-object v11, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v12, v11, v1

    invoke-static {v12, v13, v12, v13, v2}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 172
    sget-boolean v13, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v4, v2, v13}, Lorg/jtransforms/dst/DoubleDST_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 173
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

    .line 178
    aput-wide v9, v7, v1

    .line 179
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 180
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

    .line 181
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

    .line 184
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 185
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_3
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    sget v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    const-string v1, "benchmarkDoubleForwardDST_2D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_2D()V
    .locals 16

    .line 193
    sget v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    new-array v7, v0, [D

    .line 194
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 196
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_3

    .line 197
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DST 2D (input 2D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-boolean v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 199
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_2D;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v9, v5, v1

    invoke-direct {v2, v9, v10, v9, v10}, Lorg/jtransforms/dst/DoubleDST_2D;-><init>(JJ)V

    .line 200
    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

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

    .line 201
    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 202
    sget-boolean v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v5, v6}, Lorg/jtransforms/dst/DoubleDST_2D;->forward([[DZ)V

    .line 203
    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v9, v6, v1

    invoke-static {v9, v10, v9, v10, v5}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 204
    sget-boolean v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v5, v6}, Lorg/jtransforms/dst/DoubleDST_2D;->forward([[DZ)V

    .line 206
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 207
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_2D;

    sget-object v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v10, v9, v1

    invoke-direct {v2, v10, v11, v10, v11}, Lorg/jtransforms/dst/DoubleDST_2D;-><init>(JJ)V

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    long-to-double v5, v9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    aput-wide v5, v8, v1

    .line 209
    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

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

    .line 211
    :goto_1
    sget v12, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    if-ge v11, v12, :cond_2

    .line 212
    sget-object v12, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    aget-wide v13, v12, v1

    invoke-static {v13, v14, v13, v14, v3}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_2D(JJ[[D)V

    .line 213
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 214
    sget-boolean v14, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v14}, Lorg/jtransforms/dst/DoubleDST_2D;->forward([[DZ)V

    .line 215
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

    .line 220
    aput-wide v5, v7, v1

    .line 221
    aget-wide v2, v8, v1

    add-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 222
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

    .line 223
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

    .line 224
    check-cast v2, [[D

    .line 226
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 227
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 229
    :cond_3
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    sget v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    const-string v1, "benchmarkDoubleForwardDST_2D_input_2D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_1D()V
    .locals 23

    .line 235
    sget v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    new-array v7, v0, [D

    .line 236
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_3

    .line 239
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DST 3D (input 1D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-boolean v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_3D;

    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v14, v3, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dst/DoubleDST_3D;-><init>(JJJ)V

    .line 242
    new-instance v3, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v5, v4, v1

    mul-long v9, v5, v5

    mul-long/2addr v9, v5

    invoke-direct {v3, v9, v10, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 243
    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v20, v4, v1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    move-object/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 244
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 245
    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v20, v4, v1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    invoke-static/range {v16 .. v22}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 246
    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 249
    new-instance v4, Lorg/jtransforms/dst/DoubleDST_3D;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v14, v5, v1

    move-object v9, v4

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dst/DoubleDST_3D;-><init>(JJJ)V

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-double v2, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v5

    aput-wide v2, v8, v1

    .line 251
    new-instance v2, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v9, v3, v1

    mul-long v11, v9, v9

    mul-long/2addr v11, v9

    invoke-direct {v2, v11, v12, v0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v3, v0

    move-wide/from16 v16, v9

    .line 253
    :goto_1
    sget v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    if-ge v3, v9, :cond_2

    .line 254
    sget-object v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object v15, v2

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 255
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 256
    sget-boolean v11, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v4, v2, v11}, Lorg/jtransforms/dst/DoubleDST_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 257
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

    .line 262
    aput-wide v16, v7, v1

    .line 263
    aget-wide v2, v8, v1

    add-double v2, v2, v16

    aput-wide v2, v8, v1

    .line 264
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

    .line 265
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

    .line 268
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 269
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 271
    :cond_3
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    sget v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    const-string v1, "benchmarkDoubleForwardDST_3D_input_1D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_3D()V
    .locals 20

    .line 277
    sget v0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    new-array v7, v0, [D

    .line 278
    new-array v8, v0, [D

    const/4 v0, 0x0

    move v1, v0

    .line 280
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_3

    .line 281
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Forward DST 3D (input 3D) of size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v9, v5, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v5, v4, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    sget-boolean v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_3D;

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v14, v6, v1

    move-object v9, v2

    move-wide v10, v14

    move-wide v12, v14

    invoke-direct/range {v9 .. v15}, Lorg/jtransforms/dst/DoubleDST_3D;-><init>(JJJ)V

    .line 284
    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

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

    .line 285
    sget-object v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object v15, v6

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 286
    sget-boolean v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v6, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->forward([[[DZ)V

    .line 287
    sget-object v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v13, v9, v1

    move-wide v9, v13

    move-wide v11, v13

    invoke-static/range {v9 .. v15}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 288
    sget-boolean v9, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v6, v9}, Lorg/jtransforms/dst/DoubleDST_3D;->forward([[[DZ)V

    .line 290
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 291
    new-instance v2, Lorg/jtransforms/dst/DoubleDST_3D;

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v16, v6, v1

    move-object v11, v2

    move-wide/from16 v12, v16

    move-wide/from16 v14, v16

    invoke-direct/range {v11 .. v17}, Lorg/jtransforms/dst/DoubleDST_3D;-><init>(JJJ)V

    .line 292
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-double v9, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    aput-wide v9, v8, v1

    .line 293
    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

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

    .line 295
    :goto_1
    sget v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    if-ge v4, v6, :cond_2

    .line 296
    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    aget-wide v17, v6, v1

    move-wide/from16 v13, v17

    move-wide/from16 v15, v17

    move-object/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lorg/jtransforms/utils/IOUtils;->fillMatrix_3D(JJJ[[[D)V

    .line 297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 298
    sget-boolean v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v2, v3, v6}, Lorg/jtransforms/dst/DoubleDST_3D;->forward([[[DZ)V

    .line 299
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

    .line 304
    aput-wide v9, v7, v1

    .line 305
    aget-wide v2, v8, v1

    add-double/2addr v2, v9

    aput-wide v2, v8, v1

    .line 306
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

    .line 307
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

    .line 308
    check-cast v2, [[[D

    .line 310
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    .line 311
    invoke-static {v2, v3}, Lorg/jtransforms/utils/CommonUtils;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 313
    :cond_3
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    sget v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    sget-boolean v4, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    sget-boolean v5, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    sget-object v6, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    const-string v1, "benchmarkDoubleForwardDST_3D_input_3D.txt"

    invoke-static/range {v1 .. v8}, Lorg/jtransforms/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 318
    invoke-static {p0}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->parseArguments([Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->benchmarkForward_1D()V

    .line 320
    invoke-static {}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->benchmarkForward_2D_input_1D()V

    .line 321
    invoke-static {}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->benchmarkForward_2D_input_2D()V

    .line 322
    invoke-static {}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->benchmarkForward_3D_input_1D()V

    .line 323
    invoke-static {}, Lorg/jtransforms/dst/BenchmarkDoubleDST;->benchmarkForward_3D_input_3D()V

    const/4 p0, 0x0

    .line 324
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

    sput v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    const/4 v1, 0x1

    .line 72
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin2D:I

    const/4 v1, 0x2

    .line 73
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin3D:I

    const/4 v1, 0x3

    .line 74
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    const/4 v1, 0x4

    .line 75
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    const/4 v1, 0x5

    .line 76
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    const/4 v1, 0x6

    .line 77
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    .line 78
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

    .line 79
    new-array v2, v1, [J

    sput-object v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

    .line 80
    new-array v1, v1, [J

    sput-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    move v1, v0

    .line 81
    :goto_0
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_0

    .line 82
    sget-object v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

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
    sget v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v1, v2, :cond_1

    .line 85
    sget-object v3, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

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
    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    if-ge v0, v1, :cond_3

    .line 88
    sget-object v2, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

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
    sget p0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    invoke-static {p0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 94
    sget p0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin2D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_2D(J)V

    .line 95
    sget p0, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin3D:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/jtransforms/utils/CommonUtils;->setThreadsBeginN_3D(J)V

    .line 96
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nthred = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nthread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin2D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin2D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "threadsBegin3D = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->threadsBegin3D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "niter = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->niter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doWarmup = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doWarmup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doScaling = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->doScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nsize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->nsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sizes1D[] = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes1D:[J

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

    sget-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes2D:[J

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

    sget-object v1, Lorg/jtransforms/dst/BenchmarkDoubleDST;->sizes3D:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
