.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "BOBYQAOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer$PathIsExploredException;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_RADIUS:D = 10.0

.field public static final DEFAULT_STOPPING_RADIUS:D = 1.0E-8

.field private static final HALF:D = 0.5

.field public static final MINIMUM_PROBLEM_DIMENSION:I = 0x2

.field private static final MINUS_ONE:D = -1.0

.field private static final ONE:D = 1.0

.field private static final ONE_OVER_A_THOUSAND:D = 0.001

.field private static final ONE_OVER_EIGHT:D = 0.125

.field private static final ONE_OVER_FOUR:D = 0.25

.field private static final ONE_OVER_TEN:D = 0.1

.field private static final SIXTEEN:D = 16.0

.field private static final TEN:D = 10.0

.field private static final TWO:D = 2.0

.field private static final TWO_HUNDRED_FIFTY:D = 250.0

.field private static final ZERO:D


# instance fields
.field private alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private boundDifference:[D

.field private currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private initialTrustRegionRadius:D

.field private interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private isMinimize:Z

.field private lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final numberOfInterpolationPoints:I

.field private originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private final stoppingTrustRegionRadius:D

.field private trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private trustRegionCenterInterpolationPointIndex:I

.field private trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

.field private zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move v1, p1

    .line 207
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 224
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 225
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 226
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->caller(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private altmov(ID)[D
    .locals 50

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1257
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1259
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 1260
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1262
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1263
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1265
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 1266
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v9, v3, :cond_0

    .line 1269
    invoke-virtual {v5, v9, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    sub-int v9, v3, v2

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_2

    .line 1272
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_1

    .line 1274
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v8, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v19

    mul-double v19, v19, v14

    add-double v10, v16, v19

    invoke-virtual {v5, v8, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    goto :goto_1

    .line 1277
    :cond_2
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v8, v10

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_3

    .line 1283
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v1, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-virtual {v4, v14, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v14, v14, 0x1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_6

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    :goto_5
    if-ge v11, v2, :cond_4

    move-object/from16 v19, v7

    .line 1288
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v14, v14, v23

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v19

    goto :goto_5

    :cond_4
    move-object/from16 v19, v7

    .line 1290
    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v14, v14, v23

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v2, :cond_5

    .line 1292
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v25, v25, v14

    move-wide/from16 v27, v14

    add-double v14, v23, v25

    invoke-virtual {v4, v7, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v14, v27

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v19

    goto :goto_4

    :cond_6
    move-object/from16 v19, v7

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v27, v10

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    :goto_7
    if-ge v7, v3, :cond_14

    .line 1308
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v7, v10, :cond_7

    move/from16 v35, v3

    move-object/from16 v39, v4

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v33, v8

    goto/16 :goto_e

    :cond_7
    const/4 v10, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    :goto_8
    if-ge v10, v2, :cond_8

    .line 1314
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v7, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v33

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    sub-double v33, v33, v35

    .line 1315
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    mul-double v35, v35, v33

    add-double v31, v31, v35

    mul-double v33, v33, v33

    add-double v27, v27, v33

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1318
    :cond_8
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v10, p2, v10

    move-wide/from16 v33, v8

    neg-double v8, v10

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v35, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1322
    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    move-wide/from16 v8, v35

    const/16 v36, 0x0

    const/16 v38, 0x0

    move/from16 v35, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_d

    move-object/from16 v39, v4

    .line 1327
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v40

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v40, v40, v42

    const-wide/16 v21, 0x0

    cmpl-double v4, v40, v21

    if-lez v4, :cond_a

    mul-double v42, v8, v40

    .line 1329
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v4, v42, v44

    if-gez v4, :cond_9

    .line 1330
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v8, v8, v42

    div-double v8, v8, v40

    neg-int v4, v3

    const/16 v18, 0x1

    add-int/lit8 v36, v4, -0x1

    :cond_9
    mul-double v42, v10, v40

    .line 1333
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v4, v42, v44

    if-lez v4, :cond_c

    .line 1335
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v10, v10, v42

    div-double v10, v10, v40

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    add-int/lit8 v4, v3, 0x1

    :goto_a
    move/from16 v38, v4

    goto :goto_b

    :cond_a
    const-wide/16 v21, 0x0

    cmpg-double v4, v40, v21

    if-gez v4, :cond_c

    mul-double v42, v8, v40

    .line 1340
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpl-double v4, v42, v44

    if-lez v4, :cond_b

    .line 1341
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v8, v8, v42

    div-double v8, v8, v40

    add-int/lit8 v36, v3, 0x1

    :cond_b
    mul-double v42, v10, v40

    .line 1344
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v44

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v46

    sub-double v44, v44, v46

    cmpg-double v4, v42, v44

    if-gez v4, :cond_c

    .line 1346
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    sub-double v10, v10, v42

    div-double v10, v10, v40

    invoke-static {v5, v6, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    neg-int v4, v3

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v39

    goto/16 :goto_9

    :cond_d
    move-object/from16 v39, v4

    if-ne v7, v1, :cond_f

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v31, v3

    mul-double v3, v8, v5

    sub-double v40, v31, v3

    mul-double v40, v40, v8

    mul-double v42, v10, v5

    sub-double v44, v31, v42

    mul-double v44, v44, v10

    .line 1363
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v48

    cmpl-double v46, v46, v48

    if-lez v46, :cond_e

    move-wide v8, v10

    move/from16 v36, v38

    move-wide/from16 v40, v44

    :cond_e
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v31, v31, v10

    sub-double v3, v31, v3

    sub-double v10, v31, v42

    mul-double/2addr v3, v10

    const-wide/16 v10, 0x0

    cmpg-double v3, v3, v10

    if-gez v3, :cond_12

    mul-double v3, v31, v31

    div-double/2addr v3, v5

    .line 1373
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpl-double v10, v10, v42

    if-lez v10, :cond_12

    div-double v8, v31, v5

    move-wide/from16 v40, v3

    const/16 v36, 0x0

    goto :goto_d

    :cond_f
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v8

    mul-double/2addr v5, v8

    sub-double v40, v3, v10

    mul-double v40, v40, v10

    .line 1385
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpl-double v3, v3, v42

    if-lez v3, :cond_10

    move-wide v8, v10

    move/from16 v36, v38

    move-wide/from16 v5, v40

    :cond_10
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v3

    if-lez v10, :cond_11

    .line 1390
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v3, v10

    if-gez v3, :cond_11

    move-wide v5, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/16 v36, 0x0

    goto :goto_c

    :cond_11
    move-wide v10, v8

    :goto_c
    mul-double v40, v5, v31

    move-wide v8, v10

    :cond_12
    :goto_d
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v10, v3, v8

    mul-double/2addr v10, v8

    mul-double v10, v10, v27

    mul-double v40, v40, v40

    mul-double v3, v12, v10

    mul-double/2addr v3, v10

    add-double v3, v40, v3

    mul-double v40, v40, v3

    cmpl-double v3, v40, v25

    if-lez v3, :cond_13

    move v14, v7

    move-wide/from16 v23, v8

    move-wide/from16 v27, v23

    move/from16 v15, v36

    move-wide/from16 v25, v40

    goto :goto_e

    :cond_13
    move-wide/from16 v27, v8

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v20

    move-wide/from16 v8, v33

    move/from16 v3, v35

    move-object/from16 v6, v37

    move-object/from16 v4, v39

    goto/16 :goto_7

    :cond_14
    move/from16 v35, v3

    move-object/from16 v39, v4

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_15

    .line 1413
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v14, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double v5, v5, v23

    add-double/2addr v3, v5

    .line 1414
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-static {v8, v9, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v5, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    if-gez v15, :cond_16

    .line 1418
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-int v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_10

    :cond_16
    const/4 v4, 0x1

    :goto_10
    if-lez v15, :cond_17

    .line 1421
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-int/2addr v15, v4

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v1, v15, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_17
    add-double v3, p2, p2

    move-wide/from16 v10, v27

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    :goto_11
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_12
    if-ge v7, v2, :cond_1a

    move-object/from16 v12, v39

    .line 1436
    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    move-wide/from16 v23, v10

    move-object/from16 v15, v37

    const-wide/16 v10, 0x0

    .line 1437
    invoke-virtual {v15, v7, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1438
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    move-wide/from16 v25, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v10, v5

    invoke-static {v10, v11, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpl-double v5, v5, v10

    if-gtz v5, :cond_18

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    sub-double/2addr v5, v10

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpg-double v5, v5, v10

    if-gez v5, :cond_19

    .line 1440
    :cond_18
    invoke-virtual {v15, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double/2addr v13, v13

    add-double/2addr v8, v13

    :cond_19
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v39, v12

    move-object/from16 v37, v15

    move-wide/from16 v10, v23

    move-wide/from16 v5, v25

    goto :goto_12

    :cond_1a
    move-wide/from16 v25, v5

    move-wide/from16 v23, v10

    move-object/from16 v15, v37

    move-object/from16 v12, v39

    const-wide/16 v5, 0x0

    cmpl-double v7, v8, v5

    const/4 v10, 0x2

    if-nez v7, :cond_1b

    .line 1446
    new-array v1, v10, [D

    const/4 v2, 0x0

    aput-wide v33, v1, v2

    const/4 v2, 0x1

    aput-wide v5, v1, v2

    return-object v1

    :cond_1b
    mul-double v13, p2, p2

    sub-double/2addr v13, v5

    cmpl-double v7, v13, v5

    if-lez v7, :cond_1f

    div-double/2addr v13, v8

    .line 1452
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v2, :cond_20

    .line 1455
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpl-double v8, v8, v3

    if-nez v8, :cond_1e

    .line 1456
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double/2addr v13, v5

    sub-double/2addr v8, v13

    .line 1457
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpg-double v11, v8, v13

    if-gtz v11, :cond_1c

    .line 1458
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v8, v13

    invoke-virtual {v15, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1460
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_14

    .line 1462
    :cond_1c
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpl-double v8, v8, v13

    if-ltz v8, :cond_1d

    .line 1463
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v8, v13

    invoke-virtual {v15, v7, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1465
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    goto :goto_14

    .line 1469
    :cond_1d
    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    :cond_1e
    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1f
    move-wide/from16 v5, v23

    :cond_20
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_15
    if-ge v7, v2, :cond_24

    .line 1481
    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    .line 1482
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    cmpl-double v11, v23, v3

    if-nez v11, :cond_21

    neg-double v10, v5

    mul-double/2addr v10, v13

    .line 1483
    invoke-virtual {v15, v7, v10, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1484
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v10

    move-wide/from16 v23, v3

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v27

    add-double v3, v3, v27

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 1486
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v27, v5

    invoke-virtual {v11, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v10, v7, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v21, 0x0

    goto :goto_16

    :cond_21
    move-wide/from16 v23, v3

    move-wide/from16 v27, v5

    .line 1487
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/16 v21, 0x0

    cmpl-double v3, v3, v21

    if-nez v3, :cond_22

    .line 1488
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_16

    :cond_22
    cmpl-double v3, v13, v21

    if-lez v3, :cond_23

    .line 1490
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_16

    .line 1492
    :cond_23
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1494
    :goto_16
    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v13, v3

    add-double/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v23

    move-wide/from16 v5, v27

    const/4 v10, 0x2

    goto/16 :goto_15

    :cond_24
    move-wide/from16 v23, v3

    move-wide/from16 v27, v5

    const-wide/16 v21, 0x0

    move-wide/from16 v4, v21

    move/from16 v6, v35

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v6, :cond_26

    move-wide/from16 v10, v21

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v2, :cond_25

    .line 1506
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v3, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    mul-double v13, v13, v31

    add-double/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_25
    move-object/from16 v7, v20

    .line 1508
    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double/2addr v13, v10

    mul-double/2addr v13, v10

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_26
    move-object/from16 v7, v20

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    neg-double v4, v4

    :cond_27
    neg-double v10, v8

    cmpl-double v3, v4, v10

    if-lez v3, :cond_2a

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 1513
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v29

    mul-double/2addr v13, v10

    cmpg-double v3, v4, v13

    if-gez v3, :cond_29

    div-double/2addr v10, v4

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_28

    .line 1517
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    mul-double/2addr v13, v10

    add-double/2addr v4, v13

    .line 1518
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v35, v6

    move-object/from16 v20, v7

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v37, v15

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    invoke-virtual {v13, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v20

    move/from16 v6, v35

    move-object/from16 v15, v37

    goto :goto_19

    :cond_28
    move/from16 v35, v6

    move-object/from16 v20, v7

    move-object/from16 v37, v15

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v6

    mul-double/2addr v8, v10

    goto :goto_1b

    :cond_29
    move/from16 v35, v6

    move-object/from16 v20, v7

    move-object/from16 v37, v15

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    goto :goto_1a

    :cond_2a
    move/from16 v35, v6

    move-object/from16 v20, v7

    move-object/from16 v37, v15

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    :goto_1a
    mul-double/2addr v4, v6

    add-double/2addr v8, v4

    :goto_1b
    mul-double/2addr v8, v8

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_2b

    .line 1536
    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v12, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1537
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    move-object/from16 v5, v19

    invoke-virtual {v5, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2b
    move-wide v5, v8

    move-object/from16 v39, v12

    move-wide/from16 v3, v23

    move-wide/from16 v10, v27

    const/4 v1, 0x1

    goto/16 :goto_11

    :cond_2c
    move-object/from16 v5, v19

    cmpl-double v1, v25, v8

    if-lez v1, :cond_2e

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v2, :cond_2d

    .line 1547
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    move-wide/from16 v5, v25

    goto :goto_1e

    :cond_2e
    move-wide v5, v8

    :goto_1e
    const/4 v1, 0x2

    .line 1552
    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide v33, v1, v2

    const/4 v2, 0x1

    aput-wide v5, v1, v2

    return-object v1
.end method

.method private bobyqa([D[D)D
    .locals 11

    .line 284
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 286
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 296
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v3, v2, v1

    .line 297
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p1, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 298
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 299
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    cmpl-double v2, v5, v7

    const-wide/16 v5, 0x0

    if-ltz v2, :cond_1

    .line 300
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-ltz v2, :cond_0

    .line 301
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p1, v1

    invoke-virtual {v2, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 302
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 303
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 305
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p1, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    add-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 306
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 308
    aget-wide v2, p2, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 309
    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 311
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-wide v9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_3

    .line 312
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_2

    .line 313
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v7, p2, v1

    invoke-virtual {v2, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 314
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    neg-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 315
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 317
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p2, v1

    iget-wide v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    sub-double/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 319
    aget-wide v2, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 320
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v4, v4

    .line 321
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 322
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 329
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqb([D[D)D

    move-result-wide p1

    return-wide p1
.end method

.method private bobyqb([D[D)D
    .locals 96

    move-object/from16 v8, p0

    .line 373
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 375
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v9

    .line 376
    iget v10, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/lit8 v0, v9, 0x1

    sub-int v11, v10, v0

    mul-int/2addr v0, v9

    .line 379
    div-int/lit8 v12, v0, 0x2

    .line 381
    new-instance v13, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v13, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 382
    new-instance v14, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v14, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 383
    new-instance v15, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v15, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v7, 0x0

    .line 402
    iput v7, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 404
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->prelim([D[D)V

    move v0, v7

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    .line 407
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 409
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    .line 420
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v0

    .line 421
    iget-wide v5, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    const-wide/high16 v19, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v19

    move-wide/from16 v28, v24

    const-wide/16 v26, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    move/from16 v19, v0

    move-wide/from16 v20, v1

    move-wide/from16 v0, v28

    const/16 v2, 0x14

    :goto_1
    const-wide/high16 v51, 0x4024000000000000L    # 10.0

    const/16 v7, 0x3c

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v62, v0

    const/4 v1, 0x1

    const/16 v0, 0x14

    if-eq v2, v0, :cond_63

    if-eq v2, v7, :cond_62

    const/16 v0, 0x5a

    if-eq v2, v0, :cond_61

    const-wide/high16 v64, 0x3ff8000000000000L    # 1.5

    const/16 v7, 0x2d0

    const/16 v8, 0x168

    const-wide v68, 0x3fb999999999999aL    # 0.1

    const/16 v0, 0xd2

    if-eq v2, v0, :cond_6

    const/16 v0, 0xe6

    if-eq v2, v0, :cond_5

    if-eq v2, v8, :cond_4

    const/16 v0, 0x28a

    if-eq v2, v0, :cond_3

    const/16 v0, 0x2a8

    if-eq v2, v0, :cond_2

    if-ne v2, v7, :cond_1

    move-object/from16 v13, p0

    move v0, v7

    goto/16 :goto_42

    .line 1214
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "bobyqb"

    const/16 v18, 0x0

    aput-object v3, v1, v18

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    const/16 v18, 0x0

    move-wide v6, v5

    move/from16 v93, v11

    move v8, v12

    move-object/from16 v66, v13

    move-object/from16 v73, v15

    move/from16 v5, v30

    move-wide/from16 v74, v31

    move/from16 v11, v35

    move-object/from16 v13, p0

    move v12, v0

    move-object v15, v14

    move-wide/from16 v0, v42

    goto/16 :goto_40

    :cond_3
    const/16 v18, 0x0

    move v7, v0

    move-wide/from16 v70, v5

    move/from16 v93, v11

    move v8, v12

    move-object/from16 v66, v13

    move-object/from16 v73, v15

    move-wide/from16 v74, v31

    move/from16 v76, v35

    move-wide/from16 v81, v42

    move-wide/from16 v0, v62

    move-object/from16 v13, p0

    move-object v15, v14

    goto/16 :goto_3c

    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v79, v3

    move-wide/from16 v70, v5

    move v6, v8

    move/from16 v76, v11

    move-object/from16 v66, v13

    move-object/from16 v72, v14

    move-object/from16 v73, v15

    move/from16 v33, v30

    move-wide/from16 v74, v31

    move/from16 v11, v35

    move-wide/from16 v77, v62

    move/from16 v32, v12

    goto/16 :goto_13

    :cond_5
    const/16 v18, 0x0

    move v7, v0

    move-object/from16 v66, v13

    move/from16 v2, v30

    move-wide/from16 v74, v31

    move-object/from16 v0, p0

    move/from16 v32, v12

    goto :goto_3

    :cond_6
    move/from16 v54, v0

    const/16 v18, 0x0

    .line 657
    invoke-static/range {v54 .. v54}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-object/from16 v0, p0

    move-object/from16 v66, v13

    move/from16 v2, v30

    move-wide/from16 v7, v31

    move/from16 v32, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 669
    invoke-direct {v0, v2, v7, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->altmov(ID)[D

    move-result-object v24

    .line 670
    aget-wide v25, v24, v18

    .line 671
    aget-wide v27, v24, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_7

    .line 674
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v70

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v72

    move-wide/from16 v74, v7

    sub-double v7, v70, v72

    invoke-virtual {v12, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v74

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_7
    move-wide/from16 v74, v7

    const/16 v7, 0xe6

    move-wide/from16 v94, v25

    move-wide/from16 v24, v27

    move-wide/from16 v28, v94

    .line 683
    :goto_3
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_9

    move-wide/from16 v70, v5

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v26, 0x0

    :goto_5
    if-ge v5, v9, :cond_8

    .line 689
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v72

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v72, v72, v76

    add-double v12, v12, v72

    .line 690
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v72

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v72, v72, v76

    add-double v26, v26, v72

    .line 691
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v72

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v72, v72, v76

    add-double v7, v7, v72

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    mul-double v5, v12, v60

    add-double v5, v5, v26

    mul-double/2addr v5, v12

    .line 693
    invoke-virtual {v15, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 694
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 695
    invoke-virtual {v14, v1, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v70

    const/16 v7, 0xe6

    goto :goto_4

    :cond_9
    move-wide/from16 v70, v5

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    :goto_6
    if-ge v1, v11, :cond_c

    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v10, :cond_a

    .line 701
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v12, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v26

    invoke-virtual {v15, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v72

    mul-double v26, v26, v72

    add-double v7, v7, v26

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    mul-double v12, v7, v7

    sub-double/2addr v5, v12

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v10, :cond_b

    .line 705
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    move-wide/from16 v72, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double v5, v26, v5

    invoke-virtual {v13, v12, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, v72

    goto :goto_8

    :cond_b
    move-wide/from16 v72, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v26, 0x0

    :goto_9
    if-ge v1, v9, :cond_f

    move-object/from16 v72, v14

    .line 713
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v76

    mul-double v76, v76, v76

    add-double v7, v7, v76

    const/4 v14, 0x0

    const-wide/16 v76, 0x0

    :goto_a
    if-ge v14, v10, :cond_d

    .line 717
    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v78

    move-wide/from16 v80, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v14, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v78, v78, v7

    add-double v76, v76, v78

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v7, v80

    goto :goto_a

    :cond_d
    move-wide/from16 v80, v7

    .line 719
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double v7, v7, v76

    add-double v26, v26, v7

    add-int v7, v10, v1

    move-object/from16 v73, v15

    move-wide/from16 v14, v76

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v9, :cond_e

    move/from16 v76, v11

    .line 722
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v77

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v82

    mul-double v77, v77, v82

    add-double v14, v14, v77

    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v76

    goto :goto_b

    :cond_e
    move/from16 v76, v11

    .line 724
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v7, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 725
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v14, v7

    add-double v26, v26, v14

    .line 726
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v7, v14

    add-double/2addr v12, v7

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move/from16 v11, v76

    move-wide/from16 v7, v80

    goto :goto_9

    :cond_f
    move/from16 v76, v11

    move-object/from16 v72, v14

    move-object/from16 v73, v15

    mul-double v14, v12, v12

    add-double v77, v20, v12

    add-double v77, v77, v12

    mul-double v11, v7, v60

    add-double v77, v77, v11

    mul-double v77, v77, v7

    add-double v14, v14, v77

    add-double/2addr v14, v5

    sub-double v26, v14, v26

    .line 733
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v13

    invoke-virtual {v1, v5, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v11, v35

    if-nez v11, :cond_12

    .line 742
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v5, v5

    mul-double v12, v28, v26

    add-double v44, v5, v12

    cmpg-double v1, v44, v24

    if-gez v1, :cond_11

    const-wide/16 v5, 0x0

    cmpl-double v1, v24, v5

    if-lez v1, :cond_11

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v9, :cond_10

    .line 746
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    invoke-virtual {v5, v1, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 747
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-virtual {v5, v1, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    move/from16 v30, v2

    move/from16 v35, v11

    move/from16 v12, v32

    move-object/from16 v13, v66

    move-wide/from16 v5, v70

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v76

    const/16 v2, 0xe6

    const-wide/16 v24, 0x0

    move-wide/from16 v94, v7

    move-object v8, v0

    move-wide/from16 v0, v94

    goto/16 :goto_1

    :cond_11
    move/from16 v33, v2

    move-wide/from16 v79, v3

    move-wide/from16 v77, v7

    goto/16 :goto_12

    :cond_12
    mul-double v1, v3, v3

    const-wide/16 v5, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_d
    if-ge v14, v10, :cond_17

    move-wide/from16 v77, v7

    .line 764
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v14, v7, :cond_13

    move-wide/from16 v81, v1

    move-wide/from16 v79, v3

    goto/16 :goto_11

    :cond_13
    move-wide/from16 v79, v3

    move/from16 v33, v15

    move/from16 v3, v76

    const-wide/16 v7, 0x0

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v3, :cond_14

    .line 770
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v34

    mul-double v34, v34, v34

    add-double v7, v7, v34

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 774
    :cond_14
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v7, v7, v26

    mul-double v34, v34, v34

    add-double v7, v7, v34

    const/4 v4, 0x0

    const-wide/16 v34, 0x0

    :goto_f
    if-ge v4, v9, :cond_15

    .line 779
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v48

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v81

    sub-double v48, v48, v81

    mul-double v48, v48, v48

    add-double v34, v34, v48

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_15
    div-double v48, v34, v1

    move-wide/from16 v81, v1

    mul-double v1, v48, v48

    move/from16 v76, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 785
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    mul-double v3, v1, v7

    cmpl-double v15, v3, v5

    if-lez v15, :cond_16

    move-wide v5, v3

    move-wide/from16 v44, v7

    move v15, v14

    goto :goto_10

    :cond_16
    move/from16 v15, v33

    .line 793
    :goto_10
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    mul-double/2addr v1, v3

    .line 794
    invoke-static {v12, v13, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v12, v1

    move-wide/from16 v48, v34

    :goto_11
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v7, v77

    move-wide/from16 v3, v79

    move-wide/from16 v1, v81

    goto :goto_d

    :cond_17
    move-wide/from16 v79, v3

    move-wide/from16 v77, v7

    move/from16 v33, v15

    :goto_12
    const/16 v6, 0x168

    .line 806
    :goto_13
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v9, :cond_1a

    .line 810
    aget-wide v2, p1, v1

    .line 811
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    add-double/2addr v4, v7

    .line 812
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 813
    aget-wide v4, p2, v1

    .line 814
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-virtual {v7, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 815
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_18

    .line 816
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p1, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 818
    :cond_18
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_19

    .line 819
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v3, p2, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 823
    :cond_1a
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 825
    iget-boolean v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-nez v3, :cond_1b

    neg-double v1, v1

    :cond_1b
    move-wide v7, v1

    const/4 v1, -0x1

    if-ne v11, v1, :cond_1c

    move-wide/from16 v22, v7

    move/from16 v35, v11

    move/from16 v12, v32

    move/from16 v30, v33

    move-object/from16 v13, v66

    move-wide/from16 v5, v70

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v76

    move-wide/from16 v3, v79

    const/16 v2, 0x2d0

    move-object v8, v0

    move-wide/from16 v33, v22

    move-wide/from16 v0, v77

    goto/16 :goto_1

    .line 835
    :cond_1c
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v3, v9, :cond_1f

    .line 839
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v14, v14, v34

    add-double/2addr v1, v14

    const/4 v5, 0x0

    :goto_16
    if-gt v5, v3, :cond_1e

    .line 841
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v14, v14, v34

    if-ne v5, v3, :cond_1d

    mul-double v14, v14, v60

    .line 845
    :cond_1d
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    mul-double v34, v34, v14

    add-double v1, v1, v34

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x168

    goto :goto_16

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x168

    goto :goto_15

    :cond_1f
    move-wide v14, v1

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v10, :cond_20

    move-object/from16 v6, v72

    .line 851
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, v2

    .line 853
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, v60

    mul-double/2addr v4, v2

    add-double/2addr v14, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_20
    move-object/from16 v6, v72

    sub-double v1, v7, v12

    sub-double v34, v1, v14

    .line 858
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    move-wide/from16 v3, v42

    cmpl-double v5, v3, v70

    if-lez v5, :cond_21

    .line 860
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v5

    move/from16 v19, v5

    :cond_21
    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    if-lez v11, :cond_2c

    const-wide/16 v16, 0x0

    cmpl-double v5, v14, v16

    if-gez v5, :cond_2b

    div-double/2addr v1, v14

    move-object/from16 v72, v6

    mul-double v5, v79, v60

    cmpg-double v46, v1, v68

    if-gtz v46, :cond_22

    .line 873
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    :goto_18
    move-wide/from16 v46, v1

    goto :goto_19

    :cond_22
    const-wide v46, 0x3fe6666666666666L    # 0.7

    cmpg-double v46, v1, v46

    if-gtz v46, :cond_23

    .line 876
    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    goto :goto_18

    :cond_23
    move-wide/from16 v46, v1

    mul-double v1, v3, v42

    .line 879
    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    :goto_19
    mul-double v1, v70, v64

    cmpg-double v1, v5, v1

    if-gtz v1, :cond_24

    move-wide/from16 v5, v70

    :cond_24
    cmpg-double v1, v7, v12

    if-gez v1, :cond_2a

    mul-double v1, v5, v5

    move-wide/from16 v81, v3

    move-wide/from16 v79, v5

    move-wide/from16 v3, v16

    move-wide/from16 v85, v44

    move-wide/from16 v83, v48

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v48, v3

    :goto_1a
    if-ge v5, v10, :cond_28

    move/from16 v54, v6

    move-wide/from16 v83, v16

    const/4 v6, 0x0

    move/from16 v94, v76

    move/from16 v76, v11

    move/from16 v11, v94

    :goto_1b
    if-ge v6, v11, :cond_25

    move/from16 v58, v11

    .line 898
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v87

    mul-double v87, v87, v87

    add-double v83, v83, v87

    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v58

    goto :goto_1b

    :cond_25
    move/from16 v58, v11

    .line 902
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v87

    mul-double v83, v83, v26

    mul-double v87, v87, v87

    add-double v83, v83, v87

    move-wide/from16 v87, v16

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v9, :cond_26

    .line 907
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v89

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v91

    sub-double v89, v89, v91

    mul-double v89, v89, v89

    add-double v87, v87, v89

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_26
    div-double v89, v87, v1

    move-wide/from16 v91, v1

    mul-double v1, v89, v89

    move-wide/from16 v89, v12

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 913
    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    mul-double v62, v1, v83

    cmpl-double v6, v62, v48

    if-lez v6, :cond_27

    move v6, v5

    move-wide/from16 v48, v62

    move-wide/from16 v85, v83

    goto :goto_1d

    :cond_27
    move/from16 v6, v54

    .line 921
    :goto_1d
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    mul-double v62, v62, v62

    mul-double v1, v1, v62

    .line 923
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v76

    move-wide/from16 v83, v87

    move-wide/from16 v12, v89

    move-wide/from16 v1, v91

    move/from16 v76, v58

    goto :goto_1a

    :cond_28
    move/from16 v54, v6

    move-wide/from16 v89, v12

    move/from16 v58, v76

    move/from16 v76, v11

    mul-double v3, v3, v60

    cmpg-double v1, v48, v3

    move-object v13, v0

    if-gtz v1, :cond_29

    move/from16 v6, v33

    move-wide/from16 v48, v83

    goto :goto_1e

    :cond_29
    move/from16 v6, v54

    move-wide/from16 v48, v83

    move-wide/from16 v44, v85

    goto :goto_1e

    :cond_2a
    move-wide/from16 v81, v3

    move-wide/from16 v79, v5

    move-wide/from16 v89, v12

    move/from16 v58, v76

    move/from16 v76, v11

    move-object v13, v0

    move/from16 v6, v33

    :goto_1e
    const/4 v11, 0x0

    goto :goto_1f

    .line 867
    :cond_2b
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TRUST_REGION_STEP_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2c
    move-wide/from16 v81, v3

    move-object/from16 v72, v6

    move-wide/from16 v89, v12

    move/from16 v58, v76

    const-wide/16 v16, 0x0

    move/from16 v76, v11

    const/4 v11, 0x0

    move-object v13, v0

    move/from16 v6, v33

    :goto_1f
    const/16 v12, 0x5a

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v5, v58

    move-wide/from16 v11, v81

    move-wide/from16 v3, v44

    move/from16 v93, v5

    move-wide/from16 v11, v16

    move v5, v6

    .line 935
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->update(DDI)V

    .line 938
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    .line 939
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v6, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v2, v9, :cond_2e

    .line 941
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v6, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    mul-double/2addr v4, v0

    const/4 v11, 0x0

    :goto_21
    if-gt v11, v2, :cond_2d

    .line 943
    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    move-wide/from16 v83, v0

    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v6, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double v0, v62, v0

    invoke-virtual {v12, v3, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v0, v83

    goto :goto_21

    :cond_2d
    move-wide/from16 v83, v0

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v11, 0x0

    goto :goto_20

    :cond_2e
    move/from16 v11, v93

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v11, :cond_30

    .line 948
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    mul-double v1, v1, v34

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v10, :cond_2f

    .line 950
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v62

    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v83

    mul-double v83, v83, v1

    move-wide/from16 v85, v1

    add-double v1, v62, v83

    invoke-virtual {v4, v3, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v85

    goto :goto_23

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 957
    :cond_30
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v9, :cond_31

    .line 959
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v6, v0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 960
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v6, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    move-object/from16 v12, v66

    invoke-virtual {v12, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_31
    move-object/from16 v12, v66

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v10, :cond_35

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v11, :cond_32

    .line 965
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v6, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    move-wide/from16 v62, v14

    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    mul-double/2addr v4, v14

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v14, v62

    goto :goto_26

    :cond_32
    move-wide/from16 v62, v14

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v9, :cond_33

    .line 969
    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v0, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    move/from16 v93, v11

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v66

    mul-double v14, v14, v66

    add-double/2addr v3, v14

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v93

    goto :goto_27

    :cond_33
    move/from16 v93, v11

    mul-double/2addr v1, v3

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v9, :cond_34

    .line 973
    invoke-virtual {v12, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    mul-double/2addr v14, v1

    add-double/2addr v4, v14

    invoke-virtual {v12, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_34
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v14, v62

    move/from16 v11, v93

    goto :goto_25

    :cond_35
    move/from16 v93, v11

    move-wide/from16 v62, v14

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v9, :cond_36

    .line 977
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, v34

    add-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_36
    cmpg-double v0, v7, v89

    if-gez v0, :cond_3d

    .line 983
    iput v6, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2a
    if-ge v2, v9, :cond_39

    .line 987
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-virtual {v4, v2, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 989
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const/4 v4, 0x0

    :goto_2b
    if-gt v4, v2, :cond_38

    if-ge v4, v2, :cond_37

    .line 993
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    mul-double v20, v20, v33

    add-double v14, v14, v20

    invoke-virtual {v5, v2, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 995
    :cond_37
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    mul-double v20, v20, v33

    add-double v14, v14, v20

    invoke-virtual {v5, v4, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_39
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v10, :cond_3c

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v9, :cond_3a

    .line 1002
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v14, v14, v20

    add-double/2addr v3, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 1004
    :cond_3a
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v3, v14

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v9, :cond_3b

    .line 1006
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    move-wide/from16 v20, v0

    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v0

    mul-double/2addr v0, v3

    add-double/2addr v14, v0

    invoke-virtual {v11, v5, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v0, v20

    goto :goto_2e

    :cond_3b
    move-wide/from16 v20, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3c
    move-wide/from16 v20, v0

    :cond_3d
    if-lez v76, :cond_4d

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v10, :cond_3e

    .line 1017
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v11, v73

    const-wide/16 v1, 0x0

    .line 1018
    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3e
    move-object/from16 v11, v73

    move/from16 v14, v93

    const/4 v0, 0x0

    :goto_30
    if-ge v0, v14, :cond_41

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v10, :cond_3f

    .line 1023
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    mul-double v4, v4, v33

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_3f
    const/4 v3, 0x0

    :goto_32
    if-ge v3, v10, :cond_40

    .line 1026
    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v33

    mul-double v33, v33, v1

    add-double v4, v4, v33

    invoke-virtual {v11, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_41
    const/4 v0, 0x0

    :goto_33
    if-ge v0, v10, :cond_43

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v9, :cond_42

    .line 1032
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    mul-double v4, v4, v33

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1034
    :cond_42
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    move-object/from16 v15, v72

    invoke-virtual {v15, v0, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1035
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_43
    move-object/from16 v15, v72

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v9, :cond_47

    move/from16 v33, v6

    move/from16 v93, v14

    const-wide/16 v5, 0x0

    const/4 v14, 0x0

    :goto_36
    if-ge v14, v10, :cond_44

    move-object/from16 v66, v12

    .line 1042
    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v34

    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v72

    mul-double v34, v34, v72

    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v14, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v72

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v83

    mul-double v72, v72, v83

    add-double v34, v34, v72

    add-double v5, v5, v34

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v66

    goto :goto_36

    :cond_44
    move-object/from16 v66, v12

    .line 1045
    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v34

    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v72

    cmpl-double v12, v34, v72

    if-nez v12, :cond_45

    .line 1048
    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object/from16 v73, v11

    invoke-virtual {v12, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    move-wide/from16 v34, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v11

    mul-double/2addr v11, v11

    add-double/2addr v0, v11

    .line 1051
    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v11

    mul-double/2addr v11, v11

    add-double/2addr v2, v11

    goto :goto_38

    :cond_45
    move-wide/from16 v34, v7

    move-object/from16 v73, v11

    .line 1053
    iget-object v7, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v7, v7, v11

    if-nez v7, :cond_46

    .line 1056
    iget-object v7, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    mul-double/2addr v7, v7

    add-double/2addr v0, v7

    .line 1059
    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    mul-double/2addr v7, v7

    goto :goto_37

    .line 1063
    :cond_46
    iget-object v7, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v7, v7

    add-double/2addr v0, v7

    mul-double v7, v5, v5

    :goto_37
    add-double/2addr v2, v7

    .line 1067
    :goto_38
    iget-object v7, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v8, v10, v4

    invoke-virtual {v7, v8, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v33

    move-wide/from16 v7, v34

    move-object/from16 v12, v66

    move-object/from16 v11, v73

    move/from16 v14, v93

    goto/16 :goto_35

    :cond_47
    move/from16 v33, v6

    move-wide/from16 v34, v7

    move-object/from16 v73, v11

    move-object/from16 v66, v12

    move/from16 v93, v14

    add-int/lit8 v4, v50, 0x1

    mul-double v2, v2, v51

    cmpg-double v0, v0, v2

    if-gez v0, :cond_48

    const/4 v4, 0x0

    :cond_48
    const/4 v0, 0x3

    move/from16 v8, v32

    if-lt v4, v0, :cond_4c

    .line 1078
    invoke-static {v10, v8}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v0, :cond_4c

    if-ge v1, v9, :cond_49

    .line 1080
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v4, v10, v1

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_49
    if-ge v1, v10, :cond_4a

    .line 1083
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4a
    if-ge v1, v8, :cond_4b

    .line 1086
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_39

    :cond_4c
    move/from16 v50, v4

    goto :goto_3a

    :cond_4d
    move/from16 v33, v6

    move-wide/from16 v34, v7

    move-object/from16 v66, v12

    move/from16 v8, v32

    move-object/from16 v15, v72

    :goto_3a
    if-nez v76, :cond_4e

    :goto_3b
    move v12, v8

    move-object v8, v13

    move-object v14, v15

    move/from16 v30, v33

    move-wide/from16 v33, v34

    move-object/from16 v13, v66

    move-wide/from16 v5, v70

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v35, v76

    move-wide/from16 v0, v77

    move-wide/from16 v3, v79

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x3c

    move-wide/from16 v94, v36

    move-wide/from16 v36, v40

    move-wide/from16 v40, v38

    move-wide/from16 v38, v94

    goto/16 :goto_1

    :cond_4e
    mul-double v0, v62, v68

    add-double v0, v89, v0

    cmpg-double v0, v34, v0

    if-gtz v0, :cond_4f

    goto :goto_3b

    :cond_4f
    mul-double v42, v42, v79

    mul-double v5, v70, v51

    mul-double v0, v42, v42

    mul-double/2addr v5, v5

    .line 1112
    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v48

    move-wide/from16 v33, v34

    move-wide/from16 v0, v77

    move-wide/from16 v3, v79

    const/16 v7, 0x28a

    move-wide/from16 v94, v36

    move-wide/from16 v36, v40

    move-wide/from16 v40, v38

    move-wide/from16 v38, v94

    .line 1115
    :goto_3c
    invoke-static {v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_3d
    if-ge v2, v10, :cond_52

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :goto_3e
    if-ge v11, v9, :cond_50

    .line 1121
    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v2, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v42

    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    sub-double v42, v42, v51

    mul-double v42, v42, v42

    add-double v6, v6, v42

    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    :cond_50
    cmpl-double v11, v6, v48

    if-lez v11, :cond_51

    move v5, v2

    move-wide/from16 v48, v6

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_52
    if-ltz v5, :cond_55

    .line 1137
    invoke-static/range {v48 .. v49}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move/from16 v11, v76

    const/4 v2, -0x1

    if-ne v11, v2, :cond_54

    mul-double v3, v3, v68

    mul-double v6, v0, v60

    .line 1140
    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    mul-double v6, v70, v64

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_53

    move-wide/from16 v3, v70

    goto :goto_3f

    :cond_53
    move-wide v3, v2

    :cond_54
    :goto_3f
    mul-double v0, v0, v68

    .line 1148
    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    move-wide/from16 v6, v70

    .line 1149
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v31

    mul-double v0, v31, v31

    move/from16 v30, v5

    move-wide v5, v6

    move v12, v8

    move-object v8, v13

    move-object v14, v15

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x5a

    const/16 v35, 0x0

    goto/16 :goto_1

    :cond_55
    move-wide/from16 v6, v70

    move/from16 v11, v76

    const/4 v2, -0x1

    if-ne v11, v2, :cond_56

    move/from16 v30, v5

    move-wide v5, v6

    move v12, v8

    move/from16 v35, v11

    move-object v8, v13

    move-object v14, v15

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x2a8

    goto/16 :goto_1

    :cond_56
    const-wide/16 v16, 0x0

    cmpl-double v2, v46, v16

    if-lez v2, :cond_57

    move/from16 v30, v5

    move-wide v5, v6

    move v12, v8

    move/from16 v35, v11

    move-object v8, v13

    move-object v14, v15

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x3c

    goto/16 :goto_1

    :cond_57
    move-wide/from16 v42, v0

    move-wide/from16 v0, v81

    .line 1159
    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v51

    cmpl-double v2, v51, v6

    if-lez v2, :cond_58

    move/from16 v30, v5

    move-wide v5, v6

    move v12, v8

    move/from16 v35, v11

    move-object v8, v13

    move-object v14, v15

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v93

    const/16 v2, 0x3c

    move-wide/from16 v94, v0

    move-wide/from16 v0, v42

    move-wide/from16 v42, v94

    goto/16 :goto_1

    :cond_58
    move-wide/from16 v62, v42

    const/16 v12, 0x2a8

    .line 1167
    :goto_40
    invoke-static {v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v81, v0

    .line 1168
    iget-wide v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    cmpl-double v2, v6, v0

    if-lez v2, :cond_5b

    mul-double v2, v6, v60

    div-double v46, v6, v0

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    cmpg-double v4, v46, v11

    if-gtz v4, :cond_59

    goto :goto_41

    :cond_59
    const-wide v0, 0x406f400000000000L    # 250.0

    cmpg-double v0, v46, v0

    if-gtz v0, :cond_5a

    .line 1174
    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-wide v6, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->stoppingTrustRegionRadius:D

    mul-double/2addr v0, v6

    goto :goto_41

    :cond_5a
    mul-double v0, v6, v68

    .line 1178
    :goto_41
    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v19

    move/from16 v30, v5

    move v12, v8

    move-object v8, v13

    move-object v14, v15

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x3c

    const/16 v35, 0x0

    move-wide v5, v0

    move-wide/from16 v0, v62

    goto/16 :goto_1

    :cond_5b
    const/4 v14, -0x1

    if-ne v11, v14, :cond_5c

    move/from16 v30, v5

    move-wide v5, v6

    move v12, v8

    move/from16 v35, v11

    move-object v8, v13

    move-object v14, v15

    move-wide/from16 v0, v62

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move-wide/from16 v42, v81

    move/from16 v11, v93

    const/16 v2, 0x168

    goto/16 :goto_1

    :cond_5c
    const/16 v0, 0x2d0

    .line 1192
    :goto_42
    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 1193
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    cmpg-double v0, v0, v22

    if-gtz v0, :cond_60

    const/4 v7, 0x0

    :goto_43
    if-ge v7, v9, :cond_5f

    .line 1197
    aget-wide v0, p1, v7

    .line 1198
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 1199
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 1200
    aget-wide v2, p2, v7

    .line 1201
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    invoke-virtual {v4, v7, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1202
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5d

    .line 1203
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p1, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1205
    :cond_5d
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5e

    .line 1206
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v1, p2, v7

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 1209
    :cond_5f
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    :cond_60
    return-wide v33

    :cond_61
    move-wide v6, v5

    move/from16 v93, v11

    move-object/from16 v66, v13

    move-object/from16 v73, v15

    move/from16 v11, v35

    move-wide/from16 v81, v42

    const/16 v54, 0xd2

    move-object v13, v8

    move-wide/from16 v70, v6

    move/from16 v35, v12

    move-object v12, v14

    move/from16 v43, v30

    move-wide/from16 v74, v31

    move-wide/from16 v5, v38

    move/from16 v53, v54

    const/16 v30, 0x0

    const/16 v42, 0x14

    const/16 v57, 0xe6

    move/from16 v32, v0

    move-wide v14, v3

    move-wide/from16 v38, v36

    move-wide/from16 v0, v62

    move-object/from16 v4, v66

    goto/16 :goto_51

    :cond_62
    move-wide/from16 v79, v3

    move-wide/from16 v70, v5

    move/from16 v93, v11

    move-object/from16 v66, v13

    move-object/from16 v73, v15

    move/from16 v2, v30

    move-wide/from16 v74, v31

    move/from16 v11, v35

    const/16 v54, 0xd2

    move-object v13, v8

    move v8, v12

    move-object v15, v14

    const/16 v12, 0x2a8

    const/4 v14, -0x1

    move v0, v7

    move/from16 v35, v8

    const/16 v30, 0x14

    goto/16 :goto_4a

    :cond_63
    move-wide/from16 v79, v3

    move-wide/from16 v70, v5

    move/from16 v93, v11

    move-object/from16 v66, v13

    move-object/from16 v73, v15

    move/from16 v2, v30

    move-wide/from16 v74, v31

    move/from16 v11, v35

    const/16 v7, 0x28a

    const/16 v54, 0xd2

    move/from16 v30, v0

    move v4, v1

    move-object v13, v8

    move v8, v12

    move-object v15, v14

    const/16 v12, 0x2a8

    const/4 v14, -0x1

    .line 442
    invoke-static/range {v30 .. v30}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 443
    iget v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_44
    if-ge v0, v9, :cond_66

    const/4 v3, 0x0

    :goto_45
    if-gt v3, v0, :cond_65

    if-ge v3, v0, :cond_64

    .line 448
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    iget-object v6, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    iget-object v6, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v42, v42, v56

    move/from16 v35, v8

    add-double v7, v31, v42

    invoke-virtual {v5, v0, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_46

    :cond_64
    move/from16 v35, v8

    .line 450
    :goto_46
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    iget-object v8, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    iget-object v8, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v42

    mul-double v31, v31, v42

    add-double v6, v6, v31

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v35

    const/16 v7, 0x28a

    goto :goto_45

    :cond_65
    move/from16 v35, v8

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x28a

    goto :goto_44

    :cond_66
    move/from16 v35, v8

    .line 454
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v0

    if-le v0, v10, :cond_6a

    const/4 v0, 0x0

    :goto_47
    if-ge v0, v10, :cond_6a

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    :goto_48
    if-ge v1, v9, :cond_67

    .line 458
    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    mul-double v7, v7, v31

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 460
    :cond_67
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v9, :cond_68

    .line 462
    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v31

    mul-double v31, v31, v5

    add-double v7, v7, v31

    invoke-virtual {v3, v1, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_49

    :cond_68
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_47

    :cond_69
    move/from16 v35, v8

    :cond_6a
    const/16 v0, 0x3c

    .line 478
    :goto_4a
    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    .line 479
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 480
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 481
    new-instance v5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 482
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v6, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 483
    new-instance v7, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v7, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object/from16 v0, p0

    move v8, v2

    const/16 v31, 0x1

    move-wide/from16 v1, v79

    move-object/from16 v72, v15

    move-wide/from16 v14, v79

    move-object/from16 v12, v72

    move/from16 v42, v30

    move/from16 v53, v54

    const/16 v18, -0x1

    const/16 v30, 0x0

    const/16 v32, 0x5a

    const/16 v55, 0x2a8

    const/16 v56, 0x28a

    const/16 v57, 0xe6

    .line 485
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D

    move-result-object v0

    .line 487
    aget-wide v1, v0, v30

    .line 488
    aget-wide v3, v0, v31

    .line 492
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 493
    invoke-static {v14, v15, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    mul-double v58, v70, v60

    cmpg-double v0, v5, v58

    if-gez v0, :cond_73

    mul-double v31, v70, v51

    mul-double v48, v31, v31

    .line 499
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v0

    add-int/lit8 v7, v19, 0x2

    if-gt v0, v7, :cond_6b

    move-wide v0, v1

    move-wide/from16 v42, v5

    move/from16 v30, v8

    move-object v8, v13

    move-wide v3, v14

    move/from16 v2, v56

    move-object/from16 v13, v66

    move-wide/from16 v5, v70

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v93

    move-object v14, v12

    move/from16 v12, v35

    :goto_4b
    move/from16 v35, v18

    goto/16 :goto_1

    :cond_6b
    move-wide/from16 v51, v1

    move v2, v8

    move-wide/from16 v0, v36

    move-wide/from16 v36, v5

    move-wide/from16 v5, v38

    .line 510
    invoke-static {v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    move-wide/from16 v38, v0

    move-wide/from16 v0, v40

    .line 511
    invoke-static {v7, v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    const-wide/high16 v31, 0x3fc0000000000000L    # 0.125

    mul-double v31, v31, v70

    mul-double v31, v31, v70

    const-wide/16 v16, 0x0

    cmpl-double v11, v3, v16

    if-lez v11, :cond_6c

    mul-double v31, v31, v3

    cmpl-double v3, v7, v31

    if-lez v3, :cond_6c

    move-wide/from16 v40, v0

    move/from16 v30, v2

    move-object v8, v13

    move-wide v3, v14

    move-wide/from16 v42, v36

    move-wide/from16 v36, v38

    move-wide/from16 v0, v51

    move/from16 v2, v56

    move-object/from16 v13, v66

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v93

    :goto_4c
    move-wide/from16 v38, v5

    move-object v14, v12

    move/from16 v12, v35

    move-wide/from16 v5, v70

    goto :goto_4b

    :cond_6c
    div-double v7, v7, v70

    move/from16 v3, v30

    :goto_4d
    if-ge v3, v9, :cond_72

    .line 520
    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    iget-object v4, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    cmpl-double v4, v31, v40

    if-nez v4, :cond_6d

    move-object/from16 v4, v66

    .line 521
    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v31

    goto :goto_4e

    :cond_6d
    move-object/from16 v4, v66

    move-wide/from16 v31, v7

    .line 523
    :goto_4e
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v40

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    cmpl-double v11, v40, v53

    move-wide/from16 v40, v0

    if-nez v11, :cond_6e

    .line 524
    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    neg-double v0, v0

    move-wide/from16 v31, v0

    :cond_6e
    cmpg-double v0, v31, v7

    if-gez v0, :cond_70

    .line 527
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int v1, v3, v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v0

    move/from16 v11, v30

    :goto_4f
    if-ge v11, v10, :cond_6f

    move/from16 v43, v2

    .line 530
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v11, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v53

    .line 531
    iget-object v2, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v56

    mul-double v53, v53, v53

    mul-double v56, v56, v53

    add-double v0, v0, v56

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v43

    goto :goto_4f

    :cond_6f
    move/from16 v43, v2

    mul-double v0, v0, v60

    mul-double v0, v0, v70

    add-double v31, v31, v0

    cmpg-double v0, v31, v7

    if-gez v0, :cond_71

    goto :goto_50

    :cond_70
    move/from16 v43, v2

    :cond_71
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v66, v4

    move-wide/from16 v0, v40

    move/from16 v2, v43

    goto :goto_4d

    :cond_72
    move-wide/from16 v40, v0

    move/from16 v43, v2

    move-object/from16 v4, v66

    :goto_50
    move-object v8, v13

    move/from16 v30, v43

    move-wide/from16 v0, v51

    move/from16 v2, v55

    move-wide/from16 v31, v74

    move/from16 v11, v93

    move-object v13, v4

    move-wide v3, v14

    move-wide/from16 v42, v36

    move-wide/from16 v36, v38

    move-object/from16 v15, v73

    goto/16 :goto_4c

    :cond_73
    move-wide/from16 v51, v1

    move/from16 v43, v8

    move-object/from16 v4, v66

    move-wide/from16 v94, v5

    move-wide/from16 v5, v38

    move-wide/from16 v38, v36

    move-wide/from16 v36, v94

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    move-wide/from16 v81, v36

    move-wide/from16 v0, v51

    .line 552
    :goto_51
    invoke-static/range {v32 .. v32}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v20

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_83

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v2, v2, v20

    move-wide/from16 v31, v0

    move/from16 v0, v30

    const-wide/16 v7, 0x0

    :goto_52
    const-wide/high16 v36, -0x4020000000000000L    # -0.5

    if-ge v0, v10, :cond_77

    .line 559
    iget-object v1, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v51

    add-double v7, v7, v51

    mul-double v36, v36, v20

    move-wide/from16 v51, v5

    move/from16 v1, v30

    move-wide/from16 v5, v36

    :goto_53
    if-ge v1, v9, :cond_74

    move-wide/from16 v54, v7

    .line 562
    iget-object v7, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    move-wide/from16 v79, v14

    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v7, v14

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v54

    move-wide/from16 v14, v79

    goto :goto_53

    :cond_74
    move-wide/from16 v54, v7

    move-wide/from16 v79, v14

    .line 565
    invoke-virtual {v12, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v7, v5, v60

    sub-double v7, v2, v7

    move/from16 v1, v30

    :goto_54
    if-ge v1, v9, :cond_76

    .line 568
    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-virtual {v4, v1, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 569
    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    mul-double v36, v36, v5

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    mul-double v58, v58, v7

    move-wide/from16 v62, v5

    add-double v5, v36, v58

    invoke-virtual {v14, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int v5, v10, v1

    move/from16 v6, v30

    :goto_55
    if-gt v6, v1, :cond_75

    .line 572
    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v36

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v58, v58, v64

    add-double v36, v36, v58

    iget-object v15, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v58

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v64

    mul-double v58, v58, v64

    move-wide/from16 v64, v7

    add-double v7, v36, v58

    invoke-virtual {v14, v5, v6, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v7, v64

    goto :goto_55

    :cond_75
    move-wide/from16 v64, v7

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v62

    goto :goto_54

    :cond_76
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v51

    move-wide/from16 v7, v54

    move-wide/from16 v14, v79

    goto/16 :goto_52

    :cond_77
    move-wide/from16 v51, v5

    move-wide/from16 v79, v14

    move/from16 v0, v30

    move/from16 v1, v93

    :goto_56
    if-ge v0, v1, :cond_7e

    move/from16 v76, v1

    move/from16 v1, v30

    const-wide/16 v5, 0x0

    const-wide/16 v14, 0x0

    :goto_57
    if-ge v1, v10, :cond_78

    move/from16 v18, v11

    .line 586
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    add-double v5, v5, v20

    .line 587
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    move-wide/from16 v54, v5

    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    mul-double v5, v5, v20

    invoke-virtual {v11, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 588
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v14, v5

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v18

    move-wide/from16 v5, v54

    goto :goto_57

    :cond_78
    move/from16 v18, v11

    move/from16 v1, v30

    :goto_58
    if-ge v1, v9, :cond_7b

    mul-double v20, v2, v5

    mul-double v54, v14, v60

    sub-double v20, v20, v54

    .line 591
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v54

    mul-double v20, v20, v54

    move-wide/from16 v54, v2

    move-wide/from16 v2, v20

    move/from16 v11, v30

    :goto_59
    if-ge v11, v10, :cond_79

    move-wide/from16 v20, v5

    .line 593
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    move-object/from16 v72, v12

    iget-object v12, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v11, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v58

    mul-double v5, v5, v58

    add-double/2addr v2, v5

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v5, v20

    move-object/from16 v12, v72

    goto :goto_59

    :cond_79
    move-wide/from16 v20, v5

    move-object/from16 v72, v12

    .line 595
    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v5, v30

    :goto_5a
    if-ge v5, v10, :cond_7a

    .line 597
    iget-object v6, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v5, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    move-wide/from16 v58, v14

    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v5, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    mul-double/2addr v14, v2

    add-double/2addr v11, v14

    invoke-virtual {v6, v5, v1, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v14, v58

    goto :goto_5a

    :cond_7a
    move-wide/from16 v58, v14

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v20

    move-wide/from16 v2, v54

    move-object/from16 v12, v72

    goto :goto_58

    :cond_7b
    move-wide/from16 v54, v2

    move-object/from16 v72, v12

    move/from16 v1, v30

    :goto_5b
    if-ge v1, v9, :cond_7d

    add-int v2, v1, v10

    .line 604
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    move/from16 v3, v30

    :goto_5c
    if-gt v3, v1, :cond_7c

    .line 606
    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v20, v20, v5

    add-double v14, v14, v20

    invoke-virtual {v11, v2, v3, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v18

    move-wide/from16 v2, v54

    move-object/from16 v12, v72

    move/from16 v1, v76

    goto/16 :goto_56

    :cond_7e
    move/from16 v76, v1

    move/from16 v18, v11

    move-object/from16 v72, v12

    move/from16 v0, v30

    move v1, v0

    :goto_5d
    if-ge v0, v9, :cond_81

    mul-double v2, v7, v36

    .line 618
    iget-object v5, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    mul-double/2addr v2, v5

    invoke-virtual {v4, v0, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move/from16 v2, v30

    :goto_5e
    if-ge v2, v10, :cond_7f

    .line 620
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    mul-double/2addr v11, v14

    add-double/2addr v5, v11

    invoke-virtual {v4, v0, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 621
    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v5

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double/2addr v5, v11

    invoke-virtual {v3, v2, v0, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_7f
    move/from16 v2, v30

    :goto_5f
    if-gt v2, v0, :cond_80

    .line 624
    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v14, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v14, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v11, v14

    add-double/2addr v5, v11

    iget-object v11, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v11, v14

    add-double/2addr v5, v11

    invoke-virtual {v3, v1, v5, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 628
    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v5, v10, v2

    add-int v6, v10, v0

    invoke-virtual {v3, v6, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    invoke-virtual {v3, v5, v0, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_81
    move/from16 v7, v30

    :goto_60
    if-ge v7, v9, :cond_82

    .line 633
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v1, v5

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 634
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 635
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 636
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v3, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 637
    iget-object v0, v13, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_82
    const-wide/16 v1, 0x0

    move-wide/from16 v20, v1

    goto :goto_61

    :cond_83
    move-wide/from16 v31, v0

    move-wide/from16 v51, v5

    move/from16 v18, v11

    move-object/from16 v72, v12

    move-wide/from16 v79, v14

    move/from16 v76, v93

    const-wide/16 v1, 0x0

    :goto_61
    if-nez v18, :cond_84

    move-object v8, v13

    move-wide/from16 v0, v31

    move/from16 v12, v35

    move-wide/from16 v36, v38

    move/from16 v30, v43

    move-wide/from16 v38, v51

    move/from16 v2, v53

    goto :goto_62

    :cond_84
    move-object v8, v13

    move-wide/from16 v0, v31

    move/from16 v12, v35

    move-wide/from16 v36, v38

    move/from16 v30, v43

    move-wide/from16 v38, v51

    move/from16 v2, v57

    :goto_62
    move-wide/from16 v5, v70

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move-wide/from16 v31, v74

    move/from16 v11, v76

    move-wide/from16 v42, v81

    move-object v13, v4

    move/from16 v35, v18

    move-wide/from16 v3, v79

    goto/16 :goto_1
.end method

.method private static caller(I)Ljava/lang/String;
    .locals 2

    .line 2431
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2432
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2433
    aget-object p0, v0, p0

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prelim([D[D)V
    .locals 43

    move-object/from16 v0, p0

    .line 1579
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1581
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    .line 1582
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    .line 1583
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    .line 1585
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v4

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-ge v12, v1, :cond_2

    .line 1593
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {v15, v12, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 1595
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 1598
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v6, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    mul-int v3, v1, v10

    const/4 v6, 0x2

    .line 1601
    div-int/2addr v3, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_3

    .line 1602
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v7, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 1605
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    sub-int v7, v2, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_4

    .line 1607
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v3, v12, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1619
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v12

    sub-int v15, v12, v1

    add-int/lit8 v6, v12, -0x1

    add-int/lit8 v11, v15, -0x1

    mul-int/lit8 v13, v1, 0x2

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    const/4 v14, 0x1

    if-gt v12, v13, :cond_b

    if-lt v12, v14, :cond_7

    if-gt v12, v1, :cond_7

    move/from16 v26, v15

    .line 1628
    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    move/from16 v28, v3

    .line 1629
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v29

    const-wide/16 v22, 0x0

    cmpl-double v3, v29, v22

    if-nez v3, :cond_6

    neg-double v14, v14

    .line 1633
    :cond_6
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v31, v8

    move/from16 v3, v28

    goto/16 :goto_8

    :cond_7
    move/from16 v28, v3

    move/from16 v26, v15

    if-le v12, v1, :cond_a

    .line 1635
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move/from16 v14, v26

    invoke-virtual {v3, v14, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v29

    move v3, v7

    move-wide/from16 v31, v8

    .line 1636
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    neg-double v7, v7

    .line 1637
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v33

    const-wide/16 v22, 0x0

    cmpl-double v9, v33, v22

    if-nez v9, :cond_8

    .line 1638
    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double v7, v7, v24

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v26, v14

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    goto :goto_7

    :cond_8
    move/from16 v26, v14

    .line 1641
    :goto_7
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    cmpl-double v9, v14, v22

    if-nez v9, :cond_9

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    .line 1642
    iget-wide v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v14, v7

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    .line 1645
    :cond_9
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v9, v12, v11, v7, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    move-wide/from16 v14, v29

    move-wide/from16 v41, v7

    move v7, v3

    move/from16 v3, v28

    move-wide/from16 v28, v4

    move-wide/from16 v4, v41

    goto :goto_9

    :cond_a
    move v3, v7

    move-wide/from16 v31, v8

    move/from16 v3, v28

    const-wide/16 v14, 0x0

    :goto_8
    move-wide/from16 v28, v4

    const-wide/16 v4, 0x0

    goto :goto_9

    :cond_b
    move-wide/from16 v31, v8

    move/from16 v26, v15

    sub-int v3, v12, v10

    .line 1648
    div-int/2addr v3, v1

    mul-int v7, v3, v1

    sub-int v7, v12, v7

    sub-int/2addr v7, v1

    add-int/2addr v3, v7

    if-le v3, v1, :cond_c

    sub-int/2addr v3, v1

    move/from16 v41, v7

    move v7, v3

    move/from16 v3, v41

    :cond_c
    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v7, -0x1

    .line 1659
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v28, v4

    invoke-virtual {v14, v3, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {v14, v12, v8, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1660
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v4, v7, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-virtual {v4, v12, v9, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x0

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_f

    .line 1667
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v30, v3

    move-wide/from16 v33, v4

    aget-wide v3, p1, v8

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v35

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v37

    move v5, v1

    move/from16 v39, v2

    add-double v1, v35, v37

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aget-wide v3, p2, v8

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    invoke-virtual {v9, v8, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1670
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_d

    .line 1671
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p1, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1673
    :cond_d
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v8}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_e

    .line 1674
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    aget-wide v2, p2, v8

    invoke-virtual {v1, v8, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move v1, v5

    move/from16 v3, v30

    move-wide/from16 v4, v33

    move/from16 v2, v39

    goto :goto_a

    :cond_f
    move/from16 v39, v2

    move/from16 v30, v3

    move-wide/from16 v33, v4

    move v5, v1

    .line 1678
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->computeObjectiveValue([D)D

    move-result-wide v1

    .line 1679
    iget-boolean v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    neg-double v1, v1

    .line 1680
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v3

    .line 1681
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v12, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const/4 v4, 0x0

    .line 1685
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    move-wide/from16 v18, v1

    goto :goto_c

    .line 1686
    :cond_11
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    cmpg-double v4, v1, v8

    if-gez v4, :cond_12

    .line 1687
    iput v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    :cond_12
    :goto_c
    add-int/lit8 v13, v13, 0x1

    if-gt v3, v13, :cond_19

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    const/4 v4, 0x2

    if-lt v3, v4, :cond_14

    if-gt v3, v10, :cond_14

    .line 1699
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    sub-double v1, v1, v18

    div-double/2addr v1, v14

    invoke-virtual {v4, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/2addr v3, v5

    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    if-ge v4, v3, :cond_13

    div-double v1, v16, v14

    .line 1702
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v13, v1

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v6, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1703
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v6, v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1704
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int v2, v4, v6

    mul-double v8, v8, v28

    invoke-virtual {v1, v2, v6, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    :cond_13
    move/from16 v39, v4

    move v13, v5

    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v4, 0x0

    const/4 v9, 0x2

    const-wide/16 v22, 0x0

    goto/16 :goto_10

    :cond_14
    move/from16 v4, v39

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v6, v5, 0x2

    if-lt v3, v6, :cond_18

    add-int/lit8 v3, v26, 0x1

    mul-int v3, v3, v26

    const/4 v6, 0x2

    .line 1708
    div-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    sub-double v35, v1, v18

    div-double v35, v35, v33

    sub-double v37, v33, v14

    .line 1711
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v39

    sub-double v39, v35, v39

    mul-double v39, v39, v24

    div-double v8, v39, v37

    invoke-virtual {v6, v3, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1712
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    mul-double v8, v8, v33

    mul-double v35, v35, v14

    sub-double v8, v8, v35

    div-double v8, v8, v37

    invoke-virtual {v3, v11, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    mul-double v8, v14, v33

    const-wide/16 v22, 0x0

    cmpg-double v3, v8, v22

    if-gez v3, :cond_17

    .line 1713
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v6, v26

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v26

    cmpg-double v3, v1, v26

    if-gez v3, :cond_16

    .line 1714
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    move/from16 v39, v4

    move v13, v5

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {v3, v12, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1715
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v6, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1716
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    if-ne v1, v12, :cond_15

    .line 1717
    iput v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterInterpolationPointIndex:I

    .line 1719
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v2, v33

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1720
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v12, v11, v14, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_e

    :cond_16
    move/from16 v39, v4

    move v13, v5

    goto :goto_d

    :cond_17
    move/from16 v39, v4

    move v13, v5

    move/from16 v6, v26

    :goto_d
    move-wide/from16 v2, v33

    .line 1722
    :goto_e
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-double/2addr v14, v2

    neg-double v2, v14

    div-double/2addr v2, v8

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1723
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v6, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    div-double v2, v14, v2

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1724
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    sub-double/2addr v2, v14

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1726
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-virtual {v1, v4, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1727
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    div-double v2, v2, v28

    invoke-virtual {v1, v12, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1729
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v1, v4, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    neg-double v2, v2

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-virtual {v1, v6, v11, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_f

    :cond_18
    move/from16 v39, v4

    move v13, v5

    const/4 v4, 0x0

    const-wide/16 v22, 0x0

    :goto_f
    move/from16 v14, v30

    move-wide/from16 v5, v31

    const/4 v9, 0x2

    goto :goto_10

    :cond_19
    move v13, v5

    const/4 v4, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v22, 0x0

    .line 1737
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v5, v31

    invoke-virtual {v3, v4, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1738
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v12, v11, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1739
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    neg-double v8, v5

    move/from16 v14, v30

    invoke-virtual {v3, v14, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 1740
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v3, v7, v11, v8, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v14, -0x1

    mul-int v8, v14, v3

    const/4 v9, 0x2

    .line 1742
    div-int/2addr v8, v9

    add-int/2addr v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    .line 1743
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v12, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v20

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v3, v12, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v11

    mul-double v20, v20, v11

    .line 1744
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    sub-double v11, v18, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v24

    sub-double v11, v11, v24

    add-double/2addr v11, v1

    div-double v11, v11, v20

    invoke-virtual {v3, v8, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1747
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getEvaluations()I

    move-result v1

    move/from16 v2, v39

    if-lt v1, v2, :cond_1a

    return-void

    :cond_1a
    move v1, v13

    move v3, v14

    move-wide/from16 v13, v22

    move-wide/from16 v41, v5

    move v6, v9

    move-wide/from16 v8, v41

    move-wide/from16 v4, v28

    goto/16 :goto_6
.end method

.method private static printMethod()V
    .locals 0

    return-void
.end method

.method private static printState(I)V
    .locals 0

    return-void
.end method

.method private setup([D[D)V
    .locals 16

    move-object/from16 v0, p0

    .line 2376
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2378
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v1

    .line 2379
    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    mul-int v6, v4, v5

    .line 2386
    div-int/2addr v6, v3

    filled-new-array {v4, v6}, [I

    move-result-object v4

    .line 2387
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v7, 0x0

    aget v8, v4, v7

    if-lt v6, v8, :cond_2

    aget v8, v4, v2

    if-gt v6, v8, :cond_2

    .line 2396
    new-array v4, v1, [D

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 2398
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    mul-double/2addr v10, v8

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v7, v1, :cond_0

    .line 2401
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->boundDifference:[D

    aget-wide v12, p2, v7

    aget-wide v14, p1, v7

    sub-double/2addr v12, v14

    aput-wide v12, v4, v7

    .line 2402
    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v4, v8, v10

    if-gez v4, :cond_1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v6

    .line 2405
    iput-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->initialTrustRegionRadius:D

    .line 2409
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v6, v1

    invoke-direct {v4, v6, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2411
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v7, v6, v1

    sub-int/2addr v7, v2

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2413
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 2415
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->originShift:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2416
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->fAtInterpolationPoints:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2417
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2418
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2419
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2420
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2421
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2422
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2423
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->alternativeNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2424
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2425
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    add-int/2addr v4, v1

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 2426
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    mul-int/2addr v1, v5

    div-int/2addr v1, v3

    invoke-direct {v2, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    return-void

    .line 2389
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_INTERPOLATION_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 2383
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4
.end method

.method private trsbox(DLorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)[D
    .locals 80

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 1805
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 1807
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v6

    .line 1808
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/16 v13, 0x0

    if-ge v9, v6, :cond_3

    .line 1843
    invoke-virtual {v2, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1844
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    cmpg-double v8, v15, v20

    if-gtz v8, :cond_0

    .line 1845
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpl-double v8, v15, v13

    if-ltz v8, :cond_1

    .line 1846
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_1

    .line 1848
    :cond_0
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v15

    cmpl-double v8, v11, v15

    if-ltz v8, :cond_1

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpg-double v8, v11, v13

    if-gtz v8, :cond_1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 1850
    invoke-virtual {v2, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1852
    :cond_1
    :goto_1
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 1855
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1856
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->gradientAtTrustRegionCenter:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    invoke-virtual {v1, v9, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    mul-double v8, p1, p1

    const/16 v15, 0x14

    move-wide/from16 v22, v13

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    move-wide/from16 v34, v32

    move-wide/from16 v39, v34

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v48, v45

    move-wide/from16 v51, v48

    move v12, v15

    const/4 v11, 0x0

    const/16 v36, 0x0

    const-wide/high16 v37, -0x4010000000000000L    # -1.0

    const/16 v47, -0x1

    const/16 v50, 0x0

    :goto_2
    const-wide v53, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0x1e

    if-eq v12, v15, :cond_41

    if-eq v12, v13, :cond_40

    const-wide v57, 0x3f847ae147ae147bL    # 0.01

    const/16 v13, 0x64

    const/16 v15, 0x5a

    const/16 v14, 0x32

    const-wide/high16 v60, 0x3fe0000000000000L    # 0.5

    if-eq v12, v14, :cond_29

    if-eq v12, v15, :cond_28

    if-eq v12, v13, :cond_27

    const/16 v15, 0x78

    if-eq v12, v15, :cond_1e

    const/16 v13, 0x96

    const/4 v14, 0x1

    if-eq v12, v13, :cond_e

    const/16 v15, 0xbe

    if-eq v12, v15, :cond_d

    const/16 v15, 0xd2

    if-ne v12, v15, :cond_c

    .line 2235
    invoke-static {v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v12, v6, :cond_6

    move v15, v14

    const-wide/16 v13, 0x0

    .line 2238
    invoke-virtual {v4, v12, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move v14, v15

    const/4 v13, 0x0

    :goto_4
    if-gt v13, v12, :cond_5

    if-ge v13, v12, :cond_4

    .line 2241
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    invoke-virtual {v3, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v59

    mul-double v57, v57, v59

    move-wide/from16 v63, v8

    add-double v8, v53, v57

    invoke-virtual {v4, v12, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_5

    :cond_4
    move-wide/from16 v63, v8

    .line 2243
    :goto_5
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v8

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesValues:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    invoke-virtual {v3, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v57

    mul-double v53, v53, v57

    add-double v8, v8, v53

    invoke-virtual {v4, v13, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v8, v63

    goto :goto_4

    :cond_5
    move-wide/from16 v63, v8

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x96

    goto :goto_3

    :cond_6
    move-wide/from16 v63, v8

    .line 2247
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v7, :cond_8

    .line 2249
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->modelSecondDerivativesParameters:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_7

    .line 2251
    invoke-virtual {v4, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v53

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->interpolationPoints:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v15, v9, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v57

    mul-double v53, v53, v57

    add-double v13, v13, v53

    invoke-virtual {v4, v12, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    move-wide/from16 v12, v37

    const-wide/16 v14, 0x0

    cmpl-double v8, v12, v14

    if-eqz v8, :cond_9

    move-wide/from16 v37, v12

    move-wide/from16 v8, v63

    const/16 v12, 0x32

    goto/16 :goto_23

    :cond_9
    move/from16 v8, v36

    if-le v11, v8, :cond_a

    move/from16 v36, v8

    move-wide/from16 v37, v12

    move-wide/from16 v8, v63

    const/16 v12, 0x96

    goto/16 :goto_23

    :cond_a
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v6, :cond_b

    .line 2262
    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    invoke-virtual {v5, v9, v14, v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    move/from16 v36, v8

    move-wide/from16 v37, v12

    move-wide/from16 v8, v63

    :goto_9
    const/16 v12, 0x78

    goto/16 :goto_23

    .line 2267
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "trsbox"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_d
    move v3, v15

    move-wide/from16 v72, v37

    goto/16 :goto_f

    :cond_e
    move-wide/from16 v63, v8

    move v9, v13

    move/from16 v8, v36

    move-wide/from16 v12, v37

    .line 2124
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v9, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v65, 0x0

    :goto_a
    if-ge v9, v6, :cond_10

    .line 2129
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    const-wide/16 v55, 0x0

    cmpl-double v15, v67, v55

    if-nez v15, :cond_f

    .line 2130
    invoke-virtual {v3, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v36, v36, v67

    .line 2131
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v53, v53, v67

    .line 2132
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    invoke-virtual {v5, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v67, v67, v69

    add-double v65, v65, v67

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_10
    const-wide/high16 v67, 0x4031000000000000L    # 17.0

    mul-double v67, v67, v32

    const-wide v69, 0x4008cccccccccccdL    # 3.1

    add-double v14, v67, v69

    double-to-int v9, v14

    const/4 v14, 0x0

    const/4 v15, -0x1

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    :goto_b
    if-ge v14, v9, :cond_13

    move/from16 v38, v7

    move/from16 v62, v8

    int-to-double v7, v14

    mul-double v7, v7, v32

    move/from16 v71, v11

    move-wide/from16 v72, v12

    int-to-double v11, v9

    div-double v39, v7, v11

    add-double v7, v39, v39

    mul-double v11, v39, v39

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v17

    div-double/2addr v7, v11

    mul-double v11, v39, v65

    sub-double v11, v11, v53

    sub-double v11, v11, v53

    mul-double v11, v11, v39

    add-double v11, v36, v11

    mul-double v74, v39, v26

    sub-double v74, v74, v45

    mul-double v76, v7, v60

    mul-double v76, v76, v11

    sub-double v74, v74, v76

    mul-double v7, v7, v74

    cmpl-double v11, v7, v67

    if-lez v11, :cond_11

    move-wide/from16 v67, v7

    move v15, v14

    move-wide/from16 v41, v69

    goto :goto_c

    :cond_11
    add-int/lit8 v11, v15, 0x1

    if-ne v14, v11, :cond_12

    move-wide/from16 v43, v7

    :cond_12
    :goto_c
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v69, v7

    move/from16 v7, v38

    move/from16 v8, v62

    move/from16 v11, v71

    move-wide/from16 v12, v72

    goto :goto_b

    :cond_13
    move/from16 v38, v7

    move/from16 v62, v8

    move/from16 v71, v11

    move-wide/from16 v72, v12

    if-gez v15, :cond_14

    :goto_d
    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move/from16 v11, v71

    goto/16 :goto_22

    :cond_14
    if-ge v15, v9, :cond_15

    sub-double v7, v43, v41

    add-double v67, v67, v67

    sub-double v67, v67, v41

    sub-double v67, v67, v43

    div-double v7, v7, v67

    int-to-double v11, v15

    mul-double v7, v7, v60

    add-double/2addr v11, v7

    mul-double v11, v11, v32

    int-to-double v7, v9

    div-double/2addr v11, v7

    move-wide/from16 v39, v11

    :cond_15
    mul-double v7, v39, v39

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v7

    add-double/2addr v7, v11

    div-double/2addr v13, v7

    add-double v17, v39, v39

    div-double v17, v17, v7

    mul-double v65, v65, v39

    sub-double v65, v65, v53

    sub-double v65, v65, v53

    mul-double v65, v65, v39

    add-double v36, v36, v65

    mul-double v7, v39, v26

    sub-double v7, v7, v45

    mul-double v60, v60, v17

    mul-double v60, v60, v36

    sub-double v7, v7, v60

    mul-double v7, v7, v17

    const-wide/16 v36, 0x0

    cmpg-double v53, v7, v36

    if-gtz v53, :cond_16

    goto :goto_d

    :cond_16
    const/4 v11, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    :goto_e
    if-ge v11, v6, :cond_18

    .line 2184
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v60, v13, v36

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v60, v60, v65

    add-double v53, v53, v60

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    mul-double v60, v60, v17

    move/from16 v65, v9

    move v12, v10

    add-double v9, v53, v60

    invoke-virtual {v1, v11, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2185
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    const-wide/16 v53, 0x0

    cmpl-double v9, v9, v53

    if-nez v9, :cond_17

    .line 2186
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    mul-double v53, v53, v13

    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v60

    mul-double v60, v60, v17

    add-double v2, v53, v60

    invoke-virtual {v9, v11, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2187
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double/2addr v2, v9

    add-double v26, v26, v2

    .line 2189
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, v2

    add-double v22, v22, v2

    .line 2192
    :cond_17
    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, v13

    invoke-virtual {v4, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    mul-double v9, v9, v17

    add-double/2addr v2, v9

    invoke-virtual {v5, v11, v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v10, v12

    move/from16 v9, v65

    goto :goto_e

    :cond_18
    move/from16 v65, v9

    move v12, v10

    add-double v28, v28, v7

    move/from16 v11, v47

    if-ltz v11, :cond_19

    move/from16 v2, v65

    if-ne v15, v2, :cond_19

    add-int/lit8 v10, v12, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v13, v48

    .line 2197
    invoke-virtual {v2, v11, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    move-object/from16 v3, p5

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move/from16 v11, v71

    move-wide/from16 v37, v72

    const/16 v12, 0x64

    goto/16 :goto_23

    :cond_19
    move-object/from16 v2, p4

    move-wide/from16 v13, v48

    mul-double v57, v57, v28

    cmpl-double v3, v7, v57

    if-lez v3, :cond_1a

    move-object/from16 v3, p5

    move/from16 v47, v11

    move v10, v12

    move-wide/from16 v48, v13

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move/from16 v11, v71

    move-wide/from16 v37, v72

    goto/16 :goto_9

    :cond_1a
    const/16 v3, 0xbe

    .line 2209
    :goto_f
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    :goto_10
    if-ge v5, v6, :cond_1d

    .line 2214
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    add-double/2addr v3, v7

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 2216
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2217
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_1b

    .line 2218
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2220
    :cond_1b
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_1c

    .line 2221
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2223
    :cond_1c
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->newPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    sub-double/2addr v3, v9

    invoke-virtual {v1, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2225
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v13, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1d
    const/4 v1, 0x2

    .line 2228
    new-array v1, v1, [D

    const/4 v9, 0x0

    aput-wide v13, v1, v9

    const/4 v2, 0x1

    aput-wide v72, v1, v2

    return-object v1

    :cond_1e
    move-wide/from16 v63, v8

    move v12, v10

    move/from16 v71, v11

    move v10, v15

    move/from16 v62, v36

    move-wide/from16 v72, v37

    move/from16 v11, v47

    move-wide/from16 v13, v48

    const/16 v3, 0xbe

    const/4 v9, 0x0

    const/16 v15, 0xd2

    move/from16 v38, v7

    .line 2053
    invoke-static {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v10, v71, 0x1

    mul-double v16, v22, v24

    mul-double v18, v26, v26

    sub-double v16, v16, v18

    mul-double v53, v53, v28

    mul-double v53, v53, v28

    cmpg-double v18, v16, v53

    if-gtz v18, :cond_1f

    move/from16 v47, v11

    move-wide/from16 v48, v13

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move-wide/from16 v37, v72

    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    move v11, v10

    move v10, v12

    move v12, v3

    move-object/from16 v3, p5

    goto/16 :goto_2

    .line 2059
    :cond_1f
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move v3, v9

    :goto_11
    if-ge v3, v6, :cond_21

    .line 2061
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    move/from16 p2, v10

    const-wide/16 v9, 0x0

    cmpl-double v11, v16, v9

    if-nez v11, :cond_20

    .line 2062
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    mul-double v16, v16, v26

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v32

    mul-double v32, v32, v24

    sub-double v16, v16, v32

    div-double v9, v16, v7

    move-object/from16 v11, p5

    invoke-virtual {v11, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    const-wide/16 v9, 0x0

    goto :goto_12

    :cond_20
    move-object/from16 v11, p5

    .line 2064
    invoke-virtual {v11, v3, v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, p2

    const/4 v9, 0x0

    goto :goto_11

    :cond_21
    move-object/from16 v11, p5

    move/from16 p2, v10

    const-wide/16 v9, 0x0

    neg-double v7, v7

    move-wide/from16 v48, v13

    const/4 v3, 0x0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const/16 v47, -0x1

    :goto_13
    if-ge v3, v6, :cond_26

    .line 2077
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    cmpl-double v13, v13, v9

    if-nez v13, :cond_25

    .line 2078
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    add-double/2addr v9, v13

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    sub-double/2addr v9, v13

    .line 2079
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v13, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v13

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v17

    sub-double v13, v13, v17

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v17

    sub-double v13, v13, v17

    const-wide/16 v17, 0x0

    cmpg-double v15, v9, v17

    if-gtz v15, :cond_22

    add-int/lit8 v10, v12, 0x1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 2082
    invoke-virtual {v2, v3, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_14

    :cond_22
    cmpg-double v15, v13, v17

    if-gtz v15, :cond_23

    add-int/lit8 v10, v12, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 2086
    invoke-virtual {v2, v3, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto/16 :goto_14

    .line 2090
    :cond_23
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    .line 2092
    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    mul-double v36, v36, v36

    mul-double v45, v45, v45

    add-double v36, v36, v45

    .line 2095
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    sub-double v45, v45, v53

    mul-double v45, v45, v45

    sub-double v45, v36, v45

    const-wide/16 v53, 0x0

    cmpl-double v15, v45, v53

    if-lez v15, :cond_24

    .line 2098
    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v45

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    sub-double v45, v45, v53

    mul-double v53, v32, v45

    cmpl-double v15, v53, v9

    if-lez v15, :cond_24

    div-double v32, v9, v45

    move/from16 v47, v3

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    .line 2106
    :cond_24
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v45

    sub-double v9, v9, v45

    mul-double/2addr v9, v9

    sub-double v36, v36, v9

    const-wide/16 v9, 0x0

    cmpl-double v15, v36, v9

    if-lez v15, :cond_25

    .line 2109
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    invoke-virtual {v11, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    add-double v9, v9, v36

    mul-double v36, v32, v9

    cmpl-double v15, v36, v13

    if-lez v15, :cond_25

    div-double/2addr v13, v9

    move/from16 v47, v3

    move-wide/from16 v32, v13

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    :cond_25
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v9, 0x0

    const/16 v15, 0xd2

    goto/16 :goto_13

    :cond_26
    move v10, v12

    :goto_14
    move-wide/from16 v45, v7

    move-object v3, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move-wide/from16 v37, v72

    const/16 v12, 0xd2

    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    move/from16 v11, p2

    goto/16 :goto_2

    :cond_27
    move-wide/from16 v63, v8

    move/from16 v71, v11

    move/from16 v62, v36

    move-wide/from16 v72, v37

    move/from16 v11, v47

    move/from16 v38, v7

    move-object v7, v3

    move v3, v10

    move v4, v13

    move-wide/from16 v67, v48

    move/from16 v9, v50

    move/from16 v36, v71

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_21

    :cond_28
    move/from16 v38, v7

    move-wide/from16 v63, v8

    move/from16 v71, v11

    move/from16 v62, v36

    move/from16 v11, v47

    move-object v7, v3

    move v3, v10

    move v4, v15

    move-wide/from16 v67, v48

    move/from16 v9, v50

    move/from16 v11, v71

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_20

    :cond_29
    move-wide/from16 v63, v8

    move v12, v10

    move/from16 v71, v11

    move v9, v14

    move/from16 v62, v36

    move-wide/from16 v72, v37

    move/from16 v11, v47

    move-wide/from16 v13, v48

    const/16 v8, 0xd2

    move/from16 v38, v7

    move-object v7, v3

    const/16 v3, 0xbe

    .line 1909
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move-wide/from16 v53, v63

    const/4 v9, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v47, 0x0

    :goto_15
    if-ge v9, v6, :cond_2b

    .line 1914
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    const-wide/16 v55, 0x0

    cmpl-double v10, v65, v55

    if-nez v10, :cond_2a

    .line 1916
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    mul-double v65, v65, v65

    sub-double v53, v53, v65

    .line 1918
    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v65, v65, v67

    add-double v36, v36, v65

    .line 1919
    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    invoke-virtual {v4, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v67

    mul-double v65, v65, v67

    add-double v47, v47, v65

    :cond_2a
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_2b
    const-wide/16 v9, 0x0

    cmpg-double v49, v53, v9

    if-gtz v49, :cond_2c

    move-object v3, v7

    move/from16 v47, v11

    move-wide/from16 v48, v13

    move/from16 v7, v38

    move/from16 v36, v62

    move/from16 v11, v71

    move-wide/from16 v37, v72

    move-wide v13, v9

    move v10, v12

    move v12, v15

    move-wide/from16 v8, v63

    goto/16 :goto_24

    :cond_2c
    mul-double v55, v30, v53

    mul-double v65, v36, v36

    add-double v55, v55, v65

    .line 1925
    invoke-static/range {v55 .. v56}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v55

    cmpg-double v11, v36, v9

    if-gez v11, :cond_2d

    sub-double v55, v55, v36

    div-double v55, v55, v30

    goto :goto_16

    :cond_2d
    add-double v55, v55, v36

    div-double v55, v53, v55

    :goto_16
    move-wide/from16 v3, v55

    cmpl-double v11, v47, v9

    if-lez v11, :cond_2e

    div-double v8, v22, v47

    .line 1934
    invoke-static {v3, v4, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    goto :goto_17

    :cond_2e
    move-wide v8, v3

    :goto_17
    move-wide v9, v8

    const/4 v8, 0x0

    const/4 v11, -0x1

    :goto_18
    if-ge v8, v6, :cond_31

    .line 1942
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v36

    const-wide/16 v53, 0x0

    cmpl-double v36, v36, v53

    if-eqz v36, :cond_30

    .line 1943
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trustRegionCenterOffset:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v55

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    add-double v65, v55, v65

    .line 1944
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v55

    cmpl-double v15, v55, v53

    if-lez v15, :cond_2f

    .line 1945
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->upperDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    sub-double v53, v53, v65

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    goto :goto_19

    .line 1947
    :cond_2f
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lowerDifference:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v15, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    sub-double v53, v53, v65

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v65

    :goto_19
    div-double v53, v53, v65

    cmpg-double v15, v53, v9

    if-gez v15, :cond_30

    move v11, v8

    move-wide/from16 v9, v53

    :cond_30
    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x5a

    goto :goto_18

    :cond_31
    const-wide/16 v53, 0x0

    cmpl-double v8, v9, v53

    if-lez v8, :cond_36

    add-int/lit8 v8, v71, 0x1

    move-wide/from16 v65, v3

    div-double v3, v47, v30

    const/4 v15, -0x1

    if-ne v11, v15, :cond_32

    cmpl-double v37, v3, v53

    if-lez v37, :cond_32

    move-wide/from16 v67, v13

    move-wide/from16 v13, v72

    .line 1963
    invoke-static {v13, v14, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v37, v13, v20

    if-nez v37, :cond_33

    move-wide v13, v3

    goto :goto_1a

    :cond_32
    move-wide/from16 v67, v13

    move-wide/from16 v13, v72

    :cond_33
    :goto_1a
    const/4 v3, 0x0

    const-wide/16 v51, 0x0

    :goto_1b
    if-ge v3, v6, :cond_35

    .line 1971
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v69, v69, v9

    add-double v4, v53, v69

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1972
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    const-wide/16 v53, 0x0

    cmpl-double v4, v4, v53

    if-nez v4, :cond_34

    .line 1974
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, v4

    add-double v51, v51, v4

    .line 1977
    :cond_34
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v53

    invoke-virtual {v7, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v69

    mul-double v69, v69, v9

    move-wide/from16 v71, v13

    add-double v13, v53, v69

    invoke-virtual {v4, v3, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p7

    move-wide/from16 v13, v71

    goto :goto_1b

    :cond_35
    move-wide/from16 v71, v13

    mul-double v60, v60, v9

    mul-double v60, v60, v47

    sub-double v3, v22, v60

    mul-double/2addr v3, v9

    const-wide/16 v13, 0x0

    .line 1981
    invoke-static {v3, v4, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v55

    add-double v28, v28, v55

    move-wide v3, v13

    move-wide/from16 v13, v55

    move-wide/from16 v78, v22

    move-wide/from16 v22, v51

    move-wide/from16 v51, v78

    goto :goto_1c

    :cond_36
    move-wide/from16 v65, v3

    move-wide/from16 v67, v13

    move-wide/from16 v3, v53

    move-wide/from16 v13, v72

    const/4 v15, -0x1

    move/from16 v8, v71

    move-wide/from16 v71, v13

    move-wide v13, v3

    :goto_1c
    if-ltz v11, :cond_39

    add-int/lit8 v10, v12, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1989
    invoke-virtual {v2, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1990
    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v16

    cmpg-double v5, v16, v3

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-gez v5, :cond_37

    .line 1991
    invoke-virtual {v2, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1994
    :cond_37
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v20, v20, v20

    sub-double v20, v63, v20

    cmpg-double v5, v20, v3

    if-gtz v5, :cond_38

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v3, v7

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v48, v67

    move-wide/from16 v37, v71

    const/16 v12, 0xbe

    goto :goto_1d

    :cond_38
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v3, v7

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v48, v67

    move-wide/from16 v37, v71

    const/16 v12, 0x14

    :goto_1d
    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    move v11, v8

    move-wide/from16 v8, v20

    goto/16 :goto_2

    :cond_39
    move v3, v12

    move-wide v4, v13

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v9, v65

    if-gez v9, :cond_3c

    move/from16 v9, v50

    if-ne v8, v9, :cond_3a

    :goto_1e
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move v10, v3

    move-object v3, v7

    move/from16 v50, v9

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v48, v67

    move-wide/from16 v37, v71

    const/16 v12, 0xbe

    :goto_1f
    const-wide/16 v13, 0x0

    const/16 v15, 0x14

    move v11, v8

    move-wide/from16 v8, v63

    goto/16 :goto_2

    :cond_3a
    mul-double v57, v57, v28

    cmpg-double v4, v4, v57

    if-gtz v4, :cond_3b

    goto :goto_1e

    :cond_3b
    div-double v34, v22, v51

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move v10, v3

    move-object v3, v7

    move/from16 v50, v9

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v48, v67

    move-wide/from16 v37, v71

    const/16 v12, 0x1e

    goto :goto_1f

    :cond_3c
    move/from16 v9, v50

    move/from16 v47, v11

    const/16 v4, 0x5a

    move v11, v8

    .line 2017
    :goto_20
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    move/from16 v36, v11

    const/16 v4, 0x64

    const-wide/16 v72, 0x0

    .line 2026
    :goto_21
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    add-int/lit8 v4, v6, -0x1

    move v10, v3

    if-lt v10, v4, :cond_3d

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v3, v7

    move/from16 v50, v9

    move/from16 v11, v36

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move-wide/from16 v48, v67

    :goto_22
    move-wide/from16 v37, v72

    const/16 v12, 0xbe

    :goto_23
    const-wide/16 v13, 0x0

    :goto_24
    const/16 v15, 0x14

    goto/16 :goto_2

    :cond_3d
    const/4 v5, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    :goto_25
    if-ge v5, v6, :cond_3f

    .line 2034
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    const-wide/16 v20, 0x0

    cmpl-double v3, v3, v20

    if-nez v3, :cond_3e

    .line 2036
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double v24, v24, v3

    .line 2038
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    mul-double v3, v3, v20

    add-double v26, v26, v3

    .line 2040
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double v22, v22, v3

    .line 2042
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->trialStepPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    invoke-virtual {v7, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_26

    :cond_3e
    const-wide/16 v3, 0x0

    .line 2044
    invoke-virtual {v7, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    :goto_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_3f
    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v3, v7

    move/from16 v50, v9

    move/from16 v11, v36

    move/from16 v7, v38

    move-wide/from16 v8, v63

    move-wide/from16 v48, v67

    move-wide/from16 v37, v72

    const/16 v12, 0xd2

    goto :goto_23

    :cond_40
    move-wide/from16 v63, v8

    move/from16 v71, v11

    move/from16 v62, v36

    move-wide/from16 v72, v37

    move/from16 v11, v47

    move-wide/from16 v67, v48

    move/from16 v9, v50

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v15, -0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move/from16 v38, v7

    move-object v7, v3

    const/16 v3, 0x14

    const/16 v4, 0x1e

    goto :goto_27

    :cond_41
    move-wide/from16 v63, v8

    move/from16 v71, v11

    move/from16 v62, v36

    move-wide/from16 v72, v37

    move/from16 v11, v47

    move-wide/from16 v67, v48

    move/from16 v9, v50

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move/from16 v38, v7

    move-object v7, v3

    move v3, v15

    const/4 v15, -0x1

    .line 1872
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/16 v4, 0x1e

    const-wide/16 v34, 0x0

    .line 1876
    :goto_27
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printState(I)V

    const/4 v5, 0x0

    const-wide/16 v30, 0x0

    :goto_28
    if-ge v5, v6, :cond_44

    .line 1879
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    const-wide/16 v3, 0x0

    cmpl-double v8, v20, v3

    if-eqz v8, :cond_42

    .line 1880
    invoke-virtual {v7, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_29

    :cond_42
    cmpl-double v8, v34, v3

    if-nez v8, :cond_43

    .line 1882
    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v7, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    goto :goto_29

    .line 1884
    :cond_43
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double v3, v3, v34

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v20

    sub-double v3, v3, v20

    invoke-virtual {v7, v5, v3, v4}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 1887
    :goto_29
    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double v30, v30, v3

    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x14

    goto :goto_28

    :cond_44
    const-wide/16 v3, 0x0

    cmpl-double v5, v30, v3

    if-nez v5, :cond_45

    move-object/from16 v5, p7

    move-wide v13, v3

    move-object v3, v7

    move/from16 v50, v9

    :goto_2a
    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move-wide/from16 v48, v67

    move/from16 v11, v71

    move-wide/from16 v37, v72

    const/16 v12, 0xbe

    :goto_2b
    const/16 v15, 0x14

    move-object/from16 v4, p6

    goto/16 :goto_2

    :cond_45
    cmpl-double v5, v34, v3

    if-nez v5, :cond_46

    add-int v5, v71, v6

    sub-int v50, v5, v10

    move-wide/from16 v22, v30

    goto :goto_2c

    :cond_46
    move/from16 v50, v9

    :goto_2c
    mul-double v8, v22, v63

    mul-double v53, v53, v28

    mul-double v53, v53, v28

    cmpg-double v5, v8, v53

    if-gtz v5, :cond_47

    move-object/from16 v5, p7

    move-wide v13, v3

    move-object v3, v7

    goto :goto_2a

    :cond_47
    move-object/from16 v5, p7

    move-wide v13, v3

    move-object v3, v7

    move/from16 v47, v11

    move/from16 v7, v38

    move/from16 v36, v62

    move-wide/from16 v8, v63

    move-wide/from16 v48, v67

    move/from16 v11, v71

    move-wide/from16 v37, v72

    const/16 v12, 0xd2

    goto :goto_2b
.end method

.method private update(DDI)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 2292
    invoke-static {}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->printMethod()V

    .line 2294
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v2

    .line 2295
    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->numberOfInterpolationPoints:I

    sub-int v4, v3, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 2299
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    add-int v7, v3, v2

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    move v13, v9

    :goto_1
    if-ge v13, v4, :cond_0

    .line 2305
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v10, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-wide v13, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v11, v13

    :goto_2
    if-ge v5, v4, :cond_3

    .line 2313
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 2314
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v10, v13, v11

    if-lez v10, :cond_2

    .line 2316
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    .line 2318
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double/2addr v13, v13

    mul-double/2addr v15, v15

    add-double/2addr v13, v15

    .line 2319
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 2320
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v15

    div-double/2addr v15, v13

    .line 2321
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v10, v1, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v17

    div-double v17, v17, v13

    move v10, v9

    :goto_3
    if-ge v10, v3, :cond_2

    .line 2323
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v13, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v13

    mul-double/2addr v13, v15

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double v7, v7, v17

    add-double/2addr v13, v7

    .line 2324
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    mul-double v21, v21, v15

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v8, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v23

    mul-double v23, v23, v17

    move-wide/from16 v25, v11

    sub-double v11, v21, v23

    invoke-virtual {v7, v10, v5, v11, v12}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    .line 2325
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v7, v10, v9, v13, v14}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v25

    goto :goto_3

    :cond_2
    move-wide/from16 v25, v11

    .line 2328
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v1, v5, v10, v11}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v11, v25

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_4
    if-ge v4, v3, :cond_4

    .line 2335
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v5, v4, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v10

    mul-double/2addr v7, v10

    invoke-virtual {v6, v4, v7, v8}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2337
    :cond_4
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v4

    .line 2338
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v7

    .line 2339
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-virtual {v10, v1, v11, v12}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2343
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    div-double v12, v7, v10

    .line 2345
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v14, v1, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v14

    div-double/2addr v14, v10

    move v10, v9

    :goto_5
    if-ge v10, v3, :cond_5

    .line 2347
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->zMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v11, v10, v9}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v16

    mul-double v16, v16, v12

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v14

    move-wide/from16 v21, v12

    sub-double v12, v16, v19

    const/4 v9, 0x0

    invoke-virtual {v11, v10, v9, v12, v13}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v21

    goto :goto_5

    :cond_5
    move v10, v9

    :goto_6
    if-ge v10, v2, :cond_8

    add-int v11, v3, v10

    .line 2355
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v12, v1, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 2356
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v12, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v12

    mul-double/2addr v12, v4

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v14

    mul-double/2addr v14, v7

    sub-double/2addr v12, v14

    div-double v12, v12, p3

    move-wide/from16 v14, p1

    move/from16 v16, v10

    neg-double v9, v14

    .line 2357
    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v9, v9, v19

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v19

    mul-double v19, v19, v7

    sub-double v9, v9, v19

    div-double v9, v9, p3

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v11, :cond_7

    move/from16 v17, v2

    .line 2359
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v19, v4

    move/from16 v4, v16

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v21

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->lagrangeValuesAtNewPoint:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v12

    add-double v21, v21, v23

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getEntry(I)D

    move-result-wide v23

    mul-double v23, v23, v9

    move-object/from16 v16, v6

    add-double v5, v21, v23

    invoke-virtual {v2, v1, v4, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    if-lt v1, v3, :cond_6

    .line 2362
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bMatrix:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    sub-int v5, v1, v3

    move-wide/from16 v21, v7

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-virtual {v2, v11, v5, v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    goto :goto_8

    :cond_6
    move-wide/from16 v21, v7

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v17

    move-wide/from16 v7, v21

    move/from16 v16, v4

    move-wide/from16 v4, v19

    goto :goto_7

    :cond_7
    move/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v7

    move/from16 v4, v16

    move-object/from16 v16, v6

    add-int/lit8 v10, v4, 0x1

    move/from16 v1, p5

    move-wide/from16 v4, v19

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 5

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getLowerBound()[D

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getUpperBound()[D

    move-result-object v1

    .line 236
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->setup([D[D)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    .line 239
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->getStartPoint()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 241
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->bobyqa([D[D)D

    move-result-wide v0

    .line 243
    new-instance v2, Lorg/apache/commons/math3/optim/PointValuePair;

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->currentBest:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/BOBYQAOptimizer;->isMinimize:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    neg-double v0, v0

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    return-object v2
.end method
