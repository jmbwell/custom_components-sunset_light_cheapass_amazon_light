.class public Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
.source "SynchronizedDescriptiveStatistics.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 66
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 184
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 189
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 189
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 190
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method


# virtual methods
.method public declared-synchronized addValue(D)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D
    .locals 2

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;-><init>()V

    .line 168
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getElement(I)D
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getElement(I)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getN()J
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getQuadraticMean()D
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getQuadraticMean()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getValues()[D
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getValues()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWindowSize()I
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getWindowSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->setWindowSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
