.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovTest.java"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240

.field protected static final PG_SUM_RELATIVE_ERROR:D = 1.0E-10

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8


# instance fields
.field private final rng:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private checkArray([D)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 818
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    return-void

    .line 819
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v4, v2, p1

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 816
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private copyPartition([D[D[III)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    add-int v3, p4, p5

    if-ge v0, v3, :cond_1

    if-ge v1, p4, :cond_0

    .line 991
    aget v3, p3, v1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    int-to-double v4, v0

    .line 992
    aput-wide v4, p1, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    int-to-double v4, v0

    .line 994
    aput-wide v4, p2, v2

    move v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
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

    int-to-double v0, p3

    mul-double/2addr v0, p1

    .line 651
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p2, p1, 0x2

    add-int/lit8 p3, p2, -0x1

    int-to-double v2, p1

    sub-double v0, v2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    const/4 v10, 0x0

    if-gez p1, :cond_9

    .line 659
    :try_start_0
    new-instance p1, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v9, 0x2710

    move-object v4, p1

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    :try_start_1
    new-instance p1, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v9, 0x2710

    move-object v4, p1

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 664
    :catch_1
    new-instance p1, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v9, 0x2710

    move-object v4, p1

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    :goto_0
    const/4 v0, 0x2

    .line 667
    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    aput p3, v1, v10

    const-class v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/fraction/BigFraction;

    move v3, v10

    :goto_1
    if-ge v3, p3, :cond_2

    move v4, v10

    :goto_2
    if-ge v4, p3, :cond_1

    sub-int v5, v3, v4

    add-int/2addr v5, v2

    if-gez v5, :cond_0

    .line 675
    aget-object v5, v1, v3

    sget-object v6, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v6, v5, v4

    goto :goto_3

    .line 677
    :cond_0
    aget-object v5, v1, v3

    sget-object v6, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v6, v5, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    :cond_2
    new-array v3, p3, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 687
    aput-object p1, v3, v10

    move v4, v2

    :goto_4
    if-ge v4, p3, :cond_3

    add-int/lit8 v5, v4, -0x1

    .line 689
    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    move v4, v10

    :goto_5
    if-ge v4, p3, :cond_4

    .line 696
    aget-object v5, v1, v4

    aget-object v6, v5, v10

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v5, v10

    add-int/lit8 v5, p2, -0x2

    .line 697
    aget-object v5, v1, v5

    aget-object v6, v5, v4

    sub-int v7, p3, v4

    sub-int/2addr v7, v2

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 704
    :cond_4
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v3

    if-ne v3, v2, :cond_5

    sub-int/2addr p2, v0

    .line 705
    aget-object p2, v1, p2

    aget-object v3, p2, v10

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    aput-object p1, p2, v10

    :cond_5
    move p1, v10

    :goto_6
    if-ge p1, p3, :cond_8

    move p2, v10

    :goto_7
    add-int/lit8 v3, p1, 0x1

    if-ge p2, v3, :cond_7

    sub-int v3, p1, p2

    add-int/2addr v3, v2

    if-lez v3, :cond_6

    move v4, v0

    :goto_8
    if-gt v4, v3, :cond_6

    .line 720
    aget-object v5, v1, p1

    aget-object v6, v5, p2

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v5, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_7
    move p1, v3

    goto :goto_6

    .line 725
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object p1

    .line 655
    :cond_9
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p1, p2, p3, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move/from16 v0, p3

    int-to-double v0, v0

    mul-double v0, v0, p1

    .line 740
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, -0x1

    int-to-double v5, v2

    sub-double/2addr v5, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v0

    const/4 v7, 0x0

    if-gez v2, :cond_9

    const/4 v2, 0x2

    .line 746
    new-array v8, v2, [I

    const/4 v9, 0x1

    aput v4, v8, v9

    aput v4, v8, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    move v10, v7

    :goto_0
    if-ge v10, v4, :cond_2

    move v11, v7

    :goto_1
    if-ge v11, v4, :cond_1

    sub-int v12, v10, v11

    add-int/2addr v12, v9

    if-gez v12, :cond_0

    .line 754
    aget-object v12, v8, v10

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v11

    goto :goto_2

    .line 756
    :cond_0
    aget-object v12, v8, v10

    aput-wide v0, v12, v11

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 765
    :cond_2
    new-array v10, v4, [D

    .line 766
    aput-wide v5, v10, v7

    move v11, v9

    :goto_3
    if-ge v11, v4, :cond_3

    add-int/lit8 v12, v11, -0x1

    .line 768
    aget-wide v12, v10, v12

    mul-double/2addr v12, v5

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_4
    if-ge v11, v4, :cond_4

    .line 775
    aget-object v12, v8, v11

    aget-wide v13, v12, v7

    aget-wide v15, v10, v11

    sub-double/2addr v13, v15

    aput-wide v13, v12, v7

    add-int/lit8 v12, v3, -0x2

    .line 776
    aget-object v12, v8, v12

    aget-wide v13, v12, v11

    sub-int v15, v4, v11

    sub-int/2addr v15, v9

    aget-wide v15, v10, v15

    sub-double/2addr v13, v15

    aput-wide v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 783
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    if-lez v10, :cond_5

    sub-int/2addr v3, v2

    .line 784
    aget-object v3, v8, v3

    aget-wide v10, v3, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v12

    sub-double/2addr v5, v0

    invoke-static {v5, v6, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    add-double/2addr v10, v0

    aput-wide v10, v3, v7

    :cond_5
    move v0, v7

    :goto_5
    if-ge v0, v4, :cond_8

    move v1, v7

    :goto_6
    add-int/lit8 v3, v0, 0x1

    if-ge v1, v3, :cond_7

    sub-int v3, v0, v1

    add-int/2addr v3, v9

    if-lez v3, :cond_6

    move v5, v2

    :goto_7
    if-gt v5, v3, :cond_6

    .line 799
    aget-object v6, v8, v0

    aget-wide v10, v6, v1

    int-to-double v12, v5

    div-double/2addr v10, v12

    aput-wide v10, v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move v0, v3

    goto :goto_5

    .line 804
    :cond_8
    invoke-static {v8}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 744
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method private exactK(DI)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double/2addr v0, p1

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 457
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createExactH(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 458
    invoke-interface {p1, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    .line 460
    invoke-interface {p1, v0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    :goto_0
    if-gt p2, p3, :cond_0

    .line 463
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    const/4 p3, 0x4

    .line 471
    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method private roundedK(DI)D
    .locals 6

    int-to-double v0, p3

    mul-double v2, v0, p1

    .line 483
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 484
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->createRoundedH(DI)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 485
    invoke-interface {p1, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v2, p2

    .line 487
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    :goto_0
    if-gt p2, p3, :cond_0

    int-to-double v4, p2

    div-double/2addr v4, v0

    mul-double/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 6

    int-to-double v0, p4

    int-to-double p3, p3

    mul-double v2, v0, p3

    add-double/2addr v0, p3

    div-double/2addr v2, v0

    .line 929
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    mul-double v1, p1, p3

    const-wide v3, 0x3bc79ca10c924223L    # 1.0E-20

    const v5, 0x186a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, p1

    return-wide p3
.end method

.method public cdf(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public cdf(DIZ)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v4

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    cmpg-double v6, v6, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v6, :cond_2

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2

    mul-double/2addr p1, v7

    sub-double/2addr p1, v4

    const/4 p4, 0x1

    :goto_0
    if-gt p4, p3, :cond_1

    int-to-double v0, p4

    mul-double/2addr v0, p1

    mul-double/2addr v2, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    sub-double v4, v2, v4

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_3

    cmpg-double v4, p1, v2

    if-gez v4, :cond_3

    sub-double p1, v2, p1

    .line 427
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double/2addr p1, v7

    sub-double/2addr v2, p1

    return-wide v2

    :cond_3
    cmpg-double v0, v2, p1

    if-gtz v0, :cond_4

    return-wide v2

    :cond_4
    if-eqz p4, :cond_5

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactK(DI)D

    move-result-wide p1

    return-wide p1

    :cond_5
    const/16 p4, 0x8c

    if-gt p3, p4, :cond_6

    .line 435
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->roundedK(DI)D

    move-result-wide p1

    return-wide p1

    .line 437
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->pelzGood(DI)D

    move-result-wide p1

    return-wide p1
.end method

.method public cdfExact(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public exactP(DIIZ)D
    .locals 14

    move/from16 v0, p3

    move/from16 v1, p4

    add-int v2, v0, v1

    .line 881
    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->combinationsIterator(II)Ljava/util/Iterator;

    move-result-object v3

    .line 883
    new-array v4, v0, [D

    .line 884
    new-array v1, v1, [D

    const-wide/16 v5, 0x0

    .line 885
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 887
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    if-ge v8, v2, :cond_2

    if-ge v9, v0, :cond_1

    .line 892
    aget v11, v7, v9

    if-ne v11, v8, :cond_1

    add-int/lit8 v11, v9, 0x1

    int-to-double v12, v8

    .line 893
    aput-wide v12, v4, v9

    move v9, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v10, 0x1

    int-to-double v12, v8

    .line 895
    aput-wide v12, v1, v10

    move v10, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v8, p0

    .line 898
    invoke-virtual {p0, v4, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v9

    cmpl-double v7, v9, p1

    const-wide/16 v9, 0x1

    if-lez v7, :cond_3

    :goto_3
    add-long/2addr v5, v9

    goto :goto_0

    :cond_3
    if-nez v7, :cond_0

    if-nez p5, :cond_0

    goto :goto_3

    :cond_4
    move-object v8, p0

    long-to-double v3, v5

    .line 905
    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v3, v0

    return-wide v3
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 13

    .line 191
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 192
    array-length v0, p2

    int-to-double v1, v0

    .line 194
    new-array v3, v0, [D

    const/4 v4, 0x0

    .line 195
    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    const-wide/16 v4, 0x0

    const/4 p2, 0x1

    :goto_0
    if-gt p2, v0, :cond_1

    add-int/lit8 v6, p2, -0x1

    .line 199
    aget-wide v7, v3, v6

    invoke-interface {p1, v7, v8}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    int-to-double v9, v6

    div-double/2addr v9, v1

    sub-double v9, v7, v9

    int-to-double v11, p2

    div-double/2addr v11, v1

    sub-double/2addr v11, v7

    .line 200
    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 15

    .line 287
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    move-object v0, p0

    move-object/from16 v1, p2

    .line 288
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->checkArray([D)V

    .line 290
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v2

    .line 291
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v1

    .line 292
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->sort([D)V

    .line 294
    array-length v3, v2

    .line 295
    array-length v4, v1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-ge v8, v3, :cond_2

    int-to-double v11, v8

    add-double/2addr v11, v9

    int-to-double v13, v3

    div-double/2addr v11, v13

    .line 302
    aget-wide v13, v2, v8

    invoke-static {v1, v13, v14}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v13

    if-ltz v13, :cond_0

    int-to-double v13, v13

    add-double/2addr v13, v9

    goto :goto_1

    :cond_0
    neg-int v13, v13

    int-to-double v13, v13

    sub-double/2addr v13, v9

    :goto_1
    int-to-double v9, v4

    div-double/2addr v13, v9

    sub-double/2addr v11, v13

    .line 304
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v11, v9, v5

    if-lez v11, :cond_1

    move-wide v5, v9

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v7, v4, :cond_5

    int-to-double v11, v7

    add-double/2addr v11, v9

    int-to-double v13, v4

    div-double/2addr v11, v13

    .line 312
    aget-wide v13, v1, v7

    invoke-static {v2, v13, v14}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v8

    if-ltz v8, :cond_3

    int-to-double v13, v8

    add-double/2addr v13, v9

    int-to-double v9, v3

    div-double/2addr v13, v9

    goto :goto_3

    :cond_3
    neg-int v8, v8

    int-to-double v8, v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v13

    int-to-double v13, v3

    div-double v13, v8, v13

    :goto_3
    sub-double/2addr v13, v11

    .line 314
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpl-double v10, v8, v5

    if-lez v10, :cond_4

    move-wide v5, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_5
    return-wide v5
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 2

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v0

    array-length p1, p2

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 9

    .line 243
    array-length v0, p1

    int-to-long v0, v0

    array-length v2, p2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v4

    array-length v6, p1

    array-length v7, p2

    move-object v3, p0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v2

    array-length v4, p1

    array-length v5, p2

    const v7, 0xf4240

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->monteCarloP(DIIZI)D

    move-result-wide p1

    return-wide p1

    .line 250
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v0

    array-length p1, p1

    array-length p2, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide p1

    return-wide p1
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 354
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide p1

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 352
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method public ksSum(DDI)D
    .locals 15

    move/from16 v0, p5

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    mul-double v1, v1, p1

    mul-double v1, v1, p1

    const/4 v3, -0x1

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move v12, v3

    move-wide v10, v4

    :goto_0
    cmpl-double v8, v8, p3

    if-lez v8, :cond_0

    int-to-long v8, v0

    cmp-long v8, v10, v8

    if-gez v8, :cond_0

    long-to-double v8, v10

    mul-double v13, v1, v8

    mul-double/2addr v13, v8

    .line 845
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    int-to-double v13, v12

    mul-double/2addr v13, v8

    add-double/2addr v6, v13

    mul-int/2addr v12, v3

    add-long/2addr v10, v4

    goto :goto_0

    :cond_0
    int-to-long v1, v0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v0

    return-wide v6

    .line 851
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public monteCarloP(DIIZI)D
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    add-int v0, v8, v7

    .line 952
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v10

    .line 953
    new-array v11, v7, [D

    .line 954
    new-array v12, v8, [D

    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    :goto_0
    if-ge v14, v9, :cond_2

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v10

    move/from16 v4, p3

    move/from16 v5, p4

    .line 957
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->copyPartition([D[D[III)V

    .line 958
    invoke-virtual {v6, v11, v12}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    .line 964
    :cond_1
    :goto_2
    iget-object v0, v6, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->rng:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v10, v0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    .line 965
    invoke-static {v10, v13, v7}, Ljava/util/Arrays;->sort([III)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    int-to-double v0, v15

    int-to-double v2, v9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public pelzGood(DI)D
    .locals 49

    move/from16 v0, p3

    int-to-double v0, v0

    .line 506
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v4, p1, v2

    mul-double v6, p1, p1

    mul-double/2addr v6, v0

    mul-double v8, v6, v6

    mul-double v10, v8, v6

    mul-double v12, v8, v8

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    mul-double/2addr v14, v6

    const-wide v16, 0x4023bd3cc9be45deL    # 9.869604401089358

    div-double v14, v16, v14

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    move-wide/from16 p1, v12

    move-wide/from16 v21, v18

    move/from16 v12, v20

    :goto_0
    const-wide v23, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const v13, 0x186a0

    if-ge v12, v13, :cond_1

    mul-int/lit8 v25, v12, 0x2

    add-int/lit8 v13, v25, -0x1

    move-wide/from16 v25, v0

    int-to-double v0, v13

    move-wide/from16 v27, v10

    neg-double v10, v14

    mul-double/2addr v10, v0

    mul-double/2addr v10, v0

    .line 524
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    add-double v21, v21, v0

    mul-double v10, v21, v23

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_0

    const v0, 0x186a0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v0, v25

    move-wide/from16 v10, v27

    goto :goto_0

    :cond_1
    move-wide/from16 v25, v0

    move-wide/from16 v27, v10

    move v0, v13

    :goto_1
    if-eq v12, v0, :cond_11

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 533
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v21, v21, v10

    div-double v21, v21, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v6, v10

    move-wide/from16 v29, v18

    const/4 v14, 0x0

    :goto_2
    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    const-wide v33, -0x3fdc42c33641ba22L    # -9.869604401089358

    if-ge v14, v0, :cond_3

    int-to-double v10, v14

    add-double v10, v10, v31

    mul-double/2addr v10, v10

    mul-double v37, v10, v16

    sub-double v37, v37, v6

    mul-double v10, v10, v33

    div-double/2addr v10, v12

    .line 545
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double v37, v37, v10

    add-double v29, v29, v37

    .line 547
    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    mul-double v37, v37, v23

    cmpg-double v0, v10, v37

    if-gez v0, :cond_2

    const v0, 0x186a0

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const v0, 0x186a0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    goto :goto_2

    :cond_3
    :goto_3
    if-eq v14, v0, :cond_10

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 554
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v29, v29, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v14, v8

    mul-double/2addr v14, v2

    div-double v29, v29, v14

    add-double v21, v21, v29

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v8

    const-wide/high16 v29, 0x4018000000000000L    # 6.0

    mul-double v29, v29, v27

    const-wide/high16 v35, 0x4014000000000000L    # 5.0

    mul-double v37, v6, v35

    move-wide/from16 v39, v18

    const/4 v0, 0x0

    :goto_4
    const-wide v41, 0x40585a2e8c290825L    # 97.40909103400243

    const v1, 0x186a0

    move-wide/from16 v43, v2

    if-ge v0, v1, :cond_5

    int-to-double v1, v0

    add-double v1, v1, v31

    mul-double/2addr v1, v1

    add-double v45, v29, v14

    sub-double v47, v14, v37

    mul-double v47, v47, v16

    mul-double v47, v47, v1

    add-double v45, v45, v47

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v47, v47, v12

    mul-double v47, v47, v41

    mul-double v47, v47, v1

    mul-double v47, v47, v1

    add-double v45, v45, v47

    mul-double v1, v1, v33

    div-double/2addr v1, v12

    .line 570
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double v45, v45, v1

    add-double v39, v39, v45

    .line 573
    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v45

    mul-double v45, v45, v23

    cmpg-double v1, v1, v45

    if-gez v1, :cond_4

    const v1, 0x186a0

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v43

    goto :goto_4

    :cond_5
    :goto_5
    if-eq v0, v1, :cond_f

    move-wide/from16 v2, v18

    move/from16 v0, v20

    :goto_6
    if-ge v0, v1, :cond_7

    mul-int v1, v0, v0

    int-to-double v14, v1

    mul-double v29, v14, v16

    mul-double v14, v14, v33

    div-double/2addr v14, v12

    .line 584
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    mul-double v29, v29, v14

    add-double v2, v2, v29

    .line 586
    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    mul-double v29, v29, v23

    cmpg-double v1, v14, v29

    if-gez v1, :cond_6

    const v1, 0x186a0

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    const v1, 0x186a0

    goto :goto_6

    :cond_7
    :goto_7
    if-eq v0, v1, :cond_e

    div-double v0, v10, v25

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    mul-double/2addr v14, v4

    div-double v39, v39, v14

    const-wide/high16 v14, 0x4032000000000000L    # 18.0

    mul-double/2addr v14, v6

    mul-double/2addr v14, v4

    div-double/2addr v2, v14

    sub-double v39, v39, v2

    mul-double v0, v0, v39

    add-double v21, v21, v0

    move-wide/from16 v2, v18

    const v0, 0x186a0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_9

    int-to-double v4, v1

    add-double v4, v4, v31

    mul-double/2addr v4, v4

    mul-double v14, v4, v4

    mul-double v29, v14, v4

    const-wide v37, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v29, v29, v37

    const-wide/high16 v37, 0x403e000000000000L    # 30.0

    mul-double v39, v6, v37

    sub-double v39, v35, v39

    mul-double v29, v29, v39

    mul-double v14, v14, v41

    const-wide/high16 v39, -0x3fb2000000000000L    # -60.0

    mul-double v39, v39, v6

    const-wide v45, 0x406a800000000000L    # 212.0

    mul-double v45, v45, v8

    add-double v39, v39, v45

    mul-double v14, v14, v39

    add-double v29, v29, v14

    mul-double v14, v4, v16

    const-wide v39, 0x4060e00000000000L    # 135.0

    mul-double v39, v39, v8

    const-wide/high16 v45, 0x4058000000000000L    # 96.0

    mul-double v45, v45, v27

    sub-double v39, v39, v45

    mul-double v14, v14, v39

    add-double v29, v29, v14

    mul-double v14, v27, v37

    sub-double v29, v29, v14

    const-wide v14, 0x4056800000000000L    # 90.0

    move-wide/from16 v37, p1

    mul-double v14, v14, v37

    sub-double v29, v29, v14

    mul-double v4, v4, v33

    div-double/2addr v4, v12

    .line 607
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double v29, v29, v4

    add-double v2, v2, v29

    .line 611
    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    mul-double v14, v14, v23

    cmpg-double v0, v4, v14

    if-gez v0, :cond_8

    const v0, 0x186a0

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 p1, v37

    const v0, 0x186a0

    goto :goto_8

    :cond_9
    :goto_9
    if-eq v1, v0, :cond_d

    move/from16 v1, v20

    :goto_a
    if-ge v1, v0, :cond_b

    mul-int v0, v1, v1

    int-to-double v4, v0

    mul-double v14, v4, v4

    const-wide v16, -0x3fa7a5d173d6f7dbL    # -97.40909103400243

    mul-double v14, v14, v16

    const-wide v16, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v16, v16, v4

    mul-double v16, v16, v6

    add-double v14, v14, v16

    mul-double v4, v4, v33

    div-double/2addr v4, v12

    .line 622
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double/2addr v14, v4

    add-double v18, v18, v14

    .line 625
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    mul-double v14, v14, v23

    cmpg-double v0, v4, v14

    if-gez v0, :cond_a

    const v0, 0x186a0

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const v0, 0x186a0

    goto :goto_a

    :cond_b
    :goto_b
    if-eq v1, v0, :cond_c

    mul-double v0, v43, v25

    div-double/2addr v10, v0

    const-wide v0, 0x40a9500000000000L    # 3240.0

    mul-double v0, v0, v27

    mul-double/2addr v0, v8

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    mul-double v0, v0, v27

    div-double v18, v18, v0

    add-double v2, v2, v18

    mul-double/2addr v10, v2

    add-double v21, v21, v10

    return-wide v21

    .line 630
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v1, 0x186a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_d
    move v1, v0

    .line 616
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 591
    :cond_e
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 578
    :cond_f
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_10
    move v1, v0

    .line 552
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_11
    move v1, v0

    .line 531
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
