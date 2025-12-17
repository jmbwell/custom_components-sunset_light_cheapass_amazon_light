.class Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/EigenDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private realEigenvalues:[D


# direct methods
.method private constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    .line 431
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    .line 432
    iput-object p3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void
.end method

.method synthetic constructor <init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-void
.end method

.method private eigenvalueNorm(I)D
    .locals 5

    .line 540
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v1, v0, p1

    .line 541
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->imagEigenvalues:[D

    aget-wide v3, v0, p1

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    .line 542
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14

    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    const/4 v1, 0x2

    .line 557
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 560
    aget-object v4, v1, v3

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_1

    const-wide/16 v6, 0x0

    move v8, v2

    :goto_2
    if-ge v8, v0, :cond_0

    .line 564
    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v9

    .line 565
    aget-wide v10, v9, v3

    aget-wide v12, v9, v5

    mul-double/2addr v10, v12

    iget-object v9, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v12, v9, v8

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 567
    :cond_0
    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 553
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0
.end method

.method public isNonSingular()Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 518
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 519
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v0, v4, v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 525
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 528
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvalueNorm(I)D

    move-result-wide v6

    div-double v8, v6, v4

    const-wide/16 v10, 0x0

    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    move-object/from16 v0, p0

    .line 474
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 478
    iget-object v1, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v1, v1

    .line 479
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 483
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    .line 484
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 485
    new-array v5, v1, [D

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_4

    move v7, v4

    :goto_1
    const-wide/16 v8, 0x0

    if-ge v7, v1, :cond_0

    move-object/from16 v10, p1

    .line 488
    invoke-interface {v10, v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v11

    aput-wide v11, v5, v7

    .line 489
    aget-object v11, v3, v7

    aput-wide v8, v11, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v10, p1

    move v7, v4

    :goto_2
    if-ge v7, v1, :cond_3

    .line 492
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v11, v11, v7

    .line 493
    invoke-virtual {v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v12

    move v13, v4

    move-wide v14, v8

    :goto_3
    if-ge v13, v1, :cond_1

    .line 496
    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    aget-wide v18, v5, v13

    mul-double v16, v16, v18

    add-double v14, v14, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 498
    :cond_1
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v16, v11, v7

    div-double v14, v14, v16

    move v11, v4

    :goto_4
    if-ge v11, v1, :cond_2

    .line 500
    aget-object v13, v3, v11

    aget-wide v16, v13, v6

    aget-wide v18, v12, v11

    mul-double v18, v18, v14

    add-double v16, v16, v18

    aput-wide v16, v13, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 505
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1

    :cond_5
    move-object/from16 v10, p1

    .line 480
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 475
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->isNonSingular()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    array-length v0, v0

    .line 454
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 458
    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 460
    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v4, v4, v3

    .line 461
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v5

    .line 462
    invoke-virtual {v4, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v6

    iget-object v4, p0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;->realEigenvalues:[D

    aget-wide v8, v4, v3

    div-double/2addr v6, v8

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 464
    aget-wide v8, v1, v4

    aget-wide v10, v5, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 455
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 450
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1
.end method
