.class public Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40d193cce9ad2d93L


# instance fields
.field private n:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 92
    iput p1, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, -0x1

    int-to-double v3, v0

    .line 274
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v5, v0

    mul-double/2addr v5, p1

    sub-double p1, v3, v5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v3

    const/4 v5, 0x0

    if-gez v0, :cond_9

    .line 283
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v10, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v12, 0x2710

    move-object v7, v0

    move-wide v8, p1

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v12, 0x2710

    move-object v7, v0

    move-wide v8, p1

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 288
    :catch_1
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x2710

    move-object v7, v0

    move-wide v8, p1

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    :goto_0
    const/4 p1, 0x2

    .line 292
    new-array p2, p1, [I

    const/4 v3, 0x1

    aput v2, p2, v3

    aput v2, p2, v5

    const-class v4, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v4, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Lorg/apache/commons/math3/fraction/BigFraction;

    move v4, v5

    :goto_1
    if-ge v4, v2, :cond_2

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_1

    sub-int v7, v4, v6

    add-int/2addr v7, v3

    if-gez v7, :cond_0

    .line 300
    aget-object v7, p2, v4

    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v8, v7, v6

    goto :goto_3

    .line 302
    :cond_0
    aget-object v7, p2, v4

    sget-object v8, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v8, v7, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    :cond_2
    new-array v4, v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 312
    aput-object v0, v4, v5

    move v6, v3

    :goto_4
    if-ge v6, v2, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 314
    aget-object v7, v4, v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v5

    :goto_5
    if-ge v6, v2, :cond_4

    .line 321
    aget-object v7, p2, v6

    aget-object v8, v7, v5

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v7, v1, -0x2

    .line 322
    aget-object v7, p2, v7

    aget-object v8, v7, v6

    sub-int v9, v2, v6

    sub-int/2addr v9, v3

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 330
    :cond_4
    sget-object v4, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v4

    if-ne v4, v3, :cond_5

    sub-int/2addr v1, p1

    .line 331
    aget-object v1, p2, v1

    aget-object v4, v1, v5

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aput-object v0, v1, v5

    :cond_5
    move v0, v5

    :goto_6
    if-ge v0, v2, :cond_8

    move v1, v5

    :goto_7
    add-int/lit8 v4, v0, 0x1

    if-ge v1, v4, :cond_7

    sub-int v4, v0, v1

    add-int/2addr v4, v3

    if-lez v4, :cond_6

    move v6, p1

    :goto_8
    if-gt v6, v4, :cond_6

    .line 349
    aget-object v7, p2, v0

    aget-object v8, v7, v1

    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    aput-object v8, v7, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    move v0, v4

    goto :goto_6

    .line 355
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object p1

    .line 277
    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p1, p2, v5}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private exactK(D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 201
    iget p2, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    .line 203
    invoke-interface {p1, v0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 205
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt p2, v0, :cond_0

    .line 206
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    const/4 v0, 0x4

    .line 214
    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method private roundedK(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 231
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 232
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result p2

    .line 238
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p2, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_0

    .line 242
    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v5}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget p1, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    .line 248
    invoke-interface {p1, v0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v0

    .line 250
    :goto_2
    iget p1, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt p2, p1, :cond_2

    int-to-double v2, p2

    int-to-double v4, p1

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public cdf(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public cdf(DZ)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 153
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v1

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    cmpg-double v5, v5, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-gez v5, :cond_2

    cmpg-double v5, p1, v1

    if-gtz v5, :cond_2

    mul-double/2addr p1, v6

    sub-double/2addr p1, v1

    const/4 p3, 0x1

    .line 166
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt p3, v0, :cond_1

    int-to-double v0, p3

    mul-double/2addr v0, p1

    mul-double/2addr v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide v3

    :cond_2
    sub-double v1, v3, v1

    cmpg-double v1, v1, p1

    if-gtz v1, :cond_3

    cmpg-double v1, p1, v3

    if-gez v1, :cond_3

    sub-double p1, v3, p1

    .line 174
    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide p1

    mul-double/2addr p1, v6

    sub-double/2addr v3, p1

    return-wide v3

    :cond_3
    cmpg-double v0, v3, p1

    if-gtz v0, :cond_4

    return-wide v3

    :cond_4
    if-eqz p3, :cond_5

    .line 181
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->exactK(D)D

    move-result-wide p1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->roundedK(D)D

    move-result-wide p1

    :goto_1
    return-wide p1
.end method

.method public cdfExact(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide p1

    return-wide p1
.end method
