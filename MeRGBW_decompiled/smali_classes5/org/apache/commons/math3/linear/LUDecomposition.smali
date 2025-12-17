.class public Lorg/apache/commons/math3/linear/LUDecomposition;
.super Ljava/lang/Object;
.source "LUDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/LUDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOO_SMALL:D = 1.0E-11


# instance fields
.field private cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private even:Z

.field private final lu:[[D

.field private final pivot:[I

.field private singular:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 18

    move-object/from16 v0, p0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 92
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    .line 93
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    const/4 v2, 0x0

    .line 94
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 95
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 96
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 100
    iget-object v4, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 102
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 103
    iput-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_a

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    .line 110
    iget-object v6, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v6, v6, v5

    .line 111
    aget-wide v7, v6, v4

    move v9, v2

    :goto_3
    if-ge v9, v5, :cond_1

    .line 113
    aget-wide v10, v6, v9

    iget-object v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v12, v12, v9

    aget-wide v13, v12, v4

    mul-double/2addr v10, v13

    sub-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 115
    :cond_1
    aput-wide v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v7, v4

    move v8, v7

    :goto_4
    if-ge v7, v1, :cond_5

    .line 122
    iget-object v9, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v9, v9, v7

    .line 123
    aget-wide v10, v9, v4

    move v12, v2

    :goto_5
    if-ge v12, v4, :cond_3

    .line 125
    aget-wide v13, v9, v12

    iget-object v15, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v15, v15, v12

    aget-wide v16, v15, v4

    mul-double v13, v13, v16

    sub-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 127
    :cond_3
    aput-wide v10, v9, v4

    .line 130
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpl-double v9, v12, v5

    if-lez v9, :cond_4

    .line 131
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    move v8, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 137
    :cond_5
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v5, v5, v8

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p2

    if-gez v5, :cond_6

    .line 138
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    return-void

    :cond_6
    if-eq v8, v4, :cond_8

    .line 145
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v6, v5, v8

    .line 146
    aget-object v5, v5, v4

    move v7, v2

    :goto_6
    if-ge v7, v1, :cond_7

    .line 148
    aget-wide v9, v6, v7

    .line 149
    aget-wide v11, v5, v7

    aput-wide v11, v6, v7

    .line 150
    aput-wide v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 152
    :cond_7
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v6, v5, v8

    .line 153
    aget v7, v5, v4

    aput v7, v5, v8

    .line 154
    aput v6, v5, v4

    .line 155
    iget-boolean v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    xor-int/2addr v5, v3

    iput-boolean v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    .line 159
    :cond_8
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v4

    add-int/lit8 v5, v4, 0x1

    move v8, v5

    :goto_7
    if-ge v8, v1, :cond_9

    .line 161
    iget-object v9, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v9, v9, v8

    aget-wide v10, v9, v4

    div-double/2addr v10, v6

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move v4, v5

    goto/16 :goto_1

    :cond_a
    return-void

    .line 87
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getDeterminant()D
    .locals 7

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 243
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->even:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 245
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v4, v4, v3

    aget-wide v5, v4, v3

    mul-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 174
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 176
    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v3, v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    .line 178
    iget-object v5, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v6, v3, v4

    invoke-interface {v5, v2, v4, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3, v2, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedL:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 217
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPivot()[I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 5

    .line 257
    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/LUDecomposition$Solver;-><init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->singular:Z

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->pivot:[I

    array-length v0, v0

    .line 194
    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->lu:[[D

    aget-object v2, v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    .line 198
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v5, v2, v3

    invoke-interface {v4, v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
