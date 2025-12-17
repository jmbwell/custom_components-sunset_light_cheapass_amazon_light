.class public Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "MixtureMultivariateRealDistribution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;",
        ">",
        "Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;"
    }
.end annotation


# instance fields
.field private final distribution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final weight:[D


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->getDimension()I

    move-result v1

    const-wide/16 v2, 0x0

    move v4, v0

    move-wide v5, v2

    :goto_0
    if-ge v4, p1, :cond_2

    .line 80
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/util/Pair;

    .line 81
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v8}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v8

    if-ne v8, v1, :cond_1

    .line 84
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-ltz v8, :cond_0

    .line 87
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {p2}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result p2

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 91
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    .line 97
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    :goto_1
    if-ge v0, p1, :cond_3

    .line 99
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 100
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    div-double/2addr v3, v5

    aput-wide v3, v2, v0

    .line 101
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 92
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public density([D)D
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 108
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 109
    aget-wide v4, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->density([D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 166
    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 4

    .line 148
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->reseedRandomGenerator(J)V

    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->reseedRandomGenerator(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sample()[D
    .locals 8

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 124
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 125
    aget-wide v6, v5, v4

    add-double/2addr v2, v6

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v0}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->distribution:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->weight:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v0}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v0

    :cond_2
    return-object v0
.end method
