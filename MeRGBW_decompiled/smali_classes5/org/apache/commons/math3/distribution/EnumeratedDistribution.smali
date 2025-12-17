.class public Lorg/apache/commons/math3/distribution/EnumeratedDistribution;
.super Ljava/lang/Object;
.source "EnumeratedDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1330eacL


# instance fields
.field private final cumulativeProbabilities:[D

.field private final probabilities:[D

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final singletons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    .line 121
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [D

    const/4 v0, 0x0

    move v1, v0

    .line 123
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 124
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/Pair;

    .line 125
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v6, v3

    if-ltz v3, :cond_2

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    aput-wide v6, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw p1

    .line 131
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p1, v5, p2}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Ljava/lang/Number;[Ljava/lang/Object;)V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 139
    invoke-static {p1, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    .line 141
    array-length p1, p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    .line 143
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length p2, p1

    if-ge v0, p2, :cond_4

    .line 144
    aget-wide v1, p1, v0

    add-double/2addr v3, v1

    .line 145
    iget-object p1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getPmf()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "TT;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 197
    new-instance v2, Lorg/apache/commons/math3/util/Pair;

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method probability(Ljava/lang/Object;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 173
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v3, v3

    if-ge v2, v3, :cond_3

    if-nez p1, :cond_0

    .line 174
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    aget-wide v4, v3, v2

    add-double/2addr v0, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public sample()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 211
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-gez v2, :cond_0

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-ltz v2, :cond_1

    .line 216
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->probabilities:[D

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 217
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->cumulativeProbabilities:[D

    aget-wide v4, v3, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 218
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->singletons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sample(I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 242
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 238
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public sample(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 275
    array-length v1, p2

    if-ge v1, p1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/EnumeratedDistribution;->sample()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 271
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 267
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p2
.end method
