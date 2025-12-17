.class public Lorg/apache/commons/math3/random/ValueServer;
.super Ljava/lang/Object;
.source "ValueServer.java"


# static fields
.field public static final CONSTANT_MODE:I = 0x5

.field public static final DIGEST_MODE:I = 0x0

.field public static final EXPONENTIAL_MODE:I = 0x3

.field public static final GAUSSIAN_MODE:I = 0x4

.field public static final REPLAY_MODE:I = 0x1

.field public static final UNIFORM_MODE:I = 0x2


# instance fields
.field private empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

.field private filePointer:Ljava/io/BufferedReader;

.field private mode:I

.field private mu:D

.field private final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private sigma:D

.field private valuesFileURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 72
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 78
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    .line 81
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    .line 84
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 87
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    .line 96
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 72
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 78
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    .line 81
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    .line 84
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 87
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    .line 109
    invoke-virtual {p1}, Lorg/apache/commons/math3/random/RandomDataImpl;->getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 72
    iput v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    const-wide/16 v1, 0x0

    .line 78
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    .line 81
    iput-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    .line 84
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 87
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    .line 120
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method private getNextDigest()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getBinStats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getNextValue()D

    move-result-wide v0

    return-wide v0

    .line 386
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIGEST_NOT_INITIALIZED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getNextExponential()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextExponential(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getNextGaussian()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    iget-wide v3, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGaussian(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getNextReplay()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->resetReplayFile()V

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 417
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->closeReplayFile()V

    .line 418
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->resetReplayFile()V

    .line 419
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 420
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->URL_CONTAINS_NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-object v2, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 424
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private getNextUniform()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget-wide v3, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    mul-double/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public closeReplayFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method public computeDistribution()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/16 v0, 0x3e8

    .line 198
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/random/ValueServer;->computeDistribution(I)V

    return-void
.end method

.method public computeDistribution(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 218
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 219
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->load(Ljava/net/URL;)V

    .line 220
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    .line 221
    iget-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getStandardDeviation()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    return-void
.end method

.method public fill([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->getNext()D

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fill(I)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 176
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/ValueServer;->getNext()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEmpiricalDistribution()Lorg/apache/commons/math3/random/EmpiricalDistribution;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->empiricalDistribution:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 231
    iget v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    return v0
.end method

.method public getMu()D
    .locals 2

    .line 324
    iget-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    return-wide v0
.end method

.method public getNext()D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 133
    iget v1, v0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    .line 139
    iget-wide v1, v0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    return-wide v1

    .line 140
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNKNOWN_MODE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v8, v0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v6, 0xd

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v9

    const-string v8, "DIGEST_MODE"

    aput-object v8, v6, v2

    aput-object v10, v6, v3

    const-string v2, "REPLAY_MODE"

    aput-object v2, v6, v4

    aput-object v11, v6, v5

    const-string v2, "UNIFORM_MODE"

    const/4 v3, 0x5

    aput-object v2, v6, v3

    const/4 v2, 0x6

    aput-object v12, v6, v2

    const-string v2, "EXPONENTIAL_MODE"

    const/4 v3, 0x7

    aput-object v2, v6, v3

    const/16 v2, 0x8

    aput-object v13, v6, v2

    const-string v2, "GAUSSIAN_MODE"

    const/16 v3, 0x9

    aput-object v2, v6, v3

    const/16 v2, 0xa

    aput-object v14, v6, v2

    const-string v2, "CONSTANT_MODE"

    const/16 v3, 0xb

    aput-object v2, v6, v3

    const/16 v2, 0xc

    aput-object v15, v6, v2

    invoke-direct {v1, v7, v6}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 138
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->getNextGaussian()D

    move-result-wide v1

    return-wide v1

    .line 137
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->getNextExponential()D

    move-result-wide v1

    return-wide v1

    .line 136
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->getNextUniform()D

    move-result-wide v1

    return-wide v1

    .line 135
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->getNextReplay()D

    move-result-wide v1

    return-wide v1

    .line 134
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/random/ValueServer;->getNextDigest()D

    move-result-wide v1

    return-wide v1
.end method

.method public getSigma()D
    .locals 2

    .line 348
    iget-wide v0, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    return-wide v0
.end method

.method public getValuesFileURL()Ljava/net/URL;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    return-object v0
.end method

.method public reSeed(J)V
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public resetReplayFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->filePointer:Ljava/io/BufferedReader;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 240
    iput p1, p0, Lorg/apache/commons/math3/random/ValueServer;->mode:I

    return-void
.end method

.method public setMu(D)V
    .locals 0

    .line 335
    iput-wide p1, p0, Lorg/apache/commons/math3/random/ValueServer;->mu:D

    return-void
.end method

.method public setSigma(D)V
    .locals 0

    .line 357
    iput-wide p1, p0, Lorg/apache/commons/math3/random/ValueServer;->sigma:D

    return-void
.end method

.method public setValuesFileURL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    return-void
.end method

.method public setValuesFileURL(Ljava/net/URL;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/apache/commons/math3/random/ValueServer;->valuesFileURL:Ljava/net/URL;

    return-void
.end method
