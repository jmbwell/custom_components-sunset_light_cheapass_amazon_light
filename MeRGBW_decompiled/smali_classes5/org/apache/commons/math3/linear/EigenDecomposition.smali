.class public Lorg/apache/commons/math3/linear/EigenDecomposition;
.super Ljava/lang/Object;
.source "EigenDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-12


# instance fields
.field private cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private imagEigenvalues:[D

.field private final isSymmetric:Z

.field private main:[D

.field private maxIter:B

.field private realEigenvalues:[D

.field private secondary:[D

.field private transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 80
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    .line 118
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v2

    .line 119
    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->isSymmetric(Lorg/apache/commons/math3/linear/RealMatrix;D)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 122
    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 80
    iput-byte v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    .line 158
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 159
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    const/4 p2, 0x0

    .line 160
    iput-object p2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 161
    array-length p1, p1

    const/4 p2, 0x2

    .line 162
    new-array p2, p2, [I

    aput p1, p2, v0

    const/4 v0, 0x0

    aput p1, p2, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[D

    :goto_0
    if-ge v0, p1, :cond_0

    .line 164
    aget-object v1, p2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->findEigenVectors([[D)V

    return-void
.end method

.method public constructor <init>([D[DD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>([D[D)V

    return-void
.end method

.method private cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 785
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {p1, p5, p6, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method private findEigenVectors([[D)V
    .locals 37

    move-object/from16 v0, p0

    .line 593
    invoke-virtual/range {p1 .. p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 594
    iget-object v2, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    array-length v2, v2

    .line 595
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 596
    new-array v3, v2, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    .line 597
    new-array v3, v2, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_0

    .line 599
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    aget-wide v8, v7, v5

    aput-wide v8, v6, v5

    .line 600
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    aget-wide v7, v6, v5

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    aget-wide v8, v7, v6

    aput-wide v8, v5, v6

    const-wide/16 v7, 0x0

    .line 603
    aput-wide v7, v3, v6

    move v5, v4

    move-wide v9, v7

    :goto_1
    if-ge v5, v2, :cond_3

    .line 608
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-lez v11, :cond_1

    .line 609
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v5

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    .line 611
    :cond_1
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-lez v11, :cond_2

    .line 612
    aget-wide v9, v3, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    cmpl-double v5, v9, v7

    if-eqz v5, :cond_6

    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_6

    .line 618
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v13, v9

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_4

    .line 619
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v7, v11, v5

    .line 621
    :cond_4
    aget-wide v11, v3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v13, v9

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_5

    .line 622
    aput-wide v7, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_12

    move v9, v4

    :cond_7
    move v10, v5

    :goto_4
    if-ge v10, v6, :cond_9

    .line 632
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v10

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, v13, v14

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    .line 634
    aget-wide v15, v3, v10

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v15, v11

    cmpl-double v11, v15, v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    move v10, v14

    goto :goto_4

    :cond_9
    :goto_5
    if-eq v10, v5, :cond_11

    .line 639
    iget-byte v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    if-eq v9, v11, :cond_10

    add-int/lit8 v9, v9, 0x1

    .line 644
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, v11, v12

    aget-wide v14, v11, v5

    sub-double/2addr v12, v14

    aget-wide v14, v3, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double v14, v12, v12

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    .line 645
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    cmpg-double v11, v12, v7

    if-gez v11, :cond_a

    .line 647
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    sub-double/2addr v12, v14

    goto :goto_6

    .line 649
    :cond_a
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v11, v10

    aget-wide v22, v11, v5

    sub-double v20, v20, v22

    aget-wide v22, v3, v5

    add-double/2addr v12, v14

    :goto_6
    div-double v22, v22, v12

    add-double v20, v20, v22

    add-int/lit8 v11, v10, -0x1

    move-wide/from16 v24, v7

    move-wide/from16 v12, v18

    move-wide/from16 v22, v12

    :goto_7
    if-lt v11, v5, :cond_e

    .line 656
    aget-wide v14, v3, v11

    mul-double/2addr v12, v14

    mul-double v22, v22, v14

    .line 658
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    cmpl-double v14, v14, v26

    if-ltz v14, :cond_b

    div-double v14, v20, v12

    mul-double v26, v14, v14

    add-double v26, v26, v18

    .line 660
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    add-int/lit8 v28, v11, 0x1

    mul-double v12, v12, v26

    .line 661
    aput-wide v12, v3, v28

    div-double v12, v18, v26

    mul-double/2addr v14, v12

    move-wide/from16 v35, v14

    move-wide/from16 v14, v26

    move-wide/from16 v26, v35

    goto :goto_8

    :cond_b
    div-double v12, v12, v20

    mul-double v14, v12, v12

    add-double v14, v14, v18

    .line 666
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    add-int/lit8 v26, v11, 0x1

    mul-double v27, v20, v14

    .line 667
    aput-wide v27, v3, v26

    div-double v26, v18, v14

    mul-double v12, v12, v26

    :goto_8
    add-int/lit8 v28, v11, 0x1

    .line 671
    aget-wide v29, v3, v28

    cmpl-double v29, v29, v7

    if-nez v29, :cond_c

    .line 672
    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v16, v12, v28

    sub-double v16, v16, v24

    aput-wide v16, v12, v28

    .line 673
    aput-wide v7, v3, v10

    goto :goto_a

    .line 676
    :cond_c
    iget-object v14, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v20, v14, v28

    sub-double v20, v20, v24

    .line 677
    aget-wide v24, v14, v11

    sub-double v24, v24, v20

    mul-double v24, v24, v12

    mul-double v29, v26, v16

    mul-double v29, v29, v22

    add-double v24, v24, v29

    mul-double v29, v12, v24

    add-double v20, v20, v29

    .line 679
    aput-wide v20, v14, v28

    mul-double v14, v26, v24

    sub-double v20, v14, v22

    move v14, v4

    :goto_9
    if-ge v14, v2, :cond_d

    .line 682
    aget-object v15, v1, v14

    aget-wide v22, v15, v28

    .line 683
    aget-wide v31, v15, v11

    mul-double v31, v31, v12

    mul-double v33, v26, v22

    add-double v31, v31, v33

    aput-wide v31, v15, v28

    .line 684
    aget-wide v31, v15, v11

    mul-double v31, v31, v26

    mul-double v22, v22, v12

    sub-double v31, v31, v22

    aput-wide v31, v15, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v14, v24

    move-wide/from16 v22, v26

    move-wide/from16 v24, v29

    goto/16 :goto_7

    :cond_e
    :goto_a
    cmpl-double v12, v14, v7

    if-nez v12, :cond_f

    if-lt v11, v5, :cond_f

    goto :goto_b

    .line 690
    :cond_f
    iget-object v11, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v11, v5

    sub-double v12, v12, v24

    aput-wide v12, v11, v5

    .line 691
    aput-wide v20, v3, v5

    .line 692
    aput-wide v7, v3, v10

    goto :goto_b

    .line 640
    :cond_10
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-byte v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->maxIter:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    :cond_11
    :goto_b
    if-ne v10, v5, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_12
    move v3, v4

    :goto_c
    if-ge v3, v2, :cond_16

    .line 700
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v5, v3

    add-int/lit8 v5, v3, 0x1

    move v11, v3

    move v6, v5

    :goto_d
    if-ge v6, v2, :cond_14

    .line 702
    iget-object v12, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v13, v12, v6

    cmpl-double v12, v13, v9

    if-lez v12, :cond_13

    move v11, v6

    move-wide v9, v13

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_14
    if-eq v11, v3, :cond_15

    .line 708
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v12, v6, v3

    aput-wide v12, v6, v11

    .line 709
    aput-wide v9, v6, v3

    move v6, v4

    :goto_e
    if-ge v6, v2, :cond_15

    .line 711
    aget-object v9, v1, v6

    aget-wide v12, v9, v3

    .line 712
    aget-wide v14, v9, v11

    aput-wide v14, v9, v3

    .line 713
    aput-wide v12, v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    move v3, v5

    goto :goto_c

    :cond_16
    move v3, v4

    move-wide v5, v7

    :goto_f
    if-ge v3, v2, :cond_18

    .line 721
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v3

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, v5

    if-lez v9, :cond_17

    .line 722
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v9, v5, v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_18
    cmpl-double v3, v5, v7

    if-eqz v3, :cond_1a

    move v3, v4

    :goto_10
    if-ge v3, v2, :cond_1a

    .line 728
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v10, v9, v3

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v11, v5

    cmpg-double v9, v9, v11

    if-gez v9, :cond_19

    .line 729
    iget-object v9, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aput-wide v7, v9, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 733
    :cond_1a
    new-array v3, v2, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 734
    new-array v3, v2, [D

    move v5, v4

    :goto_11
    if-ge v5, v2, :cond_1c

    move v6, v4

    :goto_12
    if-ge v6, v2, :cond_1b

    .line 737
    aget-object v7, v1, v6

    aget-wide v8, v7, v5

    aput-wide v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 739
    :cond_1b
    iget-object v6, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    return-void
.end method

.method private findEigenVectorsFromSchur(Lorg/apache/commons/math3/linear/SchurTransformer;)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 796
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v10

    .line 797
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v11

    .line 799
    array-length v12, v10

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v13

    move v0, v15

    :goto_0
    if-ge v0, v12, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 804
    invoke-static {v1, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    :goto_1
    if-ge v1, v12, :cond_0

    .line 805
    aget-object v2, v10, v0

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double v16, v16, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide v5, 0x3d719799812dea11L    # 1.0E-12

    move-wide/from16 v1, v16

    .line 810
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_1a

    add-int/lit8 v7, v12, -0x1

    move v8, v7

    move-wide/from16 v18, v13

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    :goto_2
    if-ltz v8, :cond_14

    .line 821
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v24, v0, v8

    .line 822
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v5, v0, v8

    .line 824
    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_9

    .line 827
    aget-object v0, v10, v8

    aput-wide v26, v0, v8

    add-int/lit8 v0, v8, -0x1

    move v3, v8

    move-wide/from16 v1, v18

    :goto_3
    if-ltz v0, :cond_8

    .line 829
    aget-object v4, v10, v0

    aget-wide v5, v4, v0

    sub-double v5, v5, v24

    move v4, v3

    :goto_4
    if-gt v4, v8, :cond_2

    .line 832
    aget-object v18, v10, v0

    aget-wide v22, v18, v4

    aget-object v18, v10, v4

    aget-wide v30, v18, v8

    mul-double v22, v22, v30

    add-double v13, v13, v22

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 834
    :cond_2
    iget-object v4, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v30, v4, v0

    const-wide/16 v32, 0x0

    const-wide v34, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v30 .. v35}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-gez v4, :cond_3

    move v15, v0

    move-wide/from16 v20, v5

    move-object/from16 p1, v11

    move/from16 v30, v12

    move-wide v1, v13

    goto/16 :goto_8

    .line 839
    :cond_3
    iget-object v3, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    move-object/from16 p1, v11

    move/from16 v30, v12

    aget-wide v11, v3, v0

    const-wide/16 v3, 0x0

    invoke-static {v11, v12, v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v11

    if-eqz v11, :cond_5

    cmpl-double v11, v5, v3

    if-eqz v11, :cond_4

    .line 841
    aget-object v3, v10, v0

    neg-double v11, v13

    div-double/2addr v11, v5

    aput-wide v11, v3, v8

    goto :goto_5

    .line 843
    :cond_4
    aget-object v3, v10, v0

    neg-double v4, v13

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v11, v11, v16

    div-double/2addr v4, v11

    aput-wide v4, v3, v8

    :goto_5
    move v15, v0

    goto :goto_6

    .line 847
    :cond_5
    aget-object v3, v10, v0

    add-int/lit8 v4, v0, 0x1

    aget-wide v11, v3, v4

    .line 848
    aget-object v18, v10, v4

    aget-wide v22, v18, v0

    .line 849
    iget-object v15, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v18, v15, v0

    sub-double v32, v18, v24

    sub-double v18, v18, v24

    mul-double v32, v32, v18

    iget-object v15, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v18, v15, v0

    mul-double v18, v18, v18

    add-double v32, v32, v18

    mul-double v18, v11, v1

    mul-double v34, v20, v13

    sub-double v18, v18, v34

    div-double v18, v18, v32

    .line 852
    aput-wide v18, v3, v8

    .line 853
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v34

    cmpl-double v3, v32, v34

    if-lez v3, :cond_6

    .line 854
    aget-object v3, v10, v4

    move v15, v0

    move-wide/from16 v32, v1

    neg-double v0, v13

    mul-double v5, v5, v18

    sub-double/2addr v0, v5

    div-double/2addr v0, v11

    aput-wide v0, v3, v8

    move-wide/from16 v1, v32

    goto :goto_6

    :cond_6
    move v15, v0

    move-wide/from16 v32, v1

    .line 856
    aget-object v0, v10, v4

    neg-double v3, v1

    mul-double v22, v22, v18

    sub-double v3, v3, v22

    div-double v3, v3, v20

    aput-wide v3, v0, v8

    .line 861
    :goto_6
    aget-object v0, v10, v15

    aget-wide v3, v0, v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 862
    sget-wide v5, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    cmpl-double v0, v5, v26

    if-lez v0, :cond_7

    move v0, v15

    :goto_7
    if-gt v0, v8, :cond_7

    .line 864
    aget-object v5, v10, v0

    aget-wide v11, v5, v8

    div-double/2addr v11, v3

    aput-wide v11, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    move v3, v15

    :goto_8
    add-int/lit8 v0, v15, -0x1

    move-object/from16 v11, p1

    move-wide/from16 v22, v13

    move/from16 v12, v30

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 p1, v11

    move/from16 v30, v12

    move-wide/from16 v18, v1

    goto/16 :goto_f

    :cond_9
    move-object/from16 p1, v11

    move/from16 v30, v12

    move-wide v0, v13

    cmpg-double v2, v5, v0

    if-gez v2, :cond_13

    add-int/lit8 v11, v8, -0x1

    .line 874
    aget-object v0, v10, v8

    aget-wide v1, v0, v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    aget-object v2, v10, v11

    aget-wide v3, v2, v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    .line 875
    aget-object v0, v10, v11

    aget-object v1, v10, v8

    aget-wide v2, v1, v11

    div-double v2, v5, v2

    aput-wide v2, v0, v11

    .line 876
    aget-wide v2, v1, v8

    sub-double v2, v2, v24

    neg-double v2, v2

    aget-wide v12, v1, v11

    div-double/2addr v2, v12

    aput-wide v2, v0, v8

    move-wide v14, v5

    move v12, v7

    move v13, v8

    goto :goto_9

    .line 878
    :cond_a
    aget-object v0, v10, v11

    aget-wide v1, v0, v8

    neg-double v3, v1

    aget-wide v1, v0, v11

    sub-double v12, v1, v24

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-wide v14, v5

    move-wide v5, v12

    move v12, v7

    move v13, v8

    move-wide v7, v14

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    .line 880
    aget-object v1, v10, v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    .line 881
    aget-object v1, v10, v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v13

    .line 884
    :goto_9
    aget-object v0, v10, v13

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v11

    .line 885
    aput-wide v26, v0, v13

    add-int/lit8 v8, v13, -0x2

    move v0, v11

    move-wide/from16 v5, v22

    move-wide/from16 v46, v18

    move/from16 v18, v8

    move-wide/from16 v7, v46

    :goto_a
    if-ltz v18, :cond_12

    move/from16 v19, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :goto_b
    if-gt v0, v13, :cond_b

    .line 891
    aget-object v22, v10, v18

    aget-wide v32, v22, v0

    aget-object v22, v10, v0

    aget-wide v34, v22, v11

    mul-double v34, v34, v32

    add-double v3, v3, v34

    .line 892
    aget-wide v34, v22, v13

    mul-double v32, v32, v34

    add-double v1, v1, v32

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 894
    :cond_b
    aget-object v0, v10, v18

    aget-wide v22, v0, v18

    sub-double v22, v22, v24

    .line 896
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v32, v0, v18

    const-wide/16 v34, 0x0

    const-wide v36, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v32 .. v37}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v0

    if-gez v0, :cond_c

    move-wide v5, v3

    move/from16 v36, v12

    move v7, v13

    move/from16 v0, v19

    move-wide/from16 v20, v22

    goto/16 :goto_e

    .line 902
    :cond_c
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    move-wide/from16 v32, v5

    aget-wide v5, v0, v18

    move-wide/from16 v34, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_d

    neg-double v3, v3

    neg-double v5, v1

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide/from16 v7, v32

    move-wide/from16 v5, v22

    move-wide/from16 v40, v7

    move-wide/from16 v38, v34

    move-wide v7, v14

    .line 903
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    .line 904
    aget-object v1, v10, v18

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    .line 905
    aget-object v1, v10, v18

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v13

    move/from16 v36, v12

    move/from16 v37, v13

    move-wide/from16 v22, v38

    move-wide/from16 v12, v40

    goto/16 :goto_c

    :cond_d
    move-wide/from16 v40, v32

    move-wide/from16 v38, v34

    .line 908
    aget-object v0, v10, v18

    add-int/lit8 v19, v18, 0x1

    aget-wide v32, v0, v19

    .line 909
    aget-object v0, v10, v19

    aget-wide v34, v0, v18

    .line 910
    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v5, v0, v18

    sub-double v7, v5, v24

    sub-double v36, v5, v24

    mul-double v7, v7, v36

    iget-object v0, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v36, v0, v18

    mul-double v36, v36, v36

    add-double v7, v7, v36

    mul-double v36, v14, v14

    sub-double v7, v7, v36

    sub-double v5, v5, v24

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v36

    mul-double/2addr v5, v14

    move/from16 v36, v12

    move/from16 v37, v13

    const-wide/16 v12, 0x0

    .line 913
    invoke-static {v7, v8, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 914
    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double v7, v7, v16

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    add-double v28, v28, v42

    mul-double v7, v7, v28

    :cond_e
    move-wide/from16 v12, v40

    mul-double v40, v32, v12

    mul-double v42, v20, v3

    sub-double v40, v40, v42

    mul-double v42, v14, v1

    add-double v40, v40, v42

    move-wide/from16 v42, v12

    move-wide/from16 v12, v38

    mul-double v38, v32, v12

    mul-double v44, v20, v1

    sub-double v38, v38, v44

    mul-double v44, v14, v3

    sub-double v38, v38, v44

    move-object/from16 v0, p0

    move-wide/from16 v44, v12

    move-wide v12, v1

    move-wide/from16 v1, v40

    move-wide/from16 v40, v12

    move-wide v12, v3

    move-wide/from16 v3, v38

    move-wide/from16 v38, v5

    move-wide v5, v7

    move-wide/from16 v7, v38

    .line 918
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    .line 920
    aget-object v1, v10, v18

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    .line 921
    aget-object v1, v10, v18

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v37

    .line 923
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    .line 924
    aget-object v0, v10, v19

    neg-double v1, v12

    aget-object v3, v10, v18

    aget-wide v4, v3, v11

    mul-double v4, v4, v22

    sub-double/2addr v1, v4

    aget-wide v4, v3, v37

    mul-double v5, v14, v4

    add-double/2addr v1, v5

    div-double v1, v1, v32

    aput-wide v1, v0, v11

    move-wide/from16 v1, v40

    neg-double v1, v1

    .line 926
    aget-wide v4, v3, v37

    mul-double v22, v22, v4

    sub-double v1, v1, v22

    aget-wide v4, v3, v11

    mul-double v5, v14, v4

    sub-double/2addr v1, v5

    div-double v1, v1, v32

    aput-wide v1, v0, v37

    move-wide/from16 v12, v42

    move-wide/from16 v22, v44

    goto :goto_c

    :cond_f
    move-wide/from16 v12, v42

    neg-double v0, v12

    .line 929
    aget-object v2, v10, v18

    aget-wide v3, v2, v11

    mul-double v3, v3, v34

    sub-double v3, v0, v3

    move-wide/from16 v7, v44

    neg-double v0, v7

    aget-wide v5, v2, v37

    mul-double v34, v34, v5

    sub-double v5, v0, v34

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide/from16 v5, v20

    move-wide/from16 v22, v7

    move-wide v7, v14

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/linear/EigenDecomposition;->cdiv(DDDD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    .line 931
    aget-object v1, v10, v19

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    aput-wide v2, v1, v11

    .line 932
    aget-object v1, v10, v19

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    aput-wide v2, v1, v37

    .line 937
    :goto_c
    aget-object v0, v10, v18

    aget-wide v1, v0, v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    aget-object v2, v10, v18

    aget-wide v3, v2, v37

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 939
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    cmpl-double v2, v2, v26

    if-lez v2, :cond_10

    move/from16 v2, v18

    move/from16 v7, v37

    :goto_d
    if-gt v2, v7, :cond_11

    .line 941
    aget-object v3, v10, v2

    aget-wide v4, v3, v11

    div-double/2addr v4, v0

    aput-wide v4, v3, v11

    .line 942
    aget-wide v4, v3, v7

    div-double/2addr v4, v0

    aput-wide v4, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_10
    move/from16 v7, v37

    :cond_11
    move-wide v5, v12

    move/from16 v0, v18

    move-wide/from16 v1, v22

    :goto_e
    add-int/lit8 v18, v18, -0x1

    move v13, v7

    move/from16 v12, v36

    move-wide v7, v1

    goto/16 :goto_a

    :cond_12
    move-wide/from16 v22, v7

    move/from16 v36, v12

    move v7, v13

    move-wide v12, v5

    move-wide/from16 v18, v22

    move-wide/from16 v22, v12

    goto :goto_10

    :cond_13
    :goto_f
    move/from16 v36, v7

    move v7, v8

    :goto_10
    add-int/lit8 v8, v7, -0x1

    move-object/from16 v11, p1

    move/from16 v12, v30

    move/from16 v7, v36

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_14
    move/from16 v36, v7

    move-object/from16 p1, v11

    move/from16 v30, v12

    :goto_11
    if-ltz v7, :cond_17

    move/from16 v12, v36

    const/4 v0, 0x0

    :goto_12
    if-gt v0, v12, :cond_16

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    .line 954
    :goto_13
    invoke-static {v7, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    if-gt v1, v2, :cond_15

    .line 955
    aget-object v2, p1, v0

    aget-wide v5, v2, v1

    aget-object v2, v10, v1

    aget-wide v13, v2, v7

    mul-double/2addr v5, v13

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 957
    :cond_15
    aget-object v1, p1, v0

    aput-wide v3, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_16
    add-int/lit8 v7, v7, -0x1

    move/from16 v36, v12

    goto :goto_11

    :cond_17
    move/from16 v0, v30

    .line 961
    new-array v1, v0, [Lorg/apache/commons/math3/linear/ArrayRealVector;

    iput-object v1, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 962
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_19

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_18

    .line 965
    aget-object v4, p1, v3

    aget-wide v5, v4, v2

    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 967
    :cond_18
    iget-object v3, v9, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_19
    return-void

    .line 811
    :cond_1a
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private transformToSchur(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/SchurTransformer;
    .locals 17

    move-object/from16 v0, p0

    .line 750
    new-instance v1, Lorg/apache/commons/math3/linear/SchurTransformer;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/SchurTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 751
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/SchurTransformer;->getT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 753
    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    .line 754
    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    const/4 v3, 0x0

    .line 756
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 757
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v5, v2, v4

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x0

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 761
    :cond_0
    aget-object v5, v2, v4

    aget-wide v6, v5, v4

    .line 762
    aget-object v8, v2, v3

    aget-wide v9, v8, v3

    sub-double/2addr v9, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v11

    mul-double v11, v9, v9

    .line 763
    aget-wide v13, v5, v3

    aget-wide v15, v8, v4

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 764
    iget-object v5, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    add-double/2addr v6, v9

    aput-wide v6, v5, v3

    .line 765
    iget-object v8, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aput-wide v11, v8, v3

    .line 766
    aput-wide v6, v5, v4

    neg-double v5, v11

    .line 767
    aput-wide v5, v8, v4

    move v3, v4

    goto :goto_2

    .line 759
    :cond_1
    :goto_1
    iget-object v4, v0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-object v5, v2, v3

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private transformToTridiagonal(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    .line 581
    new-instance v0, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    .line 582
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getMainDiagonalRef()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->main:[D

    .line 583
    iget-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->transformer:Lorg/apache/commons/math3/linear/TriDiagonalTransformer;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/TriDiagonalTransformer;->getSecondaryDiagonalRef()[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->secondary:[D

    return-void
.end method


# virtual methods
.method public getD()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 227
    aget-wide v3, v1, v0

    const-wide/16 v5, 0x0

    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v3, v0

    invoke-interface {v1, v0, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    goto :goto_1

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-gez v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v4, v3, v0

    invoke-interface {v1, v0, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedD:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getDeterminant()D
    .locals 7

    .line 357
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    mul-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public getImagEigenvalue(I)D
    .locals 3

    .line 336
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getImagEigenvalues()[D
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getRealEigenvalue(I)D
    .locals 3

    .line 305
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getRealEigenvalues()[D
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->hasComplexEigenvalues()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition$Solver;-><init>([D[D[Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/EigenDecomposition$1;)V

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 374
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->isSymmetric:Z

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 379
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->realEigenvalues:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 380
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    if-lez v2, :cond_0

    .line 384
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0

    .line 386
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    .line 390
    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    .line 375
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 198
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 200
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    array-length v0, v0

    .line 251
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 253
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->eigenvectors:[Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public hasComplexEigenvalues()Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/EigenDecomposition;->imagEigenvalues:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 272
    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
