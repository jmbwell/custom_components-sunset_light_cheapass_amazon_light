.class public Lorg/apache/commons/math3/linear/QRDecomposition;
.super Ljava/lang/Object;
.source "QRDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/QRDecomposition$Solver;
    }
.end annotation


# instance fields
.field private cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

.field private qrt:[[D

.field private rDiag:[D

.field private final threshold:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    .line 93
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p2

    .line 94
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p3

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    .line 96
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 98
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 102
    iget-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method


# virtual methods
.method protected decompose([[D)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 111
    :goto_0
    array-length v2, p1

    aget-object v3, p1, v0

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 277
    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    .line 278
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v2

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 280
    invoke-static {v6, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 281
    aget-object v6, v3, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v7, v7, v5

    aget-wide v8, v7, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v10, v7, v5

    neg-double v10, v10

    div-double/2addr v8, v10

    aput-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 288
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedH:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQ:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    move-object/from16 v0, p0

    .line 226
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    .line 229
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 230
    aget-object v1, v1, v3

    array-length v1, v1

    const/4 v4, 0x2

    .line 231
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    aput v1, v4, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    add-int/lit8 v4, v1, -0x1

    .line 238
    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-lt v4, v6, :cond_0

    .line 239
    aget-object v6, v3, v4

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_4

    .line 243
    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v4, v4, v2

    .line 244
    aget-object v5, v3, v2

    aput-wide v7, v5, v2

    .line 245
    aget-wide v5, v4, v2

    const-wide/16 v9, 0x0

    cmpl-double v5, v5, v9

    if-eqz v5, :cond_3

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_3

    move v6, v2

    move-wide v11, v9

    :goto_3
    if-ge v6, v1, :cond_1

    .line 249
    aget-object v13, v3, v5

    aget-wide v14, v13, v6

    aget-wide v16, v4, v6

    mul-double v14, v14, v16

    sub-double/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 251
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v13, v6, v2

    aget-wide v15, v4, v2

    mul-double/2addr v13, v15

    div-double/2addr v11, v13

    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_2

    .line 254
    aget-object v13, v3, v5

    aget-wide v14, v13, v6

    neg-double v7, v11

    aget-wide v18, v4, v6

    mul-double v7, v7, v18

    add-double/2addr v14, v7

    aput-wide v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 259
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 263
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedQT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getR()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 188
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 192
    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    .line 193
    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 195
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_1

    .line 196
    aget-object v3, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aget-wide v5, v4, v0

    aput-wide v5, v3, v0

    add-int/lit8 v3, v0, 0x1

    :goto_1
    if-ge v3, v1, :cond_0

    .line 198
    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v0

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 205
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->cachedR:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 7

    .line 304
    new-instance v6, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->qrt:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->threshold:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/QRDecomposition$Solver;-><init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$1;)V

    return-object v6
.end method

.method protected performHouseholderReflection(I[[D)V
    .locals 16

    move-object/from16 v0, p2

    .line 123
    aget-object v1, v0, p1

    const-wide/16 v2, 0x0

    move/from16 v4, p1

    move-wide v5, v2

    .line 133
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_0

    .line 134
    aget-wide v7, v1, v4

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_0
    aget-wide v7, v1, p1

    cmpl-double v4, v7, v2

    if-lez v4, :cond_1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    neg-double v4, v4

    goto :goto_1

    :cond_1
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    :goto_1
    move-object/from16 v6, p0

    .line 138
    iget-object v7, v6, Lorg/apache/commons/math3/linear/QRDecomposition;->rDiag:[D

    aput-wide v4, v7, p1

    cmpl-double v7, v4, v2

    if-eqz v7, :cond_4

    .line 150
    aget-wide v7, v1, p1

    sub-double/2addr v7, v4

    aput-wide v7, v1, p1

    add-int/lit8 v7, p1, 0x1

    .line 164
    :goto_2
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 165
    aget-object v8, v0, v7

    move/from16 v9, p1

    move-wide v10, v2

    .line 167
    :goto_3
    array-length v12, v8

    if-ge v9, v12, :cond_2

    .line 168
    aget-wide v12, v8, v9

    aget-wide v14, v1, v9

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 170
    :cond_2
    aget-wide v12, v1, p1

    mul-double/2addr v12, v4

    div-double/2addr v10, v12

    move/from16 v9, p1

    .line 173
    :goto_4
    array-length v12, v8

    if-ge v9, v12, :cond_3

    .line 174
    aget-wide v12, v8, v9

    aget-wide v14, v1, v9

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    aput-wide v12, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
