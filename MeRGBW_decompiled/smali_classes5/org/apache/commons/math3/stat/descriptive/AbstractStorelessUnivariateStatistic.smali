.class public abstract Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "AbstractStorelessUnivariateStatistic.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 172
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;

    .line 173
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v3

    long-to-float p1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public evaluate([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 63
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([DII)D

    move-result-wide v0

    return-wide v0

    .line 61
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public evaluate([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->clear()V

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->incrementAll([DII)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getResult()D
.end method

.method public hashCode()I
    .locals 3

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract increment(D)V
.end method

.method public incrementAll([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 133
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->incrementAll([DII)V

    return-void

    .line 131
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public incrementAll([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->test([DII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 152
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->increment(D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
