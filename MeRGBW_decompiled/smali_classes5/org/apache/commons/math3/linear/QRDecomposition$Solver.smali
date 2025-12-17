.class Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
.super Ljava/lang/Object;
.source "QRDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final qrt:[[D

.field private final rDiag:[D

.field private final threshold:D


# direct methods
.method private constructor <init>([[D[DD)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    .line 332
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    .line 333
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    return-void
.end method

.method synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 8

    .line 338
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    .line 339
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->threshold:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 26

    move-object/from16 v0, p0

    .line 391
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 392
    aget-object v1, v1, v3

    array-length v1, v1

    .line 393
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 400
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v5, v4, 0x33

    const/16 v6, 0x34

    .line 402
    div-int/2addr v5, v6

    .line 403
    invoke-static {v2, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v7

    .line 404
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x1

    aput v6, v9, v10

    aput v8, v9, v3

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 405
    new-array v6, v6, [D

    move v9, v3

    :goto_0
    if-ge v9, v5, :cond_a

    mul-int/lit8 v14, v9, 0x34

    add-int/lit8 v11, v14, 0x34

    .line 409
    invoke-static {v11, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    sub-int v15, v11, v14

    add-int/lit8 v13, v1, -0x1

    add-int/lit8 v16, v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v11, p1

    move v10, v15

    move/from16 v15, v16

    move-object/from16 v16, v8

    .line 413
    invoke-interface/range {v11 .. v16}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    move v11, v3

    .line 416
    :goto_1
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ge v11, v12, :cond_5

    .line 417
    iget-object v12, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v12, v12, v11

    .line 418
    iget-object v15, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v18, v15, v11

    aget-wide v15, v12, v11

    mul-double v18, v18, v15

    div-double v13, v13, v18

    move v15, v4

    move/from16 v16, v5

    const-wide/16 v4, 0x0

    .line 420
    invoke-static {v6, v3, v10, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    move v4, v11

    :goto_2
    if-ge v4, v1, :cond_1

    .line 422
    aget-wide v18, v12, v4

    .line 423
    aget-object v5, v8, v4

    :goto_3
    if-ge v3, v10, :cond_0

    .line 425
    aget-wide v20, v6, v3

    aget-wide v22, v5, v3

    mul-double v22, v22, v18

    add-double v20, v20, v22

    aput-wide v20, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_2

    .line 429
    aget-wide v4, v6, v3

    mul-double/2addr v4, v13

    aput-wide v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v3, v11

    :goto_5
    if-ge v3, v1, :cond_4

    .line 433
    aget-wide v4, v12, v3

    .line 434
    aget-object v13, v8, v3

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v10, :cond_3

    .line 436
    aget-wide v18, v13, v14

    aget-wide v20, v6, v14

    mul-double v20, v20, v4

    add-double v18, v18, v20

    aput-wide v18, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move v4, v15

    move/from16 v5, v16

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move v15, v4

    move/from16 v16, v5

    .line 442
    iget-object v3, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_7
    if-ltz v3, :cond_9

    .line 443
    div-int/lit8 v5, v3, 0x34

    mul-int/lit8 v11, v5, 0x34

    .line 445
    iget-object v12, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v17, v12, v3

    div-double v17, v13, v17

    .line 446
    aget-object v12, v8, v3

    mul-int v5, v5, v16

    add-int/2addr v5, v9

    .line 447
    aget-object v5, v7, v5

    sub-int v11, v3, v11

    mul-int/2addr v11, v10

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v10, :cond_6

    .line 450
    aget-wide v20, v12, v4

    mul-double v20, v20, v17

    aput-wide v20, v12, v4

    add-int/lit8 v22, v11, 0x1

    .line 451
    aput-wide v20, v5, v11

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v22

    goto :goto_8

    .line 454
    :cond_6
    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_8

    .line 456
    aget-wide v17, v4, v5

    .line 457
    aget-object v11, v8, v5

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v10, :cond_7

    .line 459
    aget-wide v22, v11, v13

    aget-wide v24, v12, v13

    mul-double v24, v24, v17

    sub-double v22, v22, v24

    aput-wide v22, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move v4, v15

    move/from16 v5, v16

    const/4 v3, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    move v15, v4

    .line 465
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move v3, v15

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v7, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v1

    .line 397
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v1

    .line 394
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 349
    aget-object v0, v0, v2

    array-length v0, v0

    .line 350
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->isNonSingular()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    new-array v3, v1, [D

    .line 358
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    move v4, v2

    .line 361
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 363
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_0

    .line 366
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 368
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v9, v8, v4

    aget-wide v11, v5, v4

    mul-double/2addr v9, v11

    div-double/2addr v6, v9

    move v8, v4

    :goto_2
    if-ge v8, v0, :cond_1

    .line 371
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double/2addr v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 377
    aget-wide v4, p1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->rDiag:[D

    aget-wide v6, v1, v0

    div-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 379
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;->qrt:[[D

    aget-object v1, v1, v0

    .line 380
    aput-wide v4, v3, v0

    move v6, v2

    :goto_4
    if-ge v6, v0, :cond_3

    .line 382
    aget-wide v7, p1, v6

    aget-wide v9, v1, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 386
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 354
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p1

    .line 351
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
