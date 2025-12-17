.class public Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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
.method public constructor <init>()V
    .locals 11

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 157
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 236
    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 271
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 272
    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 273
    iput-wide p7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 274
    iput-wide p9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;DDDD)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 208
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    .line 209
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    .line 210
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    .line 211
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    .line 212
    iput-wide p10, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 176
    sget-wide v10, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;-><init>(DLorg/apache/commons/math3/optimization/ConvergenceChecker;DDDD)V

    return-void
.end method

.method private determineLMDirection([D[D[D[D)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    .line 729
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v4, :cond_1

    .line 730
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 731
    :goto_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v7, :cond_0

    .line 732
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v7, v6

    aget-object v7, v7, v3

    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v6

    aget-wide v9, v7, v9

    aput-wide v9, v8, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 734
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v8, v7, v4

    aput-wide v8, v6, v3

    .line 735
    aget-wide v6, p1, v3

    aput-wide v6, p4, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v2

    .line 739
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_6

    .line 743
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v4, v4, v3

    .line 744
    aget-wide v7, p2, v4

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 746
    array-length v9, v1

    invoke-static {v1, v4, v9, v5, v6}, Ljava/util/Arrays;->fill([DIID)V

    .line 748
    :cond_2
    aput-wide v7, v1, v3

    move v4, v3

    move-wide v7, v5

    .line 754
    :goto_3
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v9, :cond_5

    .line 755
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v4

    .line 759
    aget-wide v10, v1, v4

    cmpl-double v10, v10, v5

    if-eqz v10, :cond_4

    .line 763
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v9

    .line 764
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, v1, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v10, v13, v15

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-gez v10, :cond_3

    .line 765
    aget-wide v15, v1, v4

    div-double v15, v11, v15

    mul-double v17, v15, v15

    add-double v17, v17, v13

    .line 766
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v13

    goto :goto_4

    .line 769
    :cond_3
    aget-wide v15, v1, v4

    div-double/2addr v15, v11

    mul-double v17, v15, v15

    add-double v17, v17, v13

    .line 770
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    div-double v13, v13, v17

    mul-double/2addr v15, v13

    move-wide/from16 v27, v13

    move-wide v13, v15

    move-wide/from16 v15, v27

    .line 776
    :goto_4
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v4

    mul-double/2addr v11, v15

    aget-wide v17, v1, v4

    mul-double v17, v17, v13

    add-double v11, v11, v17

    aput-wide v11, v10, v9

    .line 777
    aget-wide v10, p4, v4

    mul-double v17, v15, v10

    mul-double v19, v13, v7

    add-double v17, v17, v19

    neg-double v5, v13

    mul-double/2addr v10, v5

    mul-double/2addr v7, v15

    add-double/2addr v7, v10

    .line 779
    aput-wide v17, p4, v4

    add-int/lit8 v10, v4, 0x1

    .line 782
    :goto_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v10, v11, :cond_4

    .line 783
    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v17, v11, v9

    mul-double v21, v15, v17

    .line 784
    aget-wide v23, v1, v10

    mul-double v25, v13, v23

    add-double v21, v21, v25

    mul-double v17, v17, v5

    mul-double v23, v23, v15

    add-double v17, v17, v23

    .line 785
    aput-wide v17, v1, v10

    .line 786
    aput-wide v21, v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_3

    .line 793
    :cond_5
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v3

    aget-wide v6, v4, v5

    aput-wide v6, v1, v3

    .line 794
    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v7, v6, v3

    aput-wide v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 800
    :goto_6
    iget v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v3, v5, :cond_9

    .line 801
    aget-wide v6, v1, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    if-ne v4, v5, :cond_7

    move v4, v3

    :cond_7
    if-ge v4, v5, :cond_8

    .line 805
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

    .line 810
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v3

    add-int/lit8 v6, v3, 0x1

    move-wide v10, v8

    :goto_8
    if-ge v6, v4, :cond_a

    .line 813
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v5

    aget-wide v14, p4, v6

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 815
    :cond_a
    aget-wide v5, p4, v3

    sub-double/2addr v5, v10

    aget-wide v10, v1, v3

    div-double/2addr v5, v10

    aput-wide v5, p4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 820
    :cond_b
    :goto_9
    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    array-length v3, v1

    if-ge v2, v3, :cond_c

    .line 821
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 556
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    move v9, v8

    .line 560
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    if-ge v9, v10, :cond_0

    .line 561
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v11, v9

    aget-wide v12, v1, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 564
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v10

    aput-wide v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 566
    :cond_1
    iget v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_3

    .line 567
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v7

    .line 568
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v13, v10, v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v15, v10, v9

    div-double/2addr v13, v15

    move v10, v8

    :goto_3
    if-ge v10, v7, :cond_2

    .line 570
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v10

    aget-wide v17, v15, v8

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v11, v11, v10

    aget-wide v21, v11, v9

    mul-double v21, v21, v13

    sub-double v17, v17, v21

    aput-wide v17, v15, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_3

    .line 572
    :cond_2
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aput-wide v13, v8, v9

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 578
    :goto_4
    iget v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v9, v10, :cond_4

    .line 579
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v10, v10, v9

    .line 580
    aget-wide v11, p4, v10

    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v14, v13, v10

    mul-double/2addr v11, v14

    .line 581
    aput-wide v11, v4, v10

    mul-double/2addr v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 584
    :cond_4
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v9, v7, v2

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double v13, v2, v11

    cmpg-double v15, v9, v13

    if-gtz v15, :cond_5

    const-wide/16 v11, 0x0

    .line 587
    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    return-void

    .line 596
    :cond_5
    iget v11, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 597
    :goto_5
    iget v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v11, v12, :cond_6

    .line 598
    iget-object v12, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v12, v12, v11

    .line 599
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

    .line 602
    :goto_6
    iget v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v15, v13, :cond_8

    .line 603
    iget-object v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v13, v13, v15

    const/4 v14, 0x0

    const-wide/16 v23, 0x0

    :goto_7
    if-ge v14, v15, :cond_7

    .line 606
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v5, v5, v14

    aget-wide v25, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v14

    aget-wide v27, v4, v5

    mul-double v25, v25, v27

    add-double v23, v23, v25

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p6

    goto :goto_7

    .line 608
    :cond_7
    aget-wide v25, v4, v13

    sub-double v25, v25, v23

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v23, v5, v13

    div-double v25, v25, v23

    .line 609
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

    .line 617
    :goto_9
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v5, v15, :cond_b

    .line 618
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v5

    move-wide/from16 v25, v9

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    :goto_a
    if-gt v9, v5, :cond_a

    .line 621
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v10, v10, v9

    aget-wide v27, v10, v15

    aget-wide v29, v1, v9

    mul-double v27, v27, v29

    add-double v23, v23, v27

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 623
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

    .line 626
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double v13, v9, v2

    const-wide/16 v19, 0x0

    cmpl-double v5, v13, v19

    move-wide/from16 v23, v13

    const-wide v13, 0x10000c51bd5669L    # 2.2251E-308

    if-nez v5, :cond_c

    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 630
    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    div-double v5, v13, v5

    goto :goto_b

    :cond_c
    move-wide/from16 v5, v23

    .line 635
    :goto_b
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v13, v13, v19

    if-nez v13, :cond_d

    div-double/2addr v9, v7

    .line 637
    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :cond_d
    const/16 v7, 0xa

    move-wide/from16 v9, v25

    :goto_c
    if-ltz v7, :cond_18

    .line 643
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    cmpl-double v8, v13, v19

    if-nez v8, :cond_e

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v13, v5

    move v15, v7

    const-wide v7, 0x10000c51bd5669L    # 2.2251E-308

    .line 644
    invoke-static {v7, v8, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_d

    :cond_e
    move v15, v7

    const-wide v7, 0x10000c51bd5669L    # 2.2251E-308

    .line 646
    :goto_d
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    const/4 v7, 0x0

    .line 647
    :goto_e
    iget v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v7, v8, :cond_f

    .line 648
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v8, v8, v7

    .line 649
    aget-wide v23, p4, v8

    mul-double v23, v23, v13

    aput-wide v23, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_f
    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 651
    invoke-direct {v0, v1, v4, v7, v8}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMDirection([D[D[D[D)V

    move/from16 v23, v15

    const/4 v1, 0x0

    const-wide/16 v13, 0x0

    .line 654
    :goto_f
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v15, :cond_10

    .line 655
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v1

    .line 656
    aget-wide v24, p4, v15

    move-wide/from16 v26, v5

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v28, v5, v15

    mul-double v24, v24, v28

    .line 657
    aput-wide v24, v8, v15

    mul-double v24, v24, v24

    add-double v13, v13, v24

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v26

    goto :goto_f

    :cond_10
    move-wide/from16 v26, v5

    .line 660
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    sub-double v13, v5, v2

    .line 666
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v1, v24, v21

    if-lez v1, :cond_18

    const-wide/16 v19, 0x0

    cmpl-double v1, v11, v19

    if-nez v1, :cond_11

    cmpg-double v1, v13, v9

    if-gtz v1, :cond_11

    cmpg-double v1, v9, v19

    if-gez v1, :cond_11

    goto/16 :goto_16

    :cond_11
    const/4 v1, 0x0

    .line 672
    :goto_10
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v9, :cond_12

    .line 673
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v1

    .line 674
    aget-wide v24, v8, v9

    aget-wide v28, p4, v9

    mul-double v24, v24, v28

    div-double v24, v24, v5

    aput-wide v24, v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    .line 676
    :goto_11
    iget v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v5, :cond_14

    .line 677
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v1

    .line 678
    aget-wide v9, v4, v5

    aget-wide v24, v7, v1

    div-double v9, v9, v24

    aput-wide v9, v4, v5

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    .line 680
    :goto_12
    iget v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v6, v15, :cond_13

    .line 681
    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v6

    aget-wide v24, v4, v15

    move/from16 v28, v1

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v1, v1, v6

    aget-wide v29, v1, v5

    mul-double v29, v29, v9

    sub-double v24, v24, v29

    aput-wide v24, v4, v15

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v28

    goto :goto_12

    :cond_13
    move/from16 v28, v1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 685
    :goto_13
    iget v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v9, :cond_15

    .line 686
    iget-object v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v9, v9, v1

    aget-wide v9, v4, v9

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_15
    mul-double/2addr v5, v2

    div-double v5, v13, v5

    const-wide/16 v9, 0x0

    cmpl-double v1, v13, v9

    if-lez v1, :cond_16

    .line 693
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    move-wide v11, v9

    goto :goto_14

    :cond_16
    cmpg-double v1, v13, v9

    if-gez v1, :cond_17

    .line 695
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    move-wide/from16 v1, v26

    invoke-static {v1, v2, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    goto :goto_15

    :cond_17
    :goto_14
    move-wide/from16 v1, v26

    .line 699
    :goto_15
    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-double/2addr v9, v5

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    add-int/lit8 v3, v23, -0x1

    move-wide v5, v1

    move v7, v3

    move-wide v9, v13

    const-wide/16 v19, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    goto/16 :goto_c

    :cond_18
    :goto_16
    return-void
.end method

.method private qTy([D)V
    .locals 12

    .line 928
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 929
    aget-object v0, v0, v2

    array-length v0, v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 932
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 935
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v6

    aget-wide v8, v7, v3

    aget-wide v10, p1, v6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 937
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aget-wide v7, v6, v3

    mul-double/2addr v4, v7

    move v6, v2

    :goto_2
    if-ge v6, v1, :cond_1

    .line 939
    aget-wide v7, p1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 852
    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    .line 854
    array-length v2, v1

    const/4 v3, 0x0

    .line 855
    aget-object v1, v1, v3

    array-length v1, v1

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v1, :cond_1

    .line 859
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aput v4, v7, v4

    move v7, v3

    :goto_1
    if-ge v7, v2, :cond_0

    .line 862
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v4

    mul-double/2addr v9, v9

    add-double/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 865
    :cond_0
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

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

    .line 877
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v11

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v15, v15, v10

    aget-wide v15, v14, v15

    mul-double/2addr v15, v15

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 880
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

    .line 881
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

    .line 889
    :cond_5
    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrRankingThreshold:D

    cmpg-double v10, v8, v10

    if-gtz v10, :cond_6

    .line 890
    iput v4, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void

    .line 893
    :cond_6
    iget-object v10, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v11, v10, v7

    .line 894
    aget v12, v10, v4

    aput v12, v10, v7

    .line 895
    aput v11, v10, v4

    .line 898
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v11

    cmpl-double v7, v12, v5

    .line 899
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    if-lez v7, :cond_7

    neg-double v14, v14

    :cond_7
    mul-double/2addr v12, v14

    sub-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v8

    .line 901
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    aput-wide v12, v7, v11

    .line 904
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aput-wide v14, v7, v11

    .line 905
    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

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

    .line 911
    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v14, v14, v8

    aget-wide v15, v14, v11

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 915
    iget-object v8, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v8, v8, v3

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

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

    .line 919
    :cond_b
    iget v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    iput v1, v0, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->rank:I

    return-void
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 60

    move-object/from16 v8, p0

    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getTarget()[D

    move-result-object v0

    array-length v9, v0

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getStartPoint()[D

    move-result-object v10

    .line 282
    array-length v11, v10

    .line 285
    invoke-static {v9, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    iput v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    .line 286
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    .line 287
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    .line 288
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->beta:[D

    .line 289
    new-array v0, v11, [I

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    .line 290
    new-array v0, v11, [D

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    .line 295
    new-array v12, v11, [D

    .line 296
    new-array v13, v11, [D

    .line 297
    new-array v0, v9, [D

    .line 298
    new-array v1, v9, [D

    .line 299
    new-array v14, v9, [D

    .line 300
    new-array v15, v11, [D

    .line 301
    new-array v7, v11, [D

    .line 302
    new-array v6, v11, [D

    .line 304
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    .line 307
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v1

    .line 308
    invoke-virtual {v8, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v2

    .line 309
    new-instance v3, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v3, v10, v1}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    .line 310
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v16

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 313
    iput-wide v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    const/4 v6, 0x1

    const/16 v22, 0x0

    move-object v7, v3

    move/from16 v23, v6

    move-object/from16 v28, v15

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object v3, v0

    move-wide/from16 v58, v16

    move-object/from16 v16, v1

    move-wide/from16 v0, v58

    move/from16 v17, v22

    :goto_0
    add-int/lit8 v15, v17, 0x1

    .line 322
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qrDecomposition(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 324
    invoke-interface {v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v6

    iput-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move/from16 v6, v22

    :goto_1
    if-ge v6, v9, :cond_0

    move-object/from16 v29, v2

    .line 326
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    aget-wide v30, v2, v6

    aput-wide v30, v14, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v29

    goto :goto_1

    :cond_0
    move-object/from16 v29, v2

    .line 330
    invoke-direct {v8, v14}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->qTy([D)V

    move/from16 v2, v22

    .line 334
    :goto_2
    iget v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v6, :cond_1

    .line 335
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v2

    move-object/from16 v30, v3

    .line 336
    iget-object v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v3, v3, v2

    move-object/from16 v31, v4

    iget-object v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->diagR:[D

    aget-wide v32, v4, v6

    aput-wide v32, v3, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_2

    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    if-eqz v23, :cond_5

    move/from16 v2, v22

    const-wide/16 v3, 0x0

    :goto_3
    if-ge v2, v11, :cond_3

    .line 344
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v24, v6, v2

    const-wide/16 v20, 0x0

    cmpl-double v6, v24, v20

    if-nez v6, :cond_2

    move-wide/from16 v24, v32

    .line 348
    :cond_2
    aget-wide v26, v10, v2

    mul-double v26, v26, v24

    mul-double v26, v26, v26

    add-double v3, v3, v26

    .line 350
    aput-wide v24, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 352
    :cond_3
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    const-wide/16 v20, 0x0

    cmpl-double v2, v26, v20

    if-nez v2, :cond_4

    .line 355
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    goto :goto_4

    :cond_4
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->initialStepBoundFactor:D

    mul-double v2, v2, v26

    :goto_4
    move-wide/from16 v24, v2

    goto :goto_5

    :cond_5
    const-wide/16 v20, 0x0

    :goto_5
    cmpl-double v2, v0, v20

    if-eqz v2, :cond_9

    move-wide/from16 v2, v20

    move/from16 v4, v22

    .line 361
    :goto_6
    iget v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v6, :cond_8

    .line 362
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v6, v6, v4

    move-object/from16 v34, v5

    .line 363
    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    aget-wide v35, v5, v6

    cmpl-double v5, v35, v20

    if-eqz v5, :cond_7

    move-wide/from16 v37, v20

    move/from16 v5, v22

    :goto_7
    if-gt v5, v4, :cond_6

    move/from16 v39, v9

    .line 367
    iget-object v9, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v9, v9, v5

    aget-wide v40, v9, v6

    aget-wide v42, v14, v5

    mul-double v40, v40, v42

    add-double v37, v37, v40

    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v39

    goto :goto_7

    :cond_6
    move/from16 v39, v9

    .line 369
    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v35, v35, v0

    div-double v5, v5, v35

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    goto :goto_8

    :cond_7
    move/from16 v39, v9

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v34

    move/from16 v9, v39

    goto :goto_6

    :cond_8
    move-object/from16 v34, v5

    move/from16 v39, v9

    move-wide/from16 v35, v2

    goto :goto_9

    :cond_9
    move-object/from16 v34, v5

    move/from16 v39, v9

    move-wide/from16 v35, v20

    .line 373
    :goto_9
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    cmpg-double v2, v35, v2

    if-gtz v2, :cond_a

    .line 375
    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 377
    invoke-virtual {v7}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v7

    :cond_a
    move/from16 v2, v22

    :goto_a
    if-ge v2, v11, :cond_b

    .line 383
    aget-wide v3, v12, v2

    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->jacNorm:[D

    move-wide/from16 v37, v0

    aget-wide v0, v5, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    aput-wide v0, v12, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, v37

    goto :goto_a

    :cond_b
    move-wide/from16 v37, v0

    move-object v3, v7

    move-object/from16 v9, v16

    move-wide/from16 v4, v20

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    :goto_b
    const-wide v29, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v4, v29

    if-gez v1, :cond_26

    move/from16 v1, v22

    .line 390
    :goto_c
    iget v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v1, v2, :cond_c

    .line 391
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v2, v2, v1

    .line 392
    aget-wide v3, v10, v2

    aput-wide v3, v13, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 395
    :cond_c
    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 396
    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v24

    move-object/from16 v5, v31

    move-object v4, v12

    move-object/from16 v31, v14

    move-object/from16 v16, v34

    move-object v14, v5

    move-object/from16 v5, v28

    move-object/from16 v17, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v9

    move-object v9, v6

    move-object/from16 v6, v18

    move-object/from16 v34, v9

    move-object v9, v7

    move-object/from16 v7, v17

    .line 403
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->determineLMParameter([DD[D[D[D[D)V

    move-wide/from16 v6, v19

    move/from16 v0, v22

    .line 407
    :goto_d
    iget v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v0, v1, :cond_d

    .line 408
    iget-object v1, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v1, v1, v0

    .line 409
    iget-object v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v3, v2, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    .line 410
    aget-wide v40, v13, v1

    add-double v40, v40, v3

    aput-wide v40, v10, v1

    .line 411
    aget-wide v3, v12, v1

    aget-wide v1, v2, v1

    mul-double/2addr v3, v1

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 414
    :cond_d
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    move-wide/from16 v4, v24

    if-eqz v23, :cond_e

    .line 417
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 421
    :cond_e
    invoke-virtual {v8, v10}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeObjectiveValue([D)[D

    move-result-object v2

    .line 422
    invoke-virtual {v8, v2}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeResiduals([D)[D

    move-result-object v3

    .line 423
    new-instance v6, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    invoke-direct {v6, v10, v2}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v24, v6

    .line 424
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->computeCost([D)D

    move-result-wide v6

    const-wide v40, 0x3fb999999999999aL    # 0.1

    mul-double v42, v6, v40

    cmpg-double v25, v42, v37

    if-gez v25, :cond_f

    div-double v44, v6, v37

    mul-double v44, v44, v44

    sub-double v44, v32, v44

    goto :goto_e

    :cond_f
    const-wide/high16 v44, -0x4010000000000000L    # -1.0

    :goto_e
    move-object/from16 v25, v2

    move-object/from16 v46, v3

    move/from16 v2, v22

    .line 435
    :goto_f
    iget v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_11

    .line 436
    iget-object v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v3, v3, v2

    move-object/from16 v47, v13

    .line 437
    iget-object v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmDir:[D

    aget-wide v48, v13, v3

    .line 438
    aput-wide v19, v28, v2

    move/from16 v13, v22

    :goto_10
    if-gt v13, v2, :cond_10

    .line 440
    aget-wide v50, v28, v13

    move-wide/from16 v52, v6

    iget-object v6, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedJacobian:[[D

    aget-object v6, v6, v13

    aget-wide v54, v6, v3

    mul-double v54, v54, v48

    add-double v50, v50, v54

    aput-wide v50, v28, v13

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v6, v52

    goto :goto_10

    :cond_10
    move-wide/from16 v52, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v47

    goto :goto_f

    :cond_11
    move-wide/from16 v52, v6

    move-object/from16 v47, v13

    move-wide/from16 v6, v19

    move/from16 v2, v22

    .line 444
    :goto_11
    iget v3, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v2, v3, :cond_12

    .line 445
    aget-wide v48, v28, v2

    mul-double v48, v48, v48

    add-double v6, v6, v48

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_12
    mul-double v2, v37, v37

    div-double/2addr v6, v2

    move-object/from16 v48, v14

    .line 449
    iget-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    mul-double v49, v13, v0

    mul-double v49, v49, v0

    div-double v49, v49, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v54, v49, v2

    add-double v54, v6, v54

    add-double v6, v6, v49

    neg-double v6, v6

    cmpl-double v49, v54, v19

    if-nez v49, :cond_13

    move-wide/from16 v49, v19

    goto :goto_12

    :cond_13
    div-double v49, v44, v54

    :goto_12
    const-wide/high16 v56, 0x3fd0000000000000L    # 0.25

    cmpg-double v51, v49, v56

    const-wide/high16 v56, 0x3fe0000000000000L    # 0.5

    if-gtz v51, :cond_17

    cmpg-double v13, v44, v19

    if-gez v13, :cond_14

    mul-double v13, v6, v56

    mul-double v56, v56, v44

    add-double v6, v6, v56

    div-double v56, v13, v6

    :cond_14
    cmpl-double v6, v42, v37

    if-gez v6, :cond_16

    cmpg-double v6, v56, v40

    if-gez v6, :cond_15

    goto :goto_13

    :cond_15
    move-wide/from16 v40, v56

    :cond_16
    :goto_13
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    .line 463
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    mul-double v0, v0, v40

    .line 464
    iget-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    div-double v4, v4, v40

    iput-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    goto :goto_15

    :cond_17
    cmpl-double v6, v13, v19

    if-eqz v6, :cond_19

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v6, v49, v6

    if-ltz v6, :cond_18

    goto :goto_14

    :cond_18
    move-wide v0, v4

    goto :goto_15

    :cond_19
    :goto_14
    mul-double/2addr v0, v2

    mul-double v13, v13, v56

    .line 467
    iput-wide v13, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->lmPar:D

    :goto_15
    cmpl-double v4, v49, v29

    if-ltz v4, :cond_1d

    move-wide/from16 v6, v19

    move/from16 v4, v22

    :goto_16
    if-ge v4, v11, :cond_1a

    .line 476
    aget-wide v13, v12, v4

    aget-wide v26, v10, v4

    mul-double v13, v13, v26

    mul-double/2addr v13, v13

    add-double/2addr v6, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 479
    :cond_1a
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    move-object/from16 v4, v24

    move-object/from16 v6, v48

    if-eqz v48, :cond_1b

    .line 482
    invoke-interface {v6, v15, v9, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    move-wide/from16 v13, v52

    if-eqz v5, :cond_1c

    .line 483
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 485
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v4

    :cond_1b
    move-wide/from16 v13, v52

    :cond_1c
    move/from16 v23, v22

    move-object/from16 v7, v25

    goto :goto_18

    :cond_1d
    move-object/from16 v6, v48

    move/from16 v4, v22

    .line 491
    :goto_17
    iget v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->solvedCols:I

    if-ge v4, v5, :cond_1e

    .line 492
    iget-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->permutation:[I

    aget v5, v5, v4

    .line 493
    aget-wide v13, v47, v5

    aput-wide v13, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 495
    :cond_1e
    iget-object v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    move-object/from16 v5, v34

    .line 496
    iput-object v5, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->weightedResidual:[D

    .line 502
    new-instance v5, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-object/from16 v7, v21

    invoke-direct {v5, v10, v7}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[D)V

    move-object/from16 v34, v4

    move-object v4, v5

    move-wide/from16 v13, v37

    .line 506
    :goto_18
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    cmpg-double v5, v24, v2

    if-gtz v5, :cond_1f

    cmpg-double v2, v54, v2

    if-gtz v2, :cond_1f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v5, v49, v2

    if-lez v5, :cond_20

    :cond_1f
    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    mul-double v2, v2, v26

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_21

    .line 510
    :cond_20
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->setCost(D)V

    .line 512
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;->getPoint()[D

    move-result-object v0

    iput-object v0, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->point:[D

    return-object v4

    .line 518
    :cond_21
    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v24, 0x3cafffd481f97682L    # 2.2204E-16

    cmpg-double v2, v2, v24

    if-gtz v2, :cond_23

    cmpg-double v2, v54, v24

    if-gtz v2, :cond_23

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v2, v49, v2

    if-lez v2, :cond_22

    goto :goto_19

    .line 519
    :cond_22
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_COST_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->costRelativeTolerance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v22

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :goto_19
    const/4 v3, 0x1

    mul-double v29, v26, v24

    cmpg-double v2, v0, v29

    if-lez v2, :cond_25

    cmpg-double v2, v35, v24

    if-lez v2, :cond_24

    move-wide/from16 v24, v0

    move-object v3, v4

    move-wide/from16 v37, v13

    move-wide/from16 v20, v19

    move-object/from16 v14, v31

    move-object/from16 v0, v34

    move-object/from16 v2, v46

    move-object/from16 v13, v47

    move-wide/from16 v4, v49

    move-object/from16 v31, v6

    move-object/from16 v34, v16

    move-object/from16 v19, v17

    move-object/from16 v58, v9

    move-object v9, v7

    move-object/from16 v7, v58

    goto/16 :goto_b

    .line 525
    :cond_24
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_ORTHOGONALITY_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->orthoTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v22

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 522
    :cond_25
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v4, v8, Lorg/apache/commons/math3/optimization/general/LevenbergMarquardtOptimizer;->parRelativeTolerance:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v22

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    move-object v7, v9

    move-object/from16 v17, v19

    move-wide/from16 v19, v20

    move-wide/from16 v4, v24

    move-object/from16 v6, v31

    const/4 v1, 0x1

    move-object v4, v6

    move-object/from16 v16, v7

    move-object/from16 v19, v17

    move-object/from16 v5, v34

    move/from16 v9, v39

    move v6, v1

    move-object v7, v3

    move/from16 v17, v15

    move-object v3, v0

    move-wide/from16 v0, v37

    goto/16 :goto_0
.end method
