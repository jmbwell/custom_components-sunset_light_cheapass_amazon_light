.class Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;
.super Ljava/lang/Object;
.source "CholeskyDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private final lTData:[[D


# direct methods
.method private constructor <init>([[D)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    return-void
.end method

.method synthetic constructor <init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;-><init>([[D)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17

    move-object/from16 v0, p0

    .line 257
    iget-object v1, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v1, v1

    .line 258
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 262
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 263
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    if-ge v5, v1, :cond_3

    .line 267
    iget-object v6, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v6, v6, v5

    .line 268
    aget-wide v7, v6, v5

    .line 269
    aget-object v9, v3, v5

    move v10, v4

    :goto_0
    if-ge v10, v2, :cond_1

    .line 271
    aget-wide v11, v9, v10

    div-double/2addr v11, v7

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_0

    .line 274
    aget-object v8, v3, v7

    .line 275
    aget-wide v10, v6, v7

    move v12, v4

    :goto_2
    if-ge v12, v2, :cond_2

    .line 277
    aget-wide v13, v8, v12

    aget-wide v15, v9, v12

    mul-double/2addr v15, v10

    sub-double/2addr v13, v15

    aput-wide v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_7

    .line 284
    iget-object v5, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v1

    .line 285
    aget-object v5, v3, v1

    move v8, v4

    :goto_4
    if-ge v8, v2, :cond_4

    .line 287
    aget-wide v9, v5, v8

    div-double/2addr v9, v6

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    move v6, v4

    :goto_5
    if-ge v6, v1, :cond_6

    .line 290
    aget-object v7, v3, v6

    .line 291
    iget-object v8, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v8, v8, v6

    aget-wide v9, v8, v1

    move v8, v4

    :goto_6
    if-ge v8, v2, :cond_5

    .line 293
    aget-wide v11, v7, v8

    aget-wide v13, v5, v8

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    aput-wide v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 298
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    return-object v1

    .line 259
    :cond_8
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 11

    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    array-length v0, v0

    .line 227
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 231
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    .line 235
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v3, v3, v2

    .line 236
    aget-wide v4, p1, v2

    aget-wide v6, v3, v2

    div-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    :goto_0
    if-ge v6, v0, :cond_0

    .line 239
    aget-wide v7, p1, v6

    aget-wide v9, v3, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 245
    aget-wide v2, p1, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v4, v4, v0

    aget-wide v5, v4, v0

    div-double/2addr v2, v5

    aput-wide v2, p1, v0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_2

    .line 248
    aget-wide v5, p1, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$Solver;->lTData:[[D

    aget-object v7, v7, v4

    aget-wide v8, v7, v0

    mul-double/2addr v8, v2

    sub-double/2addr v5, v8

    aput-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 252
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0

    .line 228
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method
