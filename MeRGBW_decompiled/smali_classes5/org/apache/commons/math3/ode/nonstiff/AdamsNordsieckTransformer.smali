.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
.super Ljava/lang/Object;
.source "AdamsNordsieckTransformer.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c1:[D

.field private final update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 7

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 154
    new-instance v1, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v1

    .line 157
    new-array v2, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 158
    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 165
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 166
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 168
    aget-object v5, v0, v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 170
    :cond_0
    new-array v3, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v3, v0, v4

    .line 171
    sget-object v5, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 177
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    :goto_1
    if-ge v4, p1, :cond_1

    .line 179
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private buildP(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 224
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/fraction/BigFraction;

    move v0, v1

    .line 226
    :cond_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 228
    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    neg-int v3, v0

    move v4, v1

    move v5, v3

    .line 231
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 232
    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v7, v4, 0x2

    mul-int/2addr v7, v5

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v6, v2, v4

    mul-int/2addr v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public static getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    .locals 2

    .line 190
    sget-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;-><init>(I)V

    .line 194
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNSteps()I
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v0, v0

    return v0
.end method

.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 20

    move-object/from16 v0, p4

    .line 258
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    array-length v5, v5

    new-array v6, v3, [I

    aput v5, v6, v2

    const/4 v5, 0x0

    aput v1, v6, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 259
    array-length v6, v0

    sub-int/2addr v6, v2

    mul-int/2addr v6, v3

    aget-object v7, v0, v5

    array-length v7, v7

    new-array v3, v3, [I

    aput v7, v3, v2

    aput v6, v3, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 260
    aget-object v6, v0, v5

    .line 261
    aget-object v7, p5, v5

    move v8, v2

    .line 262
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_2

    .line 264
    aget-wide v9, p3, v8

    aget-wide v11, p3, v5

    sub-double/2addr v9, v11

    div-double v11, v9, p1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v13, v13, p1

    mul-int/lit8 v15, v8, 0x2

    add-int/lit8 v16, v15, -0x2

    .line 270
    aget-object v5, v1, v16

    sub-int/2addr v15, v2

    .line 271
    aget-object v17, v1, v15

    const/4 v2, 0x0

    .line 272
    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_0

    mul-double/2addr v13, v11

    mul-double v18, v9, v13

    .line 274
    aput-wide v18, v5, v2

    add-int/lit8 v4, v2, 0x2

    move-object/from16 v18, v5

    int-to-double v4, v4

    mul-double/2addr v4, v13

    .line 275
    aput-wide v4, v17, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v18

    goto :goto_1

    .line 279
    :cond_0
    aget-object v2, v0, v8

    .line 280
    aget-object v4, p5, v8

    .line 281
    aget-object v5, v3, v16

    .line 282
    aget-object v11, v3, v15

    const/4 v12, 0x0

    .line 283
    :goto_2
    array-length v13, v2

    if-ge v12, v13, :cond_1

    .line 284
    aget-wide v13, v2, v12

    aget-wide v15, v6, v12

    sub-double/2addr v13, v15

    aget-wide v15, v7, v12

    mul-double/2addr v15, v9

    sub-double/2addr v13, v15

    aput-wide v13, v5, v12

    .line 285
    aget-wide v13, v4, v12

    aget-wide v15, v7, v12

    sub-double/2addr v13, v15

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p0

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/QRDecomposition;

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 294
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 295
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v1
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->update:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 12

    .line 329
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 330
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 331
    aget-object v2, p3, v1

    .line 332
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c1:[D

    aget-wide v4, v3, v1

    move v3, v0

    .line 333
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 334
    aget-wide v6, v2, v3

    aget-wide v8, p1, v3

    aget-wide v10, p2, v3

    sub-double/2addr v8, v10

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
