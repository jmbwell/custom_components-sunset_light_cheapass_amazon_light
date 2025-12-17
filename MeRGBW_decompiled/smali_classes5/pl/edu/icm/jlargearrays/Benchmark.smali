.class public Lpl/edu/icm/jlargearrays/Benchmark;
.super Ljava/lang/Object;
.source "Benchmark.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static benchmarkArithmeticAdd()V
    .locals 18

    .line 1102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking addition of two ByteLargeArrays."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1103
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x403b000000000000L    # 27.0

    .line 1104
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    .line 1105
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v3, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->generateRandom(Lpl/edu/icm/jlargearrays/LargeArrayType;J)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v3

    .line 1106
    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayType;->BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v4, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->generateRandom(Lpl/edu/icm/jlargearrays/LargeArrayType;J)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    .line 1107
    sget-object v2, Lpl/edu/icm/jlargearrays/LargeArrayType;->LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v3, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v2

    .line 1108
    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayType;->LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v1, v4}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v4

    move v5, v0

    .line 1112
    :goto_0
    const-string v6, " sec"

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    const-string v9, " threads: "

    const-string v10, "Average computation time using "

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/16 v13, 0x10

    if-gt v5, v13, :cond_1

    .line 1113
    invoke-static {v5}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 1115
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    .line 1116
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    .line 1117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    :goto_1
    if-ge v12, v11, :cond_0

    .line 1119
    invoke-static {v3, v1}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1121
    :cond_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v13

    long-to-double v9, v9

    div-double/2addr v9, v7

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1124
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Benchmarking addition of two LongLargeArrays."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    if-gt v0, v13, :cond_3

    .line 1126
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 1128
    invoke-static {v2, v4}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    .line 1129
    invoke-static {v2, v4}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    .line 1130
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move v1, v12

    :goto_3
    if-ge v1, v11, :cond_2

    .line 1132
    invoke-static {v2, v4}, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1134
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v14, v16, v14

    long-to-double v14, v14

    div-double/2addr v14, v7

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static benchmarkByteLargeArray()V
    .locals 13

    .line 874
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking ByteLargeArray."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 875
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 876
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 877
    new-instance v4, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 878
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 882
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    :goto_1
    cmp-long v3, v9, v0

    if-gez v3, :cond_0

    .line 884
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    const/4 v3, 0x1

    .line 885
    invoke-virtual {v4, v9, v10, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    .line 886
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    move-result v11

    add-int/2addr v11, v3

    int-to-byte v3, v11

    invoke-virtual {v4, v9, v10, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_1

    .line 888
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Computation time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-double v5, v10

    div-double/2addr v5, v7

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "sec"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static benchmarkByteLargeArrayInANewThread()V
    .locals 13

    .line 897
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking ByteLargeArray in a new thread."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 898
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 899
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 900
    new-instance v4, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 901
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 905
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 906
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lpl/edu/icm/jlargearrays/Benchmark$12;

    invoke-direct {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/Benchmark$12;-><init>(JLpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 916
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 918
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 920
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 922
    :goto_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    long-to-double v5, v11

    div-double/2addr v5, v7

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static benchmarkByteLargeArrayNative()V
    .locals 14

    .line 986
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking ByteLargeArray native."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 987
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 988
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 989
    new-instance v4, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(JZ)V

    .line 990
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Constructor time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-double v2, v8

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v8

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v4}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->isLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    const/4 v3, 0x5

    if-ge v5, v3, :cond_1

    .line 995
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    :goto_1
    cmp-long v3, v10, v0

    if-gez v3, :cond_0

    .line 997
    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getFromNative(J)Ljava/lang/Byte;

    const/4 v3, 0x1

    .line 998
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v4, v10, v11, v12}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 999
    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getFromNative(J)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    add-int/2addr v12, v3

    int-to-byte v3, v12

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v10, v11, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setToNative(JLjava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_1

    .line 1001
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    long-to-double v6, v11

    div-double/2addr v6, v8

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static benchmarkByteLargeArrayNativeInANewThread()V
    .locals 13

    .line 1011
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking ByteLargeArray native in a new thread."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 1012
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1013
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1014
    new-instance v4, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 1015
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 1019
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 1020
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lpl/edu/icm/jlargearrays/Benchmark$14;

    invoke-direct {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/Benchmark$14;-><init>(JLpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1030
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1032
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 1034
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1036
    :goto_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    long-to-double v5, v11

    div-double/2addr v5, v7

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static benchmarkByteRandom([J[IILjava/lang/String;)V
    .locals 3

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java_arrays_byte_random.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysByteRandom([J[IILjava/lang/String;)[[D

    .line 850
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "jlargearrays_byte_random.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysByteRandom([J[IILjava/lang/String;)[[D

    return-void
.end method

.method public static benchmarkByteSequential([J[IILjava/lang/String;)V
    .locals 3

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java_arrays_byte_sequential.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysDoubleSequential([J[IILjava/lang/String;)[[D

    .line 820
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "jlargearrays_byte_sequentual.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysByteSequentual([J[IILjava/lang/String;)[[D

    return-void
.end method

.method public static benchmarkDoubleRandom([J[IILjava/lang/String;)V
    .locals 3

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java_arrays_double_random.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysDoubleRandom([J[IILjava/lang/String;)[[D

    .line 865
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "jlargearrays_double_random.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysDoubleRandom([J[IILjava/lang/String;)[[D

    return-void
.end method

.method public static benchmarkDoubleSequential([J[IILjava/lang/String;)V
    .locals 3

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java_arrays_double_sequential.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysDoubleSequential([J[IILjava/lang/String;)[[D

    .line 835
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "jlargearrays_double_sequentual.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysDoubleSequentual([J[IILjava/lang/String;)[[D

    return-void
.end method

.method public static benchmarkFloatLargeArray()V
    .locals 13

    .line 931
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking FloatLargeArray."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 932
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 933
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 934
    new-instance v4, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 935
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 938
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    :goto_1
    cmp-long v3, v9, v0

    if-gez v3, :cond_0

    .line 940
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 941
    invoke-virtual {v4, v9, v10, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 942
    invoke-virtual {v4, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    add-float/2addr v11, v3

    invoke-virtual {v4, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_1

    .line 944
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Computation time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-double v5, v10

    div-double/2addr v5, v7

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "sec"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static benchmarkFloatLargeArrayInANewThread()V
    .locals 13

    .line 953
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking FloatLargeArray in a new thread."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 954
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 955
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 956
    new-instance v4, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 957
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 960
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 961
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lpl/edu/icm/jlargearrays/Benchmark$13;

    invoke-direct {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/Benchmark$13;-><init>(JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 971
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 973
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 975
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 977
    :goto_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    long-to-double v5, v11

    div-double/2addr v5, v7

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static benchmarkFloatLargeArrayNative()V
    .locals 14

    .line 1045
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking FloatLargeArray native."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 1046
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1047
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1048
    new-instance v4, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 1049
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Constructor time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-double v2, v8

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v8

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->isLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    const/4 v3, 0x5

    if-ge v5, v3, :cond_1

    .line 1053
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    :goto_1
    cmp-long v3, v10, v0

    if-gez v3, :cond_0

    .line 1055
    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFromNative(J)Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1056
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v4, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 1057
    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFromNative(J)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v10, v11, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setToNative(JLjava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_1

    .line 1059
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    long-to-double v6, v11

    div-double/2addr v6, v8

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static benchmarkFloatLargeArrayNativeInANewThread()V
    .locals 13

    .line 1069
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking FloatLargeArray native in a new thread."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 1070
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1071
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1072
    new-instance v4, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {v4, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 1073
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Constructor time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-double v2, v7

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 1076
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 1077
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lpl/edu/icm/jlargearrays/Benchmark$15;

    invoke-direct {v10, v0, v1, v4}, Lpl/edu/icm/jlargearrays/Benchmark$15;-><init>(JLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1087
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1089
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 1091
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1093
    :goto_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Computation time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    long-to-double v5, v11

    div-double/2addr v5, v7

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static benchmarkJLargeArraysByteRandom([J[IILjava/lang/String;)[[D
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 687
    array-length v0, v1

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    aget-wide v5, v1, v0

    long-to-int v0, v5

    new-array v13, v0, [I

    .line 688
    array-length v0, v2

    array-length v5, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    const/4 v14, 0x0

    aput v0, v6, v14

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    .line 690
    new-instance v0, Ljava/util/Random;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 691
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "generating random indices."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 692
    array-length v5, v1

    sub-int/2addr v5, v4

    aget-wide v5, v1, v5

    long-to-int v5, v5

    move v6, v14

    :goto_0
    if-ge v6, v5, :cond_0

    .line 694
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    add-int/lit8 v9, v5, -0x1

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    aput v7, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 696
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Benchmarking JLargeArrays (bytes, random)"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v12, v14

    .line 697
    :goto_1
    array-length v0, v2

    if-ge v12, v0, :cond_6

    .line 698
    aget v11, v2, v12

    .line 699
    new-array v10, v11, [Ljava/lang/Thread;

    .line 700
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tNumber of threads = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v8, v14

    .line 701
    :goto_2
    array-length v0, v1

    if-ge v8, v0, :cond_5

    .line 702
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v6, v1, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 703
    new-instance v9, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    aget-wide v5, v1, v8

    invoke-direct {v9, v5, v6}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 704
    aget-wide v5, v1, v8

    long-to-int v6, v5

    .line 705
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    move v7, v14

    :goto_3
    if-ge v7, v3, :cond_4

    .line 707
    aget-wide v16, v1, v8

    move-object/from16 v18, v15

    int-to-long v14, v11

    div-long v16, v16, v14

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_2

    int-to-long v14, v0

    mul-long v14, v14, v16

    move-wide/from16 v19, v4

    add-int/lit8 v4, v11, -0x1

    if-ne v0, v4, :cond_1

    .line 710
    aget-wide v4, v1, v8

    goto :goto_5

    :cond_1
    add-long v4, v14, v16

    :goto_5
    move-wide/from16 v21, v4

    .line 711
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lpl/edu/icm/jlargearrays/Benchmark$10;

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide v6, v14

    move v14, v8

    move-object v15, v9

    move-wide/from16 v8, v21

    move-object/from16 v21, v10

    move-object v10, v13

    move-object/from16 v22, v13

    move v13, v11

    move/from16 v11, v24

    move/from16 v26, v12

    move-object v12, v15

    invoke-direct/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/Benchmark$10;-><init>(JJ[IILpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v4, v21, v0

    .line 723
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move v11, v13

    move v8, v14

    move-object v9, v15

    move-wide/from16 v4, v19

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v12, v26

    goto :goto_4

    :cond_2
    move-wide/from16 v19, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move v14, v8

    move-object v15, v9

    move-object/from16 v21, v10

    move/from16 v26, v12

    move-object/from16 v22, v13

    move v13, v11

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_3

    .line 727
    :try_start_0
    aget-object v4, v21, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 728
    aput-object v4, v21, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    add-int/lit8 v7, v25, 0x1

    move v11, v13

    move v8, v14

    move-object v9, v15

    move-object/from16 v15, v18

    move-wide/from16 v4, v19

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v6, v24

    move/from16 v12, v26

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_4
    move-wide/from16 v19, v4

    move v14, v8

    move-object/from16 v21, v10

    move/from16 v26, v12

    move-object/from16 v22, v13

    move-object/from16 v18, v15

    move v13, v11

    .line 734
    aget-object v0, v18, v26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v19

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    aput-wide v4, v0, v14

    .line 735
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v18, v26

    aget-wide v6, v5, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "%.7f sec"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v14, 0x1

    move v4, v6

    move v14, v8

    move-object/from16 v13, v22

    move v8, v0

    goto/16 :goto_2

    :cond_5
    move v6, v4

    move/from16 v26, v12

    move-object/from16 v22, v13

    move v8, v14

    move-object/from16 v18, v15

    add-int/lit8 v12, v26, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v4, p3

    move-object v5, v15

    .line 738
    invoke-static {v1, v2, v5, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v5
.end method

.method public static benchmarkJLargeArraysByteSequentual([J[IILjava/lang/String;)[[D
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 395
    array-length v0, v2

    array-length v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v0, v5, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 397
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking JLargeArrays (bytes, sequentual)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v4

    .line 398
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_5

    .line 399
    aget v8, v2, v7

    .line 400
    new-array v9, v8, [Ljava/lang/Thread;

    .line 401
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\tNumber of threads = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v4

    .line 402
    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_4

    .line 403
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tSize = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v12, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 404
    new-instance v11, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    aget-wide v12, v1, v10

    invoke-direct {v11, v12, v13}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-double v13, v12

    move v15, v4

    :goto_2
    if-ge v15, v3, :cond_3

    .line 407
    aget-wide v16, v1, v10

    move-object/from16 v18, v5

    int-to-long v4, v8

    div-long v4, v16, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_1

    move/from16 v19, v7

    int-to-long v6, v0

    mul-long/2addr v6, v4

    add-int/lit8 v12, v8, -0x1

    if-ne v0, v12, :cond_0

    .line 410
    aget-wide v16, v1, v10

    goto :goto_4

    :cond_0
    add-long v16, v6, v4

    .line 411
    :goto_4
    new-instance v12, Ljava/lang/Thread;

    move-wide/from16 v20, v4

    new-instance v4, Lpl/edu/icm/jlargearrays/Benchmark$5;

    move-object v5, v12

    move-object v12, v4

    move-wide/from16 v22, v13

    move-wide v13, v6

    move v6, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lpl/edu/icm/jlargearrays/Benchmark$5;-><init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v9, v0

    .line 422
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move v15, v6

    move/from16 v7, v19

    move-wide/from16 v4, v20

    move-wide/from16 v13, v22

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    move/from16 v19, v7

    move-wide/from16 v22, v13

    move v6, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_2

    .line 426
    :try_start_0
    aget-object v4, v9, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 427
    aput-object v4, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-wide/from16 v13, v22

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v5

    move/from16 v19, v7

    move-wide/from16 v22, v13

    .line 433
    aget-object v0, v18, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v22

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    aput-wide v4, v0, v10

    .line 434
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v18, v19

    aget-wide v6, v5, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    const-string v5, "%.7f sec"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_1

    :cond_4
    move v11, v4

    move-object/from16 v18, v5

    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p3

    .line 437
    invoke-static {v1, v2, v5, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v5
.end method

.method public static benchmarkJLargeArraysByteSequentualNative([J[IILjava/lang/String;)[[D
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x1

    .line 453
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    .line 454
    array-length v0, v2

    array-length v5, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    const/4 v5, 0x0

    aput v0, v6, v5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[D

    .line 456
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking JLargeArrays (bytes, sequentual, native)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v5

    .line 457
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_5

    .line 458
    aget v8, v2, v7

    .line 459
    new-array v9, v8, [Ljava/lang/Thread;

    .line 460
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\tNumber of threads = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v5

    .line 461
    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_4

    .line 462
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tSize = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v12, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 463
    new-instance v11, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    aget-wide v12, v1, v10

    invoke-direct {v11, v12, v13}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 464
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-double v13, v12

    move v15, v5

    :goto_2
    if-ge v15, v3, :cond_3

    .line 466
    aget-wide v16, v1, v10

    int-to-long v4, v8

    div-long v4, v16, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_1

    move-wide/from16 v16, v13

    int-to-long v12, v0

    mul-long v13, v12, v4

    add-int/lit8 v12, v8, -0x1

    if-ne v0, v12, :cond_0

    .line 469
    aget-wide v18, v1, v10

    goto :goto_4

    :cond_0
    add-long v18, v13, v4

    .line 470
    :goto_4
    new-instance v12, Ljava/lang/Thread;

    move-wide/from16 v20, v4

    new-instance v4, Lpl/edu/icm/jlargearrays/Benchmark$6;

    move-object v5, v12

    move-object v12, v4

    move-wide/from16 v22, v16

    move/from16 v24, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lpl/edu/icm/jlargearrays/Benchmark$6;-><init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v9, v0

    .line 481
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v20

    move-wide/from16 v13, v22

    move/from16 v15, v24

    goto :goto_3

    :cond_1
    move-wide/from16 v22, v13

    move/from16 v24, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_2

    .line 485
    :try_start_0
    aget-object v4, v9, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 486
    aput-object v4, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v15, v24, 0x1

    move-wide/from16 v13, v22

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v13

    .line 492
    aget-object v0, v6, v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v22

    const-wide v11, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v11

    int-to-double v11, v3

    div-double/2addr v4, v11

    aput-wide v4, v0, v10

    .line 493
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v6, v7

    aget-wide v11, v5, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const-string v5, "%.7f sec"

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move v5, v13

    goto/16 :goto_1

    :cond_4
    move v11, v4

    move v13, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p3

    .line 496
    invoke-static {v1, v2, v6, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v6
.end method

.method public static benchmarkJLargeArraysByteSequentual_safe([J[IILjava/lang/String;)[[D
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 512
    array-length v0, v2

    array-length v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v0, v5, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 514
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking JLargeArrays (bytes, sequentual, with bounds checking)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v4

    .line 515
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_5

    .line 516
    aget v8, v2, v7

    .line 517
    new-array v9, v8, [Ljava/lang/Thread;

    .line 518
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\tNumber of threads = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v4

    .line 519
    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_4

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tSize = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v12, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 521
    new-instance v11, Lpl/edu/icm/jlargearrays/ByteLargeArray;

    aget-wide v12, v1, v10

    invoke-direct {v11, v12, v13}, Lpl/edu/icm/jlargearrays/ByteLargeArray;-><init>(J)V

    .line 522
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-double v13, v12

    move v15, v4

    :goto_2
    if-ge v15, v3, :cond_3

    .line 524
    aget-wide v16, v1, v10

    move-object/from16 v18, v5

    int-to-long v4, v8

    div-long v4, v16, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_1

    move/from16 v19, v7

    int-to-long v6, v0

    mul-long/2addr v6, v4

    add-int/lit8 v12, v8, -0x1

    if-ne v0, v12, :cond_0

    .line 527
    aget-wide v16, v1, v10

    goto :goto_4

    :cond_0
    add-long v16, v6, v4

    .line 528
    :goto_4
    new-instance v12, Ljava/lang/Thread;

    move-wide/from16 v20, v4

    new-instance v4, Lpl/edu/icm/jlargearrays/Benchmark$7;

    move-object v5, v12

    move-object v12, v4

    move-wide/from16 v22, v13

    move-wide v13, v6

    move v6, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lpl/edu/icm/jlargearrays/Benchmark$7;-><init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;)V

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v9, v0

    .line 539
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move v15, v6

    move/from16 v7, v19

    move-wide/from16 v4, v20

    move-wide/from16 v13, v22

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    move/from16 v19, v7

    move-wide/from16 v22, v13

    move v6, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_2

    .line 543
    :try_start_0
    aget-object v4, v9, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 544
    aput-object v4, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-wide/from16 v13, v22

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v5

    move/from16 v19, v7

    move-wide/from16 v22, v13

    .line 550
    aget-object v0, v18, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v22

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    aput-wide v4, v0, v10

    .line 551
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v18, v19

    aget-wide v6, v5, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    const-string v5, "%.7f sec"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_1

    :cond_4
    move v11, v4

    move-object/from16 v18, v5

    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p3

    .line 554
    invoke-static {v1, v2, v5, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v5
.end method

.method public static benchmarkJLargeArraysDoubleRandom([J[IILjava/lang/String;)[[D
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 754
    array-length v0, v1

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    aget-wide v5, v1, v0

    long-to-int v0, v5

    new-array v13, v0, [I

    .line 755
    array-length v0, v2

    array-length v5, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    const/4 v14, 0x0

    aput v0, v6, v14

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    .line 757
    new-instance v0, Ljava/util/Random;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 758
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "generating random indices."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    array-length v5, v1

    sub-int/2addr v5, v4

    aget-wide v5, v1, v5

    long-to-int v5, v5

    move v6, v14

    :goto_0
    if-ge v6, v5, :cond_0

    .line 761
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    add-int/lit8 v9, v5, -0x1

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    aput v7, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 763
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Benchmarking JLargeArrays (doubles, random)"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v12, v14

    .line 764
    :goto_1
    array-length v0, v2

    if-ge v12, v0, :cond_6

    .line 765
    aget v11, v2, v12

    .line 766
    new-array v10, v11, [Ljava/lang/Thread;

    .line 767
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tNumber of threads = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v8, v14

    .line 768
    :goto_2
    array-length v0, v1

    if-ge v8, v0, :cond_5

    .line 769
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v6, v1, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 770
    new-instance v9, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    aget-wide v5, v1, v8

    invoke-direct {v9, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 771
    aget-wide v5, v1, v8

    long-to-int v6, v5

    .line 772
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    move v7, v14

    :goto_3
    if-ge v7, v3, :cond_4

    .line 774
    aget-wide v16, v1, v8

    move-object/from16 v18, v15

    int-to-long v14, v11

    div-long v16, v16, v14

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v11, :cond_2

    int-to-long v14, v0

    mul-long v14, v14, v16

    move-wide/from16 v19, v4

    add-int/lit8 v4, v11, -0x1

    if-ne v0, v4, :cond_1

    .line 777
    aget-wide v4, v1, v8

    goto :goto_5

    :cond_1
    add-long v4, v14, v16

    :goto_5
    move-wide/from16 v21, v4

    .line 778
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lpl/edu/icm/jlargearrays/Benchmark$11;

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide v6, v14

    move v14, v8

    move-object v15, v9

    move-wide/from16 v8, v21

    move-object/from16 v21, v10

    move-object v10, v13

    move-object/from16 v22, v13

    move v13, v11

    move/from16 v11, v24

    move/from16 v26, v12

    move-object v12, v15

    invoke-direct/range {v5 .. v12}, Lpl/edu/icm/jlargearrays/Benchmark$11;-><init>(JJ[IILpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v4, v21, v0

    .line 790
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move v11, v13

    move v8, v14

    move-object v9, v15

    move-wide/from16 v4, v19

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v12, v26

    goto :goto_4

    :cond_2
    move-wide/from16 v19, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move v14, v8

    move-object v15, v9

    move-object/from16 v21, v10

    move/from16 v26, v12

    move-object/from16 v22, v13

    move v13, v11

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v13, :cond_3

    .line 794
    :try_start_0
    aget-object v4, v21, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 795
    aput-object v4, v21, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    add-int/lit8 v7, v25, 0x1

    move v11, v13

    move v8, v14

    move-object v9, v15

    move-object/from16 v15, v18

    move-wide/from16 v4, v19

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move/from16 v6, v24

    move/from16 v12, v26

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_4
    move-wide/from16 v19, v4

    move v14, v8

    move-object/from16 v21, v10

    move/from16 v26, v12

    move-object/from16 v22, v13

    move-object/from16 v18, v15

    move v13, v11

    .line 801
    aget-object v0, v18, v26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v19

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    aput-wide v4, v0, v14

    .line 802
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v18, v26

    aget-wide v6, v5, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "%.7f sec"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v14, 0x1

    move v4, v6

    move v14, v8

    move-object/from16 v13, v22

    move v8, v0

    goto/16 :goto_2

    :cond_5
    move v6, v4

    move/from16 v26, v12

    move-object/from16 v22, v13

    move v8, v14

    move-object/from16 v18, v15

    add-int/lit8 v12, v26, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v4, p3

    move-object v5, v15

    .line 805
    invoke-static {v1, v2, v5, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v5
.end method

.method public static benchmarkJLargeArraysDoubleSequentual([J[IILjava/lang/String;)[[D
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 570
    array-length v0, v2

    array-length v4, v1

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v0, v5, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 572
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking JLargeArrays (doubles, sequentual)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v4

    .line 573
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_5

    .line 574
    aget v8, v2, v7

    .line 575
    new-array v9, v8, [Ljava/lang/Thread;

    .line 576
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\tNumber of threads = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v4

    .line 577
    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_4

    .line 578
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tSize = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v12, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 579
    new-instance v11, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    aget-wide v12, v1, v10

    invoke-direct {v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 580
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-double v13, v12

    move v15, v4

    :goto_2
    if-ge v15, v3, :cond_3

    .line 582
    aget-wide v16, v1, v10

    move-object/from16 v18, v5

    int-to-long v4, v8

    div-long v4, v16, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_1

    move/from16 v19, v7

    int-to-long v6, v0

    mul-long/2addr v6, v4

    add-int/lit8 v12, v8, -0x1

    if-ne v0, v12, :cond_0

    .line 585
    aget-wide v16, v1, v10

    goto :goto_4

    :cond_0
    add-long v16, v6, v4

    .line 586
    :goto_4
    new-instance v12, Ljava/lang/Thread;

    move-wide/from16 v20, v4

    new-instance v4, Lpl/edu/icm/jlargearrays/Benchmark$8;

    move-object v5, v12

    move-object v12, v4

    move-wide/from16 v22, v13

    move-wide v13, v6

    move v6, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lpl/edu/icm/jlargearrays/Benchmark$8;-><init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v9, v0

    .line 597
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move v15, v6

    move/from16 v7, v19

    move-wide/from16 v4, v20

    move-wide/from16 v13, v22

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    move/from16 v19, v7

    move-wide/from16 v22, v13

    move v6, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_2

    .line 601
    :try_start_0
    aget-object v4, v9, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 602
    aput-object v4, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-wide/from16 v13, v22

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v5

    move/from16 v19, v7

    move-wide/from16 v22, v13

    .line 608
    aget-object v0, v18, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v22

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    aput-wide v4, v0, v10

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v18, v19

    aget-wide v6, v5, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    const-string v5, "%.7f sec"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_1

    :cond_4
    move v11, v4

    move-object/from16 v18, v5

    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p3

    .line 612
    invoke-static {v1, v2, v5, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v5
.end method

.method public static benchmarkJLargeArraysDoubleSequentualNative([J[IILjava/lang/String;)[[D
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x1

    .line 628
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    .line 629
    array-length v0, v2

    array-length v5, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    const/4 v5, 0x0

    aput v0, v6, v5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[D

    .line 631
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking JLargeArrays (doubles, sequentual, native)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v5

    .line 632
    :goto_0
    array-length v0, v2

    if-ge v7, v0, :cond_5

    .line 633
    aget v8, v2, v7

    .line 634
    new-array v9, v8, [Ljava/lang/Thread;

    .line 635
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\tNumber of threads = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v5

    .line 636
    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_4

    .line 637
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tSize = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v12, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 638
    new-instance v11, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    aget-wide v12, v1, v10

    invoke-direct {v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 639
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-double v13, v12

    move v15, v5

    :goto_2
    if-ge v15, v3, :cond_3

    .line 641
    aget-wide v16, v1, v10

    int-to-long v4, v8

    div-long v4, v16, v4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_1

    move-wide/from16 v16, v13

    int-to-long v12, v0

    mul-long v13, v12, v4

    add-int/lit8 v12, v8, -0x1

    if-ne v0, v12, :cond_0

    .line 644
    aget-wide v18, v1, v10

    goto :goto_4

    :cond_0
    add-long v18, v13, v4

    .line 645
    :goto_4
    new-instance v12, Ljava/lang/Thread;

    move-wide/from16 v20, v4

    new-instance v4, Lpl/edu/icm/jlargearrays/Benchmark$9;

    move-object v5, v12

    move-object v12, v4

    move-wide/from16 v22, v16

    move/from16 v24, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lpl/edu/icm/jlargearrays/Benchmark$9;-><init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v9, v0

    .line 656
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v20

    move-wide/from16 v13, v22

    move/from16 v15, v24

    goto :goto_3

    :cond_1
    move-wide/from16 v22, v13

    move/from16 v24, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_2

    .line 660
    :try_start_0
    aget-object v4, v9, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    .line 661
    aput-object v4, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v15, v24, 0x1

    move-wide/from16 v13, v22

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v13

    .line 667
    aget-object v0, v6, v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    sub-double v4, v4, v22

    const-wide v11, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v11

    int-to-double v11, v3

    div-double/2addr v4, v11

    aput-wide v4, v0, v10

    .line 668
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v6, v7

    aget-wide v11, v5, v10

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const-string v5, "%.7f sec"

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    move v4, v11

    move v5, v13

    goto/16 :goto_1

    :cond_4
    move v11, v4

    move v13, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p3

    .line 671
    invoke-static {v1, v2, v6, v4}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v6
.end method

.method public static benchmarkJavaArraysByteRandom([J[IILjava/lang/String;)[[D
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    move v0, v4

    .line 247
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v0, v5, :cond_1

    .line 248
    aget-wide v7, v1, v0

    const-wide/32 v9, 0x7ffffffb

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 249
    move-object v0, v6

    check-cast v0, [[D

    return-object v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    array-length v0, v1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    aget-wide v7, v1, v0

    long-to-int v0, v7

    new-array v14, v0, [I

    .line 254
    array-length v0, v2

    array-length v7, v1

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v5

    aput v0, v8, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    .line 256
    new-instance v0, Ljava/util/Random;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 257
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "generating random indices."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    array-length v7, v1

    sub-int/2addr v7, v5

    aget-wide v7, v1, v7

    long-to-int v7, v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    add-int/lit8 v11, v7, -0x1

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 263
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking java arrays (bytes, random)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v13, v4

    .line 264
    :goto_2
    array-length v0, v2

    if-ge v13, v0, :cond_8

    .line 265
    aget v11, v2, v13

    .line 266
    new-array v12, v11, [Ljava/lang/Thread;

    .line 267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\tNumber of threads = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v4

    .line 268
    :goto_3
    array-length v0, v1

    if-ge v10, v0, :cond_7

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\tSize = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v8, v1, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    aget-wide v8, v1, v10

    long-to-int v0, v8

    new-array v7, v0, [B

    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_6

    .line 274
    aget-wide v16, v1, v10

    move-wide/from16 v18, v8

    move-object v9, v7

    int-to-long v7, v11

    div-long v16, v16, v7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v11, :cond_4

    int-to-long v7, v0

    mul-long v7, v7, v16

    long-to-int v8, v7

    add-int/lit8 v7, v11, -0x1

    if-ne v0, v7, :cond_3

    move-object v7, v9

    move/from16 v20, v10

    move-wide/from16 v9, v18

    goto :goto_6

    :cond_3
    move-object v7, v9

    move/from16 v20, v10

    int-to-long v9, v8

    add-long v9, v9, v16

    :goto_6
    long-to-int v9, v9

    .line 278
    new-instance v10, Ljava/lang/Thread;

    new-instance v1, Lpl/edu/icm/jlargearrays/Benchmark$3;

    move-object/from16 v21, v7

    move-object v7, v1

    move-object v2, v10

    move-object v10, v14

    move-object/from16 v23, v12

    move-object/from16 v22, v14

    move v14, v11

    move-wide/from16 v11, v18

    move/from16 v24, v13

    move-object/from16 v13, v21

    invoke-direct/range {v7 .. v13}, Lpl/edu/icm/jlargearrays/Benchmark$3;-><init>(II[IJ[B)V

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v23, v0

    .line 290
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v14

    move/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v13, v24

    goto :goto_5

    :cond_4
    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v22, v14

    move v14, v11

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v14, :cond_5

    .line 294
    :try_start_0
    aget-object v1, v23, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 295
    :try_start_1
    aput-object v1, v23, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 298
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_5
    const/4 v1, 0x0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v14

    move-wide/from16 v8, v18

    move/from16 v10, v20

    move-object/from16 v7, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_4

    :cond_6
    move/from16 v20, v10

    move-object/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v22, v14

    const/4 v1, 0x0

    move v14, v11

    .line 301
    aget-object v0, v15, v24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double/2addr v6, v4

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    int-to-double v4, v3

    div-double/2addr v6, v4

    aput-wide v6, v0, v20

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v15, v24

    aget-wide v5, v4, v20

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v4, "%.7f sec"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v20, 0x1

    move-object/from16 v2, p1

    move-object v6, v1

    move v4, v7

    move-object/from16 v14, v22

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_7
    move v7, v4

    move-object v1, v6

    move/from16 v24, v13

    move-object/from16 v22, v14

    add-int/lit8 v13, v24, 0x1

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v6, p3

    move-object v4, v2

    move-object v2, v1

    .line 305
    invoke-static {v2, v4, v15, v6}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v15
.end method

.method public static benchmarkJavaArraysByteSequential([J[IILjava/lang/String;)[[D
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    move v0, v4

    .line 121
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v0, v5, :cond_1

    .line 122
    aget-wide v7, v1, v0

    const-wide/32 v9, 0x7ffffffb

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 123
    move-object v0, v6

    check-cast v0, [[D

    return-object v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    array-length v0, v2

    array-length v5, v1

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    aput v0, v7, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking java arrays (bytes, sequentual)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v4

    .line 129
    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_7

    .line 130
    aget v9, v2, v7

    .line 131
    new-array v10, v9, [Ljava/lang/Thread;

    .line 132
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tNumber of threads = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v11, v4

    .line 133
    :goto_2
    array-length v0, v1

    if-ge v11, v0, :cond_6

    .line 134
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\tSize = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v1, v11

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 135
    aget-wide v12, v1, v11

    long-to-int v0, v12

    new-array v12, v0, [B

    .line 136
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    long-to-double v13, v13

    move v15, v4

    :goto_3
    if-ge v15, v3, :cond_5

    .line 138
    aget-wide v16, v1, v11

    move-object/from16 v18, v5

    int-to-long v4, v9

    div-long v16, v16, v4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_3

    int-to-long v4, v0

    mul-long v4, v4, v16

    long-to-int v4, v4

    add-int/lit8 v5, v9, -0x1

    if-ne v0, v5, :cond_2

    .line 141
    aget-wide v19, v1, v11

    move-wide/from16 v21, v19

    move/from16 v19, v7

    move-wide/from16 v6, v21

    goto :goto_5

    :cond_2
    move/from16 v19, v7

    int-to-long v6, v4

    add-long v6, v6, v16

    :goto_5
    long-to-int v6, v6

    .line 142
    new-instance v7, Ljava/lang/Thread;

    new-instance v5, Lpl/edu/icm/jlargearrays/Benchmark$1;

    invoke-direct {v5, v4, v6, v12}, Lpl/edu/icm/jlargearrays/Benchmark$1;-><init>(II[B)V

    invoke-direct {v7, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v7, v10, v0

    .line 153
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v19

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    move/from16 v19, v7

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_4

    .line 157
    :try_start_0
    aget-object v4, v10, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 158
    :try_start_1
    aput-object v4, v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 161
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_4
    const/4 v4, 0x0

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object v6, v4

    move-object/from16 v5, v18

    move/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v18, v5

    move-object v4, v6

    move/from16 v19, v7

    .line 164
    aget-object v0, v18, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-double v5, v5

    sub-double/2addr v5, v13

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v5, v12

    int-to-double v12, v3

    div-double/2addr v5, v12

    aput-wide v5, v0, v11

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v18, v19

    aget-wide v12, v6, v11

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v7, v12

    const-string v6, "%.7f sec"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    move-object v6, v4

    move v4, v12

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_2

    :cond_6
    move v12, v4

    move-object/from16 v18, v5

    move-object v4, v6

    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    move v4, v12

    goto/16 :goto_1

    :cond_7
    move-object v6, v5

    move-object/from16 v5, p3

    .line 168
    invoke-static {v1, v2, v6, v5}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v6
.end method

.method public static benchmarkJavaArraysDoubleRandom([J[IILjava/lang/String;)[[D
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    move v0, v4

    .line 321
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v0, v5, :cond_1

    .line 322
    aget-wide v7, v1, v0

    const-wide/32 v9, 0x7ffffffb

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 323
    move-object v0, v6

    check-cast v0, [[D

    return-object v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    array-length v0, v1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    aget-wide v7, v1, v0

    long-to-int v0, v7

    new-array v14, v0, [I

    .line 328
    array-length v0, v2

    array-length v7, v1

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v5

    aput v0, v8, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    .line 330
    new-instance v0, Ljava/util/Random;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 331
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "generating random indices."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    array-length v7, v1

    sub-int/2addr v7, v5

    aget-wide v7, v1, v7

    long-to-int v7, v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    .line 334
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    add-int/lit8 v11, v7, -0x1

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 337
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking java arrays (double, random)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v13, v4

    .line 338
    :goto_2
    array-length v0, v2

    if-ge v13, v0, :cond_8

    .line 339
    aget v11, v2, v13

    .line 340
    new-array v12, v11, [Ljava/lang/Thread;

    .line 341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\tNumber of threads = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v10, v4

    .line 342
    :goto_3
    array-length v0, v1

    if-ge v10, v0, :cond_7

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\tSize = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v8, v1, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 344
    aget-wide v8, v1, v10

    long-to-int v0, v8

    new-array v7, v0, [D

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v4, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_6

    .line 348
    aget-wide v16, v1, v10

    move-wide/from16 v18, v8

    move-object v9, v7

    int-to-long v7, v11

    div-long v16, v16, v7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v11, :cond_4

    int-to-long v7, v0

    mul-long v7, v7, v16

    long-to-int v8, v7

    add-int/lit8 v7, v11, -0x1

    if-ne v0, v7, :cond_3

    move-object v7, v9

    move/from16 v20, v10

    move-wide/from16 v9, v18

    goto :goto_6

    :cond_3
    move-object v7, v9

    move/from16 v20, v10

    int-to-long v9, v8

    add-long v9, v9, v16

    :goto_6
    long-to-int v9, v9

    .line 352
    new-instance v10, Ljava/lang/Thread;

    new-instance v1, Lpl/edu/icm/jlargearrays/Benchmark$4;

    move-object/from16 v21, v7

    move-object v7, v1

    move-object v2, v10

    move-object v10, v14

    move-object/from16 v23, v12

    move-object/from16 v22, v14

    move v14, v11

    move-wide/from16 v11, v18

    move/from16 v24, v13

    move-object/from16 v13, v21

    invoke-direct/range {v7 .. v13}, Lpl/edu/icm/jlargearrays/Benchmark$4;-><init>(II[IJ[D)V

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v23, v0

    .line 364
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v14

    move/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v13, v24

    goto :goto_5

    :cond_4
    move-object/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v22, v14

    move v14, v11

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v14, :cond_5

    .line 368
    :try_start_0
    aget-object v1, v23, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 369
    :try_start_1
    aput-object v1, v23, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 372
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_5
    const/4 v1, 0x0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v14

    move-wide/from16 v8, v18

    move/from16 v10, v20

    move-object/from16 v7, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_4

    :cond_6
    move/from16 v20, v10

    move-object/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v22, v14

    const/4 v1, 0x0

    move v14, v11

    .line 375
    aget-object v0, v15, v24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double/2addr v6, v4

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    int-to-double v4, v3

    div-double/2addr v6, v4

    aput-wide v6, v0, v20

    .line 376
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v15, v24

    aget-wide v5, v4, v20

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-string v4, "%.7f sec"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v20, 0x1

    move-object/from16 v2, p1

    move-object v6, v1

    move v4, v7

    move-object/from16 v14, v22

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_7
    move v7, v4

    move-object v1, v6

    move/from16 v24, v13

    move-object/from16 v22, v14

    add-int/lit8 v13, v24, 0x1

    move-object/from16 v2, p1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v6, p3

    move-object v4, v2

    move-object v2, v1

    .line 379
    invoke-static {v2, v4, v15, v6}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v15
.end method

.method public static benchmarkJavaArraysDoubleSequential([J[IILjava/lang/String;)[[D
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    move v0, v4

    .line 184
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v0, v5, :cond_1

    .line 185
    aget-wide v7, v1, v0

    const-wide/32 v9, 0x7ffffffb

    cmp-long v5, v7, v9

    if-lez v5, :cond_0

    .line 186
    move-object v0, v6

    check-cast v0, [[D

    return-object v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    array-length v0, v2

    array-length v5, v1

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    aput v0, v7, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[D

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Benchmarking java arrays (doubles, sequentual)"

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v4

    .line 192
    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_7

    .line 193
    aget v9, v2, v7

    .line 194
    new-array v10, v9, [Ljava/lang/Thread;

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\tNumber of threads = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v11, v4

    .line 196
    :goto_2
    array-length v0, v1

    if-ge v11, v0, :cond_6

    .line 197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\tSize = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v13, v1, v11

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 198
    aget-wide v12, v1, v11

    long-to-int v0, v12

    new-array v12, v0, [D

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    long-to-double v13, v13

    move v15, v4

    :goto_3
    if-ge v15, v3, :cond_5

    .line 201
    aget-wide v16, v1, v11

    move-object/from16 v18, v5

    int-to-long v4, v9

    div-long v16, v16, v4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_3

    int-to-long v4, v0

    mul-long v4, v4, v16

    long-to-int v4, v4

    add-int/lit8 v5, v9, -0x1

    if-ne v0, v5, :cond_2

    .line 204
    aget-wide v19, v1, v11

    move-wide/from16 v21, v19

    move/from16 v19, v7

    move-wide/from16 v6, v21

    goto :goto_5

    :cond_2
    move/from16 v19, v7

    int-to-long v6, v4

    add-long v6, v6, v16

    :goto_5
    long-to-int v6, v6

    .line 205
    new-instance v7, Ljava/lang/Thread;

    new-instance v5, Lpl/edu/icm/jlargearrays/Benchmark$2;

    invoke-direct {v5, v4, v6, v12}, Lpl/edu/icm/jlargearrays/Benchmark$2;-><init>(II[D)V

    invoke-direct {v7, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v7, v10, v0

    .line 216
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v19

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    move/from16 v19, v7

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_4

    .line 220
    :try_start_0
    aget-object v4, v10, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 221
    :try_start_1
    aput-object v4, v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 224
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_4
    const/4 v4, 0x0

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object v6, v4

    move-object/from16 v5, v18

    move/from16 v7, v19

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v18, v5

    move-object v4, v6

    move/from16 v19, v7

    .line 227
    aget-object v0, v18, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-double v5, v5

    sub-double/2addr v5, v13

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v5, v12

    int-to-double v12, v3

    div-double/2addr v5, v12

    aput-wide v5, v0, v11

    .line 228
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v18, v19

    aget-wide v12, v6, v11

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v7, v12

    const-string v6, "%.7f sec"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    move-object v6, v4

    move v4, v12

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_2

    :cond_6
    move v12, v4

    move-object/from16 v18, v5

    move-object v4, v6

    move/from16 v19, v7

    add-int/lit8 v7, v19, 0x1

    move v4, v12

    goto/16 :goto_1

    :cond_7
    move-object v6, v5

    move-object/from16 v5, p3

    .line 231
    invoke-static {v1, v2, v6, v5}, Lpl/edu/icm/jlargearrays/Benchmark;->writeToFile([J[I[[DLjava/lang/String;)V

    return-object v6
.end method

.method public static benchmarkStatisticsAvg()V
    .locals 16

    .line 1144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Benchmarking avgKahan (DoubleLargeArray of length = 2^28)."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1145
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x403c000000000000L    # 28.0

    .line 1146
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-long v1, v1

    .line 1147
    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v3, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->generateRandom(Lpl/edu/icm/jlargearrays/LargeArrayType;J)Lpl/edu/icm/jlargearrays/LargeArray;

    move-result-object v1

    move v2, v0

    .line 1152
    :goto_0
    const-string v3, " sec"

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    const-string v6, " threads: "

    const-string v7, "Average computation time using "

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/16 v10, 0x10

    if-gt v2, v10, :cond_1

    .line 1153
    invoke-static {v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 1155
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avgKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D

    .line 1156
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avgKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D

    .line 1157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    :goto_1
    if-ge v9, v8, :cond_0

    .line 1159
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avgKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1161
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Benchmarking avg (DoubleLargeArray of length = 2^28)."

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    :goto_2
    if-gt v0, v10, :cond_3

    .line 1167
    invoke-static {v0}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->setNumberOfThreads(I)V

    .line 1169
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avg(Lpl/edu/icm/jlargearrays/LargeArray;)D

    .line 1170
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avg(Lpl/edu/icm/jlargearrays/LargeArray;)D

    .line 1171
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move v2, v9

    :goto_3
    if-ge v2, v8, :cond_2

    .line 1173
    invoke-static {v1}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avg(Lpl/edu/icm/jlargearrays/LargeArray;)D

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1175
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v11

    long-to-double v11, v14

    div-double/2addr v11, v4

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const/4 p0, 0x6

    .line 1190
    new-array v0, p0, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-ge v2, p0, :cond_1

    const/16 v5, 0x1b

    add-int/2addr v5, v2

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_0

    const-wide/high16 v5, 0x403f000000000000L    # 31.0

    .line 1193
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    const-wide/16 v5, 0x4

    sub-long/2addr v3, v5

    aput-wide v3, v0, v2

    goto :goto_1

    :cond_0
    int-to-double v5, v5

    .line 1195
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    aput-wide v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1203
    new-array v2, p0, [J

    move v5, v1

    :goto_2
    if-ge v5, p0, :cond_2

    const/16 v6, 0x20

    add-int/2addr v6, v5

    int-to-double v6, v6

    .line 1205
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 1207
    filled-new-array {v4, v5, p0, v2, v3}, [I

    move-result-object p0

    .line 1209
    invoke-static {v4}, Lpl/edu/icm/jlargearrays/LargeArray;->setMaxSizeOf32bitArray(I)V

    const/16 v2, 0xa

    .line 1210
    const-string v3, "/tmp/"

    invoke-static {v0, p0, v2, v3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkByteSequential([J[IILjava/lang/String;)V

    .line 1211
    invoke-static {v0, p0, v2, v3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkDoubleSequential([J[IILjava/lang/String;)V

    .line 1212
    invoke-static {v0, p0, v2, v3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkByteRandom([J[IILjava/lang/String;)V

    .line 1213
    invoke-static {v0, p0, v2, v3}, Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkDoubleRandom([J[IILjava/lang/String;)V

    .line 1214
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static writeToFile([J[I[[DLjava/lang/String;)V
    .locals 8

    .line 54
    const-string v0, " "

    .line 0
    const-string v1, "Total memory (bytes): "

    const-string v2, "Available processors (cores): "

    .line 54
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "os.arch"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "os.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.vendor"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 63
    const-string p3, "Number of threads: {"

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    .line 64
    :goto_0
    array-length v1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "}"

    const-string v4, ","

    if-ge v0, v1, :cond_1

    .line 65
    :try_start_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 72
    const-string v0, "Sizes: {"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v0, p3

    .line 73
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 74
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p0, v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 77
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, p0, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 81
    const-string v0, "Timings: {"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v0, p3

    .line 82
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 83
    const-string v1, "{"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 84
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    move v1, p3

    .line 85
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 86
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v0

    aget-wide v6, v5, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 89
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v0

    aget-wide v6, v5, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "},"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 92
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_9

    :cond_6
    move v1, p3

    .line 94
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_8

    .line 95
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v0

    aget-wide v6, v5, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 98
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v0

    aget-wide v6, v5, v1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "}}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    return-void
.end method
