.class public Lorg/apache/commons/math3/random/RandomDataImpl;
.super Ljava/lang/Object;
.source "RandomDataImpl.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomData;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private final delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method


# virtual methods
.method getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-object v0
.end method

.method public nextBeta(DD)D
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextBeta(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextBinomial(ID)I
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextBinomial(ID)I

    move-result p1

    return p1
.end method

.method public nextCauchy(DD)D
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextCauchy(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextChiSquare(D)D
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextChiSquare(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextExponential(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextExponential(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextF(DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextF(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextGamma(DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGamma(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextGaussian(DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextGaussian(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextHexString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextHexString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextHypergeometric(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextHypergeometric(III)I

    move-result p1

    return p1
.end method

.method public nextInt(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextInt(II)I

    move-result p1

    return p1
.end method

.method public nextInversionDeviate(Lorg/apache/commons/math3/distribution/RealDistribution;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 565
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/RandomDataImpl;->nextUniform(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/distribution/RealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInversionDeviate(Lorg/apache/commons/math3/distribution/IntegerDistribution;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 582
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/random/RandomDataImpl;->nextUniform(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->inverseCumulativeProbability(D)I

    move-result p1

    return p1
.end method

.method public nextLong(JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public nextPascal(ID)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPascal(ID)I

    move-result p1

    return p1
.end method

.method public nextPermutation(II)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPermutation(II)[I

    move-result-object p1

    return-object p1
.end method

.method public nextPoisson(D)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPoisson(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nextSecureHexString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureHexString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nextSecureInt(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureInt(II)I

    move-result p1

    return p1
.end method

.method public nextSecureLong(JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextSecureLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public nextT(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextT(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextUniform(DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextUniform(DDZ)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DDZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextWeibull(DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextWeibull(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public nextZipf(ID)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextZipf(ID)I

    move-result p1

    return p1
.end method

.method public reSeed()V
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed()V

    return-void
.end method

.method public reSeed(J)V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public reSeedSecure()V
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeedSecure()V

    return-void
.end method

.method public reSeedSecure(J)V
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeedSecure(J)V

    return-void
.end method

.method public setSecureAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataImpl;->delegate:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->setSecureAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
