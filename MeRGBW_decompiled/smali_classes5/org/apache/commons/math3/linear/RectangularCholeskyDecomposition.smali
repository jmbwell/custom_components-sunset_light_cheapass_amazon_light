.class public Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
.super Ljava/lang/Object;
.source "RectangularCholeskyDecomposition.java"


# instance fields
.field private rank:I

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v5, p2

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 85
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    const/4 v3, 0x2

    .line 86
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v7, 0x0

    aput v1, v3, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 88
    new-array v8, v1, [I

    move v9, v7

    :goto_0
    if-ge v9, v1, :cond_0

    .line 90
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v4

    move v10, v7

    :goto_1
    if-eqz v9, :cond_b

    add-int/lit8 v9, v10, 0x1

    move v11, v9

    move v12, v10

    :goto_2
    if-ge v11, v1, :cond_2

    .line 99
    aget v13, v8, v11

    .line 100
    aget v14, v8, v12

    .line 101
    aget-object v15, v2, v13

    aget-wide v16, v15, v13

    aget-object v13, v2, v14

    aget-wide v14, v13, v14

    cmpl-double v13, v16, v14

    if-lez v13, :cond_1

    move v12, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    if-eq v12, v10, :cond_3

    .line 109
    aget v11, v8, v10

    .line 110
    aget v13, v8, v12

    aput v13, v8, v10

    .line 111
    aput v11, v8, v12

    .line 112
    aget-object v11, v3, v10

    .line 113
    aget-object v13, v3, v12

    aput-object v13, v3, v10

    .line 114
    aput-object v11, v3, v12

    .line 118
    :cond_3
    aget v11, v8, v10

    .line 119
    aget-object v12, v2, v11

    aget-wide v13, v12, v11

    cmpg-double v12, v13, v5

    if-gtz v12, :cond_7

    if-eqz v10, :cond_6

    move v9, v10

    :goto_3
    if-ge v9, v1, :cond_5

    .line 127
    aget v11, v8, v9

    aget-object v12, v2, v11

    aget-wide v11, v12, v11

    neg-double v13, v5

    cmpg-double v11, v11, v13

    if-ltz v11, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 130
    :cond_4
    new-instance v7, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget v1, v8, v9

    aget-object v2, v2, v1

    aget-wide v3, v2, v1

    move-object v1, v7

    move-wide v2, v3

    move v4, v9

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v7

    :cond_5
    move v9, v7

    goto :goto_7

    .line 122
    :cond_6
    new-instance v7, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-object v1, v2, v11

    aget-wide v2, v1, v11

    move-object v1, v7

    move v4, v11

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v7

    .line 141
    :cond_7
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 142
    aget-object v14, v3, v10

    aput-wide v12, v14, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    .line 144
    aget-object v16, v2, v11

    aget-wide v17, v16, v11

    div-double v14, v14, v17

    move v4, v9

    :goto_4
    if-ge v4, v1, :cond_9

    .line 146
    aget v16, v8, v4

    .line 147
    aget-object v17, v2, v16

    aget-wide v18, v17, v11

    mul-double v18, v18, v12

    .line 148
    aget-object v20, v3, v4

    aput-wide v18, v20, v10

    .line 149
    aget-wide v20, v17, v16

    aget-wide v22, v17, v11

    mul-double v22, v22, v22

    mul-double v22, v22, v14

    sub-double v20, v20, v22

    aput-wide v20, v17, v16

    move v7, v9

    :goto_5
    if-ge v7, v4, :cond_8

    .line 151
    aget v20, v8, v7

    .line 152
    aget-object v21, v2, v16

    aget-wide v22, v21, v20

    aget-object v24, v3, v7

    aget-wide v25, v24, v10

    mul-double v25, v25, v18

    sub-double v22, v22, v25

    .line 153
    aput-wide v22, v21, v20

    .line 154
    aget-object v20, v2, v20

    aput-wide v22, v20, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    if-ge v9, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    move v10, v9

    move v9, v4

    :goto_7
    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 164
    :cond_b
    iput v10, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    .line 165
    invoke-static {v1, v10}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_d

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v10, :cond_c

    .line 168
    iget-object v5, v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    aget v6, v8, v2

    aget-object v7, v3, v2

    aget-wide v11, v7, v4

    invoke-interface {v5, v6, v4, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->rank:I

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
