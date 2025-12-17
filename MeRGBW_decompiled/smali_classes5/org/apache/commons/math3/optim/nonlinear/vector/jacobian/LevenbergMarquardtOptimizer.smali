.class public Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TWO_EPS:D


# instance fields
.field private beta:[D

.field private final costRelativeTolerance:D

.field private diagR:[D

.field private final initialStepBoundFactor:D

.field private jacNorm:[D

.field private lmDir:[D

.field private lmPar:D

.field private final orthoTolerance:D

.field private final parRelativeTolerance:D

.field private permutation:[I

.field private final qrRankingThreshold:D

.field private rank:I

.field private solvedCols:I

.field private weightedJacobian:[[D

.field private weightedResidual:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 120
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 168
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 247
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 281
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 282
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 283
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 284
    iput-wide p7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 285
    iput-wide p9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 219
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 220
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 221
    iput-wide p6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 222
    iput-wide p8, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 223
    iput-wide p10, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 187
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optim/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 956
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 958
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    .line 736
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 737
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 738
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 739
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 741
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v8, v7, v4

    aput-wide v8, v6, v3

    .line 742
    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    .line 746
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_6

    .line 750
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    .line 751
    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 753
    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 755
    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    .line 761
    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_5

    .line 762
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 766
    aget-wide v10, v1, v4

    cmpl-double v10, v10, v5

    if-eqz v10, :cond_4

    .line 770
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v9

    .line 771
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, v1, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v13, v15

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-gez v10, :cond_3

    .line 772
    aget-wide v15, v1, v4

    div-double v15, v11, v15

    mul-double v17, v15, v15

    add-double v17, v17, v13

    .line 773
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v13

    goto :goto_4

    .line 776
    :cond_3
    aget-wide v15, v1, v4

    div-double/2addr v15, v11

    mul-double v17, v15, v15

    add-double v17, v17, v13

    .line 777
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v13

    move-wide/from16 v27, v13

    move-wide v13, v15

    move-wide/from16 v15, v27

    .line 783
    :goto_4
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    mul-double/2addr v11, v15

    aget-wide v17, v1, v4

    mul-double v17, v17, v13

    add-double v11, v11, v17

    aput-wide v11, v10, v9

    .line 784
    aget-wide v10, p4, v4

    mul-double v17, v15, v10

    mul-double v19, v13, v7

    add-double v17, v17, v19

    neg-double v5, v13

    mul-double/2addr v10, v5

    mul-double/2addr v7, v15

    add-double/2addr v7, v10

    .line 786
    aput-wide v17, p4, v4

    add-int/lit8 v10, v4, 0x1

    .line 789
    :goto_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_4

    .line 790
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v17, v11, v9

    mul-double v21, v15, v17

    .line 791
    aget-wide v23, v1, v10

    mul-double v25, v13, v23

    add-double v21, v21, v25

    mul-double v17, v17, v5

    mul-double v23, v23, v15

    add-double v17, v17, v23

    .line 792
    aput-wide v17, v1, v10

    .line 793
    aput-wide v21, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    .line 800
    :cond_5
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v3

    aget-wide v6, v4, v5

    aput-wide v6, v1, v3

    .line 801
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v7, v6, v3

    aput-wide v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 807
    :goto_6
    iget v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v5, :cond_9

    .line 808
    aget-wide v6, v1, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    if-ne v4, v5, :cond_7

    move v4, v3

    :cond_7
    if-ge v4, v5, :cond_8

    .line 812
    aput-wide v8, p4, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const-wide/16 v8, 0x0

    if-lez v4, :cond_b

    add-int/lit8 v3, v4, -0x1

    :goto_7
    if-ltz v3, :cond_b

    .line 817
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v3

    add-int/lit8 v6, v3, 0x1

    move-wide v10, v8

    :goto_8
    if-ge v6, v4, :cond_a

    .line 820
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v5

    aget-wide v14, p4, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 822
    :cond_a
    aget-wide v5, p4, v3

    sub-double/2addr v5, v10

    aget-wide v10, v1, v3

    div-double/2addr v5, v10

    aput-wide v5, p4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 827
    :cond_b
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_c

    .line 828
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    aget-wide v4, p4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method private determineLMParameter([DD[D[D[D[D)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 564
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    move v9, v8

    .line 568
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 569
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 572
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 574
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 575
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 576
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    move v10, v8

    :goto_3
    if-ge v10, v7, :cond_2

    .line 578
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v21, v11, v9

    mul-double v21, v21, v13

    sub-double v17, v17, v21

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 580
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 586
    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 587
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 588
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v13, v10

    mul-double/2addr v11, v14

    .line 589
    aput-wide v11, v4, v10

    mul-double/2addr v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 592
    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    .line 595
    iput-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 604
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 605
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 606
    iget-object v12, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v11

    .line 607
    aget-wide v21, v4, v12

    aget-wide v23, p4, v12

    div-double v23, v23, v7

    mul-double v21, v21, v23

    aput-wide v21, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    const/4 v15, 0x0

    .line 610
    :goto_6
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v13, :cond_8

    .line 611
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    .line 614
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v14

    aget-wide v27, v4, v5

    mul-double v25, v25, v27

    add-double v23, v23, v25

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p6

    goto :goto_7

    .line 616
    :cond_7
    aget-wide v25, v4, v13

    sub-double v25, v25, v23

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v23, v5, v13

    div-double v25, v25, v23

    .line 617
    aput-wide v25, v4, v13

    mul-double v25, v25, v25

    add-double v11, v11, v25

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p6

    goto :goto_6

    :cond_8
    mul-double/2addr v11, v2

    div-double v11, v9, v11

    goto :goto_8

    :cond_9
    move-wide/from16 v21, v13

    const-wide/16 v11, 0x0

    :goto_8
    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    .line 625
    :goto_9
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v15, :cond_b

    .line 626
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    .line 629
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v9

    aget-wide v27, v10, v15

    aget-wide v29, v1, v9

    mul-double v27, v27, v29

    add-double v23, v23, v27

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 631
    :cond_a
    aget-wide v9, p4, v15

    div-double v23, v23, v9

    mul-double v23, v23, v23

    add-double v13, v13, v23

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v25

    goto :goto_9

    :cond_b
    move-wide/from16 v25, v9

    .line 634
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v13, v9, v2

    const-wide/16 v19, 0x0

    cmpl-double v5, v13, v19

    if-nez v5, :cond_c

    .line 637
    sget-wide v13, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    div-double/2addr v13, v5

    .line 642
    :cond_c
    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v5, v5, v19

    if-nez v5, :cond_d

    div-double/2addr v9, v7

    .line 644
    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v5, 0xa

    move-wide/from16 v9, v25

    :goto_b
    if-ltz v5, :cond_18

    .line 650
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v6, v6, v19

    if-nez v6, :cond_e

    .line 651
    sget-wide v6, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    move-wide/from16 v23, v9

    mul-double v8, v13, v17

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_c

    :cond_e
    move-wide/from16 v23, v9

    .line 653
    :goto_c
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x0

    .line 654
    :goto_d
    iget v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v8, v9, :cond_f

    .line 655
    iget-object v9, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v8

    .line 656
    aget-wide v17, p4, v9

    mul-double v17, v17, v6

    aput-wide v17, v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_f
    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 658
    invoke-direct {v0, v1, v4, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    .line 661
    :goto_e
    iget v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v15, :cond_10

    .line 662
    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    .line 663
    aget-wide v17, p4, v15

    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v25, v1, v15

    mul-double v17, v17, v25

    .line 664
    aput-wide v17, v9, v15

    mul-double v17, v17, v17

    add-double v6, v6, v17

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_e

    .line 667
    :cond_10
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v17, v6, v2

    .line 673
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v1, v25, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v17, v23

    if-gtz v1, :cond_11

    cmpg-double v1, v23, v19

    if-gez v1, :cond_11

    goto/16 :goto_13

    :cond_11
    const/4 v1, 0x0

    .line 679
    :goto_f
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v10, :cond_12

    .line 680
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v1

    .line 681
    aget-wide v23, v9, v10

    aget-wide v25, p4, v10

    mul-double v23, v23, v25

    div-double v23, v23, v6

    aput-wide v23, v4, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    .line 683
    :cond_13
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v6, :cond_14

    .line 684
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v1

    .line 685
    aget-wide v23, v4, v6

    aget-wide v25, v8, v1

    div-double v23, v23, v25

    aput-wide v23, v4, v6

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    .line 687
    :goto_10
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v10, :cond_13

    .line 688
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v7

    aget-wide v25, v4, v10

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v15, v15, v7

    aget-wide v27, v15, v6

    mul-double v27, v27, v23

    sub-double v25, v25, v27

    aput-wide v25, v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 692
    :goto_11
    iget v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v10, :cond_15

    .line 693
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v1

    aget-wide v23, v4, v10

    mul-double v23, v23, v23

    add-double v6, v6, v23

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_15
    mul-double/2addr v6, v2

    div-double v6, v17, v6

    const-wide/16 v19, 0x0

    cmpl-double v1, v17, v19

    if-lez v1, :cond_16

    .line 700
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    move-wide v11, v1

    goto :goto_12

    :cond_16
    cmpg-double v1, v17, v19

    if-gez v1, :cond_17

    .line 702
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide v13, v1

    .line 706
    :cond_17
    :goto_12
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-double/2addr v1, v6

    invoke-static {v11, v12, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v9, v17

    goto/16 :goto_b

    :cond_18
    :goto_13
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 935
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 936
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 939
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 942
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 944
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double/2addr v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 946
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v3

    mul-double/2addr v10, v4

    sub-double/2addr v7, v10

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move-object/from16 v3, p1

    .line 859
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 861
    array-length v2, v1

    const/4 v3, 0x0

    .line 862
    aget-object v1, v1, v3

    array-length v1, v1

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 866
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_0

    .line 869
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 872
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_b

    const/4 v7, -0x1

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v10, v4

    :goto_3
    if-ge v10, v1, :cond_5

    move v11, v4

    move-wide v12, v5

    :goto_4
    if-ge v11, v2, :cond_2

    .line 884
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    aget-wide v15, v14, v15

    mul-double/2addr v15, v15

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 887
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_4

    cmpl-double v11, v12, v8

    if-lez v11, :cond_3

    move v7, v10

    move-wide v8, v12

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 888
    :cond_4
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4

    .line 896
    :cond_5
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v10, v8, v10

    if-gtz v10, :cond_6

    .line 897
    iput v4, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 900
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v7

    .line 901
    aget v12, v10, v4

    aput v12, v10, v7

    .line 902
    aput v11, v10, v4

    .line 905
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v11

    cmpl-double v7, v12, v5

    .line 906
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    if-lez v7, :cond_7

    neg-double v14, v14

    :cond_7
    mul-double/2addr v12, v14

    sub-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v8

    .line 908
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v12, v7, v11

    .line 911
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v14, v7, v11

    .line 912
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v8, v7, v11

    sub-double/2addr v8, v14

    aput-wide v8, v7, v11

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v4

    :goto_5
    if-lez v7, :cond_a

    move v8, v4

    move-wide v9, v5

    :goto_6
    if-ge v8, v2, :cond_8

    .line 918
    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v8

    aget-wide v15, v14, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v17, v4, v7

    aget v3, v3, v17

    aget-wide v17, v14, v3

    mul-double v15, v15, v17

    add-double/2addr v9, v15

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    mul-double/2addr v9, v12

    move v3, v4

    :goto_7
    if-ge v3, v2, :cond_9

    .line 922
    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v3

    iget-object v14, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    add-int v15, v4, v7

    aget v14, v14, v15

    aget-wide v15, v8, v14

    aget-wide v17, v8, v11

    mul-double v17, v17, v9

    sub-double v15, v15, v17

    aput-wide v15, v8, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v7, -0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 926
    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 60

    move-object/from16 v8, p0

    .line 291
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->checkParameters()V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v10

    .line 295
    array-length v11, v10

    .line 298
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 299
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    .line 300
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 301
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->beta:[D

    .line 302
    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    .line 303
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 308
    new-array v12, v11, [D

    .line 309
    new-array v13, v11, [D

    .line 310
    new-array v0, v9, [D

    .line 311
    new-array v1, v9, [D

    .line 312
    new-array v14, v9, [D

    .line 313
    new-array v15, v11, [D

    .line 314
    new-array v7, v11, [D

    .line 315
    new-array v6, v11, [D

    .line 317
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 320
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    .line 321
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 322
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    .line 323
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 326
    iput-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    .line 328
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    move-wide/from16 v6, v16

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .line 330
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->incrementIterationCount()V

    move-object/from16 v26, v0

    .line 335
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 337
    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    const/16 v27, 0x0

    move/from16 v0, v27

    :goto_1
    if-ge v0, v9, :cond_0

    move-object/from16 v28, v1

    .line 339
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v29, v1, v0

    aput-wide v29, v14, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v28

    goto :goto_1

    :cond_0
    move-object/from16 v28, v1

    .line 343
    invoke-direct {v8, v14}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->qTy([D)V

    move/from16 v0, v27

    .line 347
    :goto_2
    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_1

    .line 348
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    move-object/from16 v29, v2

    .line 349
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v2, v2, v0

    move-object/from16 v30, v4

    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v31, v4, v1

    aput-wide v31, v2, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto :goto_2

    :cond_1
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_5

    move/from16 v0, v27

    const-wide/16 v1, 0x0

    :goto_3
    if-ge v0, v11, :cond_3

    .line 357
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v22, v4, v0

    const-wide/16 v20, 0x0

    cmpl-double v4, v22, v20

    if-nez v4, :cond_2

    move-wide/from16 v22, v31

    .line 361
    :cond_2
    aget-wide v24, v10, v0

    mul-double v24, v24, v22

    mul-double v24, v24, v24

    add-double v1, v1, v24

    .line 363
    aput-wide v22, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 365
    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    const-wide/16 v20, 0x0

    cmpl-double v0, v24, v20

    if-nez v0, :cond_4

    .line 368
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v0, v0, v24

    :goto_4
    move-wide/from16 v22, v0

    goto :goto_5

    :cond_5
    const-wide/16 v20, 0x0

    :goto_5
    cmpl-double v0, v6, v20

    if-eqz v0, :cond_9

    move-wide/from16 v0, v20

    move/from16 v2, v27

    .line 374
    :goto_6
    iget v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v4, :cond_8

    .line 375
    iget-object v4, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v2

    move/from16 v33, v3

    .line 376
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v34, v3, v4

    cmpl-double v3, v34, v20

    if-eqz v3, :cond_7

    move-wide/from16 v36, v20

    move/from16 v3, v27

    :goto_7
    if-gt v3, v2, :cond_6

    move-object/from16 v38, v5

    .line 380
    iget-object v5, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v3

    aget-wide v39, v5, v4

    aget-wide v41, v14, v3

    mul-double v39, v39, v41

    add-double v36, v36, v39

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v38

    goto :goto_7

    :cond_6
    move-object/from16 v38, v5

    .line 382
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    mul-double v34, v34, v6

    div-double v3, v3, v34

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    goto :goto_8

    :cond_7
    move-object/from16 v38, v5

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v33

    move-object/from16 v5, v38

    goto :goto_6

    :cond_8
    move/from16 v33, v3

    move-object/from16 v38, v5

    move-wide/from16 v34, v0

    goto :goto_9

    :cond_9
    move/from16 v33, v3

    move-object/from16 v38, v5

    move-wide/from16 v34, v20

    .line 386
    :goto_9
    iget-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v0, v34, v0

    if-gtz v0, :cond_a

    .line 388
    invoke-virtual {v8, v6, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v17

    :cond_a
    move/from16 v0, v27

    :goto_a
    if-ge v0, v11, :cond_b

    .line 394
    aget-wide v1, v12, v0

    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v4, v3, v0

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    aput-wide v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    move-object/from16 v3, v17

    move-wide/from16 v4, v20

    move-object/from16 v0, v26

    move-object/from16 v2, v29

    move-wide/from16 v57, v6

    move-object/from16 v7, v28

    move-wide/from16 v28, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v57

    :goto_b
    const-wide v36, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v4, v36

    if-gez v1, :cond_25

    move/from16 v1, v27

    .line 401
    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_c

    .line 402
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 403
    aget-wide v3, v10, v2

    aput-wide v3, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 406
    :cond_c
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 407
    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v24

    move-object/from16 v5, v30

    move-object v4, v12

    move/from16 v30, v9

    move-object/from16 v26, v38

    move-object v9, v5

    move-object v5, v15

    move-object/from16 v16, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v14

    move-object v14, v6

    move-object/from16 v6, v18

    move-object/from16 v43, v7

    move-object/from16 v57, v18

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v57

    move-object/from16 v7, v16

    .line 414
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide/from16 v6, v19

    move/from16 v0, v27

    .line 418
    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_d

    .line 419
    iget-object v1, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    .line 420
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 421
    aget-wide v38, v13, v1

    add-double v38, v38, v3

    aput-wide v38, v10, v1

    .line 422
    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double/2addr v3, v1

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 425
    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move-wide/from16 v4, v24

    if-eqz v33, :cond_e

    .line 428
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 432
    :cond_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v7

    .line 433
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 434
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    invoke-direct {v3, v10, v7}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v24, v7

    .line 435
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v6

    const-wide v38, 0x3fb999999999999aL    # 0.1

    mul-double v40, v6, v38

    cmpg-double v25, v40, v22

    if-gez v25, :cond_f

    div-double v44, v6, v22

    mul-double v44, v44, v44

    sub-double v44, v31, v44

    goto :goto_e

    :cond_f
    const-wide/high16 v44, -0x4010000000000000L    # -1.0

    :goto_e
    move-object/from16 v25, v2

    move-object/from16 v42, v13

    move/from16 v2, v27

    .line 446
    :goto_f
    iget v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v13, :cond_11

    .line 447
    iget-object v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v2

    move-wide/from16 v46, v6

    .line 448
    iget-object v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v48, v6, v13

    .line 449
    aput-wide v19, v15, v2

    move/from16 v6, v27

    :goto_10
    if-gt v6, v2, :cond_10

    .line 451
    aget-wide v50, v15, v6

    iget-object v7, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v52, v7, v13

    mul-double v52, v52, v48

    add-double v50, v50, v52

    aput-wide v50, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v6, v46

    goto :goto_f

    :cond_11
    move-wide/from16 v46, v6

    move-wide/from16 v6, v19

    move/from16 v2, v27

    .line 455
    :goto_11
    iget v13, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v13, :cond_12

    .line 456
    aget-wide v48, v15, v2

    mul-double v48, v48, v48

    add-double v6, v6, v48

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_12
    mul-double v48, v22, v22

    div-double v6, v6, v48

    move-object v13, v3

    .line 460
    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v50, v2, v0

    mul-double v50, v50, v0

    div-double v50, v50, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v52, v50, v48

    add-double v52, v6, v52

    add-double v6, v6, v50

    neg-double v6, v6

    cmpl-double v50, v52, v19

    if-nez v50, :cond_13

    move-wide/from16 v50, v19

    goto :goto_12

    :cond_13
    div-double v50, v44, v52

    :goto_12
    const-wide/high16 v54, 0x3fd0000000000000L    # 0.25

    cmpg-double v54, v50, v54

    const-wide/high16 v55, 0x3fe0000000000000L    # 0.5

    if-gtz v54, :cond_17

    cmpg-double v2, v44, v19

    if-gez v2, :cond_14

    mul-double v2, v6, v55

    mul-double v55, v55, v44

    add-double v6, v6, v55

    div-double v55, v2, v6

    :cond_14
    cmpl-double v2, v40, v22

    if-gez v2, :cond_16

    cmpg-double v2, v55, v38

    if-gez v2, :cond_15

    goto :goto_13

    :cond_15
    move-wide/from16 v38, v55

    :cond_16
    :goto_13
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    .line 474
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v38

    .line 475
    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v2, v2, v38

    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_15

    :cond_17
    cmpl-double v6, v2, v19

    if-eqz v6, :cond_19

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v6, v50, v6

    if-ltz v6, :cond_18

    goto :goto_14

    :cond_18
    move-wide v0, v4

    goto :goto_15

    :cond_19
    :goto_14
    mul-double v0, v0, v48

    mul-double v2, v2, v55

    .line 478
    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->lmPar:D

    :goto_15
    cmpl-double v2, v50, v36

    if-ltz v2, :cond_1c

    move-wide/from16 v6, v19

    move/from16 v2, v27

    :goto_16
    if-ge v2, v11, :cond_1a

    .line 487
    aget-wide v3, v12, v2

    aget-wide v22, v10, v2

    mul-double v3, v3, v22

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 490
    :cond_1a
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    if-eqz v9, :cond_1b

    .line 493
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->getIterations()I

    move-result v2

    invoke-interface {v9, v2, v14, v13}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-wide/from16 v2, v46

    .line 494
    invoke-virtual {v8, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v13

    :cond_1b
    move-wide/from16 v2, v46

    move-wide v4, v2

    move-object v3, v13

    move-object/from16 v2, v18

    move-object/from16 v7, v24

    move/from16 v33, v27

    goto :goto_18

    :cond_1c
    move/from16 v2, v27

    .line 500
    :goto_17
    iget v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_1d

    .line 501
    iget-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    .line 502
    aget-wide v4, v42, v3

    aput-wide v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 504
    :cond_1d
    iget-object v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v3, v18

    .line 505
    iput-object v3, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 511
    new-instance v3, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-object/from16 v6, v43

    invoke-direct {v3, v10, v6}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[D)V

    move-object v7, v6

    move-wide/from16 v4, v22

    .line 515
    :goto_18
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    move-object v13, v7

    iget-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v18, v22, v6

    if-gtz v18, :cond_1e

    cmpg-double v6, v52, v6

    if-gtz v6, :cond_1e

    cmpg-double v6, v50, v48

    if-lez v6, :cond_1f

    :cond_1e
    iget-wide v6, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v6, v6, v28

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_20

    .line 519
    :cond_1f
    invoke-virtual {v8, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->setCost(D)V

    return-object v3

    .line 524
    :cond_20
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v22, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->TWO_EPS:D

    cmpg-double v6, v6, v22

    if-gtz v6, :cond_22

    cmpg-double v6, v52, v22

    if-gtz v6, :cond_22

    cmpg-double v6, v50, v48

    if-lez v6, :cond_21

    goto :goto_19

    .line 527
    :cond_21
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v27

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_22
    :goto_19
    const/4 v7, 0x1

    mul-double v36, v22, v28

    cmpg-double v6, v0, v36

    if-lez v6, :cond_24

    cmpg-double v6, v34, v22

    if-lez v6, :cond_23

    move-wide/from16 v22, v4

    move-object v7, v13

    move-object/from16 v18, v17

    move-object/from16 v38, v26

    move-object/from16 v13, v42

    move-wide/from16 v4, v50

    move-object/from16 v17, v14

    move-object/from16 v14, v21

    move-wide/from16 v20, v19

    move-object/from16 v19, v16

    move-wide/from16 v57, v0

    move-object v0, v2

    move-object/from16 v2, v25

    move-wide/from16 v24, v57

    move/from16 v59, v30

    move-object/from16 v30, v9

    move/from16 v9, v59

    goto/16 :goto_b

    .line 533
    :cond_23
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v27

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 530
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v27

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    move-object v6, v7

    move-object/from16 v16, v19

    move-wide/from16 v19, v20

    move-wide/from16 v4, v24

    const/4 v7, 0x1

    move-object/from16 v57, v30

    move/from16 v30, v9

    move-object/from16 v9, v57

    move-object/from16 v17, v3

    move-object v1, v6

    move-object/from16 v19, v16

    move-wide/from16 v6, v22

    move-wide/from16 v24, v28

    move/from16 v3, v33

    move-wide/from16 v22, v4

    move-object v4, v9

    move/from16 v9, v30

    move-object/from16 v5, v38

    goto/16 :goto_0
.end method
