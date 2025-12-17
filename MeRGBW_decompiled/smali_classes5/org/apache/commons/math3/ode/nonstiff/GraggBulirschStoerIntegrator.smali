.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "GraggBulirschStoerIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 14

    .line 171
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object p1, p0

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v0

    move-wide/from16 p5, v1

    .line 173
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v5, p0

    .line 174
    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move/from16 p2, v4

    move-wide/from16 p3, v0

    move-wide/from16 p5, v2

    .line 175
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    move-object v2, p0

    .line 176
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 9

    .line 193
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    const/4 p4, -0x1

    const-wide/high16 p5, -0x4010000000000000L    # -1.0

    const/4 p2, 0x1

    const/4 p3, -0x1

    move-object p1, p0

    .line 195
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 196
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    const/4 p2, -0x1

    .line 197
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 11

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 532
    :goto_1
    array-length v3, p4

    if-ge v2, v3, :cond_0

    sub-int v3, p2, v1

    add-int/lit8 v4, v3, -0x1

    .line 534
    aget-object v4, p3, v4

    aget-object v3, p3, v3

    aget-wide v5, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v7, p2, p1

    aget-object v3, v3, v7

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v3, v7

    aget-wide v9, v4, v2

    sub-double v9, v5, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 540
    :goto_2
    array-length v3, p4

    if-ge v1, v3, :cond_2

    .line 542
    aget-object v3, p3, v2

    aget-wide v4, v3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v6, p2, p1

    aget-object v3, v3, v6

    add-int/lit8 v6, p2, -0x1

    aget-wide v6, v3, v6

    aget-wide v8, p4, v1

    sub-double v8, v4, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private initializeArrays()V
    .locals 10

    .line 364
    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v0, v0, 0x2

    .line 366
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 368
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 369
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 370
    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 371
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 372
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 377
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v1

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_3

    .line 384
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_6

    .line 389
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v2, :cond_4

    new-array v5, v2, [D

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    aput-object v5, v3, v2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_5

    .line 391
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v6, v5, v2

    int-to-double v6, v6

    sub-int v8, v2, v3

    sub-int/2addr v8, v4

    aget v5, v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 392
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v2

    mul-double/2addr v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 8

    .line 427
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 428
    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 429
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 430
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalAbsoluteTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_1

    .line 434
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v0, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    .line 463
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v2

    int-to-double v6, v5

    div-double v6, p4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    add-double v10, p1, v6

    const/4 v12, 0x0

    move v13, v12

    .line 469
    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    .line 470
    aget-wide v14, v1, v13

    aput-wide v14, p11, v13

    .line 471
    aget-wide v14, v1, v13

    aget-object v16, p8, v12

    aget-wide v17, v16, v13

    mul-double v17, v17, v6

    add-double v14, v14, v17

    aput-wide v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    .line 473
    aget-object v14, p8, v13

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    move v14, v13

    :goto_1
    if-ge v14, v5, :cond_7

    mul-int/lit8 v15, v14, 0x2

    if-ne v15, v5, :cond_1

    .line 480
    array-length v15, v1

    move-object/from16 v13, p9

    invoke-static {v4, v12, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p9

    :goto_2
    add-double/2addr v10, v6

    move v15, v12

    .line 484
    :goto_3
    array-length v12, v1

    if-ge v15, v12, :cond_2

    .line 485
    aget-wide v16, v4, v15

    .line 486
    aget-wide v18, p11, v15

    aget-object v12, p8, v14

    aget-wide v20, v12, v15

    mul-double v20, v20, v8

    add-double v18, v18, v20

    aput-wide v18, v4, v15

    .line 487
    aput-wide v16, p11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v14, 0x1

    .line 490
    aget-object v15, p8, v12

    invoke-virtual {v0, v10, v11, v4, v15}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 493
    iget-boolean v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-eqz v15, :cond_5

    iget v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    if-gt v14, v15, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-ge v2, v14, :cond_5

    move-wide v15, v8

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    .line 495
    :goto_4
    array-length v0, v3

    if-ge v14, v0, :cond_3

    const/4 v0, 0x0

    .line 496
    aget-object v17, p8, v0

    aget-wide v18, v17, v14

    aget-wide v20, v3, v14

    div-double v18, v18, v20

    mul-double v18, v18, v18

    add-double v8, v8, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v17, 0x0

    .line 500
    :goto_5
    array-length v14, v3

    if-ge v0, v14, :cond_4

    .line 501
    aget-object v14, p8, v12

    aget-wide v19, v14, v0

    const/4 v14, 0x0

    aget-object v21, p8, v14

    aget-wide v22, v21, v0

    sub-double v19, v19, v22

    aget-wide v21, v3, v0

    div-double v19, v19, v21

    mul-double v19, v19, v19

    add-double v17, v17, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    .line 504
    invoke-static {v2, v3, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v8

    cmpl-double v0, v17, v2

    if-lez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_5
    move-wide v15, v8

    :cond_6
    const/4 v0, 0x0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move v14, v12

    move-wide v8, v15

    const/4 v13, 0x1

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7
    move v0, v12

    .line 512
    :goto_6
    array-length v0, v1

    if-ge v12, v0, :cond_8

    .line 513
    aget-wide v2, p11, v12

    aget-wide v8, v4, v12

    add-double/2addr v2, v8

    aget-object v0, p8, v5

    aget-wide v8, v0, v12

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v8

    aput-wide v2, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 353
    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0

    .line 339
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 342
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 552
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 553
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v15, 0x1

    if-lez v0, :cond_0

    move v11, v15

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 557
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v10

    .line 558
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 559
    array-length v1, v0

    new-array v9, v1, [D

    .line 560
    array-length v1, v0

    new-array v8, v1, [D

    .line 561
    array-length v1, v0

    new-array v7, v1, [D

    .line 562
    array-length v1, v0

    new-array v6, v1, [D

    .line 564
    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v2, v1

    sub-int/2addr v2, v15

    new-array v5, v2, [[D

    .line 565
    array-length v1, v1

    sub-int/2addr v1, v15

    new-array v4, v1, [[D

    const/4 v1, 0x0

    .line 566
    :goto_1
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v2

    sub-int/2addr v3, v15

    if-ge v1, v3, :cond_1

    .line 567
    array-length v2, v0

    new-array v2, v2, [D

    aput-object v2, v5, v1

    .line 568
    array-length v2, v0

    new-array v2, v2, [D

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_1
    array-length v1, v2

    new-array v3, v1, [[[D

    const/4 v1, 0x0

    .line 572
    :goto_2
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v14, v2

    if-ge v1, v14, :cond_3

    .line 574
    aget v2, v2, v1

    add-int/2addr v2, v15

    new-array v2, v2, [[D

    aput-object v2, v3, v1

    const/4 v14, 0x0

    .line 577
    aput-object v9, v2, v14

    const/4 v2, 0x0

    .line 579
    :goto_3
    iget-object v14, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v14, v14, v1

    if-ge v2, v14, :cond_2

    .line 580
    aget-object v14, v3, v1

    add-int/lit8 v2, v2, 0x1

    array-length v15, v10

    new-array v15, v15, [D

    aput-object v15, v14, v2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    if-eq v0, v10, :cond_4

    .line 586
    array-length v1, v10

    const/4 v2, 0x0

    invoke-static {v10, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    :cond_4
    array-length v1, v10

    new-array v14, v1, [D

    .line 590
    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    const/4 v15, 0x2

    mul-int/2addr v1, v15

    const/4 v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v16, v3

    array-length v3, v10

    move-object/from16 v17, v4

    new-array v4, v15, [I

    aput v3, v4, v2

    const/4 v2, 0x0

    aput v1, v4, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, [[D

    .line 593
    iget v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    new-array v4, v1, [D

    .line 594
    invoke-direct {v12, v0, v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 597
    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    if-nez v1, :cond_5

    iget-wide v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    goto :goto_4

    :cond_5
    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    const/4 v2, 0x0

    aget-wide v19, v1, v2

    move-wide/from16 v1, v19

    :goto_4
    move-object/from16 v19, v4

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 599
    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    .line 600
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    sub-int/2addr v3, v15

    const-wide v20, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v1, v20, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v3, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v22

    .line 605
    new-instance v4, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v24

    move-object v1, v4

    move-object v2, v0

    move-object v3, v9

    move-object v13, v4

    move-object/from16 v15, v17

    move-object v4, v8

    move-object v15, v5

    move-object v5, v14

    move-object/from16 v26, v6

    move-object/from16 v6, v18

    move-object/from16 v27, v7

    move v7, v11

    move-object/from16 v28, v14

    move-object v14, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v14

    move-object v14, v9

    move-object/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    iput-wide v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 620
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v3, v10

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initIntegration(D[DD)V

    .line 621
    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const-wide/16 v29, 0x0

    const/4 v1, 0x0

    aput-wide v29, v0, v1

    .line 622
    iput-boolean v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v31, v0

    move/from16 v34, v22

    move-wide/from16 v1, v29

    const/4 v0, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v33, 0x0

    :goto_5
    if-eqz v0, :cond_8

    .line 630
    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    if-nez v22, :cond_6

    .line 634
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v12, v3, v4, v9, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    :cond_6
    if-eqz v24, :cond_7

    mul-int/lit8 v0, v34, 0x2

    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 638
    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v3, v19

    move-object v6, v9

    move-object v7, v14

    move-object/from16 v8, v27

    move-object/from16 v35, v9

    move-object/from16 v9, v26

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_6

    :cond_7
    move-object/from16 v35, v9

    :goto_6
    const/16 v36, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v35, v9

    move/from16 v36, v0

    .line 646
    :goto_7
    iput-wide v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    if-eqz v11, :cond_9

    .line 649
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v3, v5

    cmpl-double v0, v3, p2

    if-gtz v0, :cond_a

    :cond_9
    if-nez v11, :cond_b

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v3, v5

    cmpg-double v0, v3, p2

    if-gez v0, :cond_b

    .line 651
    :cond_a
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    sub-double v3, p2, v3

    iput-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 653
    :cond_b
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v3, v5

    if-eqz v11, :cond_c

    cmpl-double v0, v3, p2

    if-ltz v0, :cond_d

    goto :goto_8

    :cond_c
    cmpg-double v0, v3, p2

    if-gtz v0, :cond_d

    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    .line 654
    :goto_9
    iput-boolean v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const/4 v9, -0x1

    move v8, v9

    move-wide/from16 v38, v31

    move/from16 v7, v34

    const/16 v34, 0x1

    const/16 v37, 0x0

    move-wide/from16 v31, v1

    :goto_a
    if-eqz v34, :cond_24

    add-int/lit8 v6, v8, 0x1

    .line 663
    iget-wide v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    aget-object v42, v16, v6

    if-nez v6, :cond_e

    const/4 v0, 0x0

    aget-object v3, v18, v0

    move-object/from16 v43, v3

    goto :goto_b

    :cond_e
    aget-object v0, v15, v8

    move-object/from16 v43, v0

    :goto_b
    if-nez v6, :cond_f

    move-object/from16 v44, v23

    goto :goto_c

    :cond_f
    aget-object v0, v17, v8

    move-object/from16 v44, v0

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v3, v35

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move/from16 v40, v6

    move/from16 v47, v7

    move-object/from16 v7, v19

    move/from16 v48, v8

    move-object/from16 v8, v42

    move-object/from16 v9, v43

    move-object/from16 v49, v10

    move-object/from16 v10, v44

    move v13, v11

    move-object/from16 v11, v27

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v0

    if-nez v0, :cond_10

    .line 669
    iget-wide v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v13, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move/from16 v34, v2

    move v11, v13

    move/from16 v8, v40

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move/from16 v7, v47

    move-object/from16 v10, v49

    const/4 v9, -0x1

    :goto_d
    const/16 v37, 0x1

    goto :goto_a

    :cond_10
    move/from16 v8, v40

    const/4 v2, 0x0

    if-lez v8, :cond_23

    move-object/from16 v7, v17

    move-object/from16 v6, v23

    .line 680
    invoke-direct {v12, v2, v8, v7, v6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    move-object/from16 v10, v19

    move-object/from16 v9, v35

    .line 681
    invoke-direct {v12, v9, v6, v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    move v0, v2

    move-wide/from16 v3, v29

    .line 685
    :goto_e
    iget v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    if-ge v0, v1, :cond_11

    .line 686
    aget-wide v43, v6, v0

    aget-object v1, v7, v2

    aget-wide v50, v1, v0

    sub-double v43, v43, v50

    invoke-static/range {v43 .. v44}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v43, v10, v0

    div-double v1, v1, v43

    mul-double/2addr v1, v1

    add-double/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    goto :goto_e

    .line 689
    :cond_11
    iget v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    int-to-double v0, v0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_22

    const/4 v2, 0x1

    if-le v8, v2, :cond_12

    cmpl-double v3, v0, v38

    if-lez v3, :cond_12

    goto/16 :goto_19

    :cond_12
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v0

    move-object/from16 v35, v9

    move-object/from16 v19, v10

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 698
    invoke-static {v3, v4, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v3, v2

    int-to-double v2, v3

    div-double v4, v9, v2

    .line 702
    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    iget-wide v9, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    div-double v9, v0, v9

    invoke-static {v9, v10, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 703
    iget-wide v9, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    invoke-static {v9, v10, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    .line 704
    iget-wide v9, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v9, v4, v9

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    div-double v4, v40, v4

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 705
    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    iget-wide v9, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double/2addr v9, v2

    const/4 v2, 0x1

    invoke-virtual {v12, v9, v10, v13, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aput-wide v2, v4, v8

    .line 706
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v8

    int-to-double v3, v3

    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v9, v5, v8

    div-double/2addr v3, v9

    aput-wide v3, v2, v8

    move/from16 v9, v47

    sub-int v10, v8, v9

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1d

    if-eqz v10, :cond_18

    const/4 v3, 0x1

    if-eq v10, v3, :cond_15

    if-nez v24, :cond_13

    .line 779
    iget-boolean v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v2, :cond_14

    :cond_13
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_14

    goto :goto_12

    :cond_14
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move-object v11, v12

    goto/16 :goto_17

    :cond_15
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_17

    const/4 v0, 0x1

    if-le v9, v0, :cond_16

    add-int/lit8 v0, v9, -0x1

    .line 768
    aget-wide v0, v2, v0

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v2, v9

    mul-double v3, v3, v31

    cmpg-double v0, v0, v3

    if-gez v0, :cond_16

    add-int/lit8 v0, v9, -0x1

    goto :goto_f

    :cond_16
    move v0, v9

    .line 773
    :goto_f
    aget-wide v31, v5, v0

    const/16 v37, 0x1

    goto :goto_10

    :cond_17
    move v0, v9

    :goto_10
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move-object v11, v12

    move-object/from16 v17, v15

    const/16 v34, 0x0

    :goto_11
    move v7, v0

    goto/16 :goto_18

    :cond_18
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_19

    :goto_12
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move v7, v9

    move-object v11, v12

    :goto_13
    move-object/from16 v17, v15

    const/16 v34, 0x0

    goto/16 :goto_18

    .line 749
    :cond_19
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    move/from16 v10, v48

    add-int/lit8 v4, v10, 0x2

    aget v4, v3, v4

    int-to-double v11, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-double v3, v3

    div-double/2addr v11, v3

    mul-double/2addr v11, v11

    cmpl-double v0, v0, v11

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    if-le v9, v0, :cond_1a

    add-int/lit8 v0, v9, -0x1

    .line 755
    aget-wide v0, v2, v0

    move-object/from16 v11, p0

    iget-wide v3, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v2, v9

    mul-double v3, v3, v31

    cmpg-double v0, v0, v3

    if-gez v0, :cond_1b

    add-int/lit8 v0, v9, -0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v11, p0

    :cond_1b
    move v0, v9

    .line 760
    :goto_14
    aget-wide v31, v5, v0

    const/16 v34, 0x0

    const/16 v37, 0x1

    goto :goto_15

    :cond_1c
    move-object/from16 v11, p0

    move v0, v9

    :goto_15
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move-object/from16 v17, v15

    goto :goto_11

    :cond_1d
    move-object v11, v12

    move/from16 v10, v48

    const/4 v12, 0x1

    if-le v9, v12, :cond_20

    if-nez v33, :cond_20

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v0, v40

    if-gtz v12, :cond_1e

    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move v7, v9

    goto :goto_13

    .line 722
    :cond_1e
    iget-object v12, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v14, v12, v9

    move-object/from16 v17, v15

    int-to-double v14, v14

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v40, v7

    aget v7, v12, v23

    move-object/from16 v23, v6

    int-to-double v6, v7

    mul-double/2addr v14, v6

    const/4 v6, 0x0

    aget v7, v12, v6

    mul-int/2addr v7, v7

    int-to-double v6, v7

    div-double/2addr v14, v6

    mul-double/2addr v14, v14

    cmpl-double v0, v0, v14

    if-lez v0, :cond_21

    const/4 v0, 0x1

    if-le v8, v0, :cond_1f

    .line 730
    aget-wide v0, v2, v10

    iget-wide v6, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    mul-double/2addr v6, v3

    cmpg-double v0, v0, v6

    if-gez v0, :cond_1f

    goto :goto_16

    :cond_1f
    move v10, v8

    .line 735
    :goto_16
    aget-wide v31, v5, v10

    move v7, v10

    const/16 v34, 0x0

    const/16 v37, 0x1

    goto :goto_18

    :cond_20
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    :goto_17
    move-object/from16 v17, v15

    :cond_21
    move v7, v9

    :goto_18
    move-object v12, v11

    move v11, v13

    move-object/from16 v15, v17

    move-object/from16 v17, v40

    goto :goto_1a

    :cond_22
    :goto_19
    move-object/from16 v23, v6

    move-object/from16 v40, v7

    move-object/from16 v35, v9

    move-object/from16 v19, v10

    move-object v11, v12

    move-object/from16 v17, v15

    move/from16 v9, v47

    .line 693
    iget-wide v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v1, v13, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move v7, v9

    move-object v12, v11

    move v11, v13

    move-object/from16 v15, v17

    move-object/from16 v17, v40

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v10, v49

    const/4 v9, -0x1

    const/16 v34, 0x0

    goto/16 :goto_d

    :cond_23
    move/from16 v9, v47

    move v7, v9

    move v11, v13

    :goto_1a
    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v10, v49

    const/4 v9, -0x1

    goto/16 :goto_a

    :cond_24
    move v9, v7

    move-object/from16 v49, v10

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v40, v17

    move v10, v8

    move v13, v11

    move-object v11, v12

    move-object/from16 v17, v15

    if-nez v37, :cond_25

    .line 793
    iget-wide v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v0, v2

    move-object/from16 v6, v23

    move-object/from16 v7, v28

    invoke-virtual {v11, v0, v1, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_1b

    :cond_25
    move-object/from16 v6, v23

    move-object/from16 v7, v28

    .line 797
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->getMaxStep()D

    move-result-wide v0

    if-nez v37, :cond_31

    const/4 v2, 0x1

    :goto_1c
    if-gt v2, v10, :cond_26

    const/4 v3, 0x0

    .line 802
    aget-object v4, v18, v3

    move-object/from16 v8, v17

    invoke-direct {v11, v3, v2, v8, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_26
    move-object/from16 v8, v17

    mul-int/lit8 v2, v10, 0x2

    .line 805
    iget v3, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2e

    .line 810
    div-int/lit8 v5, v4, 0x2

    .line 811
    iget-object v12, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v12, v12, v5

    int-to-double v14, v12

    mul-double v14, v14, v20

    invoke-static {v14, v15, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    .line 812
    aget-object v12, v16, v5

    array-length v12, v12

    const/16 v17, 0x2

    div-int/lit8 v12, v12, 0x2

    move-wide/from16 v23, v0

    move/from16 v17, v13

    move-object/from16 v1, v49

    const/4 v0, 0x0

    .line 813
    :goto_1e
    array-length v13, v1

    if-ge v0, v13, :cond_27

    add-int/lit8 v13, v4, 0x1

    .line 814
    aget-object v13, v18, v13

    aget-object v28, v16, v5

    add-int v34, v12, v4

    aget-object v28, v28, v34

    aget-wide v43, v28, v0

    mul-double v43, v43, v14

    aput-wide v43, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_27
    const/4 v0, 0x1

    :goto_1f
    sub-int v12, v10, v5

    if-gt v0, v12, :cond_29

    .line 817
    iget-object v12, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v13, v0, v5

    aget v12, v12, v13

    int-to-double v14, v12

    mul-double v14, v14, v20

    invoke-static {v14, v15, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    .line 818
    aget-object v12, v16, v13

    array-length v12, v12

    const/16 v25, 0x2

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v28, v7

    move/from16 v47, v9

    const/4 v9, 0x0

    .line 819
    :goto_20
    array-length v7, v1

    if-ge v9, v7, :cond_28

    add-int/lit8 v7, v0, -0x1

    .line 820
    aget-object v7, v8, v7

    aget-object v34, v16, v13

    add-int v43, v12, v4

    aget-object v34, v34, v43

    aget-wide v43, v34, v9

    mul-double v43, v43, v14

    aput-wide v43, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_28
    add-int/lit8 v7, v4, 0x1

    .line 822
    aget-object v7, v18, v7

    invoke-direct {v11, v5, v0, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v28

    move/from16 v9, v47

    goto :goto_1f

    :cond_29
    move-object/from16 v28, v7

    move/from16 v47, v9

    const/4 v0, 0x0

    .line 824
    :goto_21
    array-length v5, v1

    if-ge v0, v5, :cond_2a

    add-int/lit8 v5, v4, 0x1

    .line 825
    aget-object v5, v18, v5

    aget-wide v12, v5, v0

    iget-wide v14, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double/2addr v12, v14

    aput-wide v12, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    .line 829
    div-int/lit8 v0, v4, 0x2

    :goto_22
    if-gt v0, v10, :cond_2d

    .line 830
    aget-object v5, v16, v0

    array-length v5, v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_23
    mul-int/lit8 v7, v4, 0x2

    if-lt v5, v7, :cond_2c

    const/4 v7, 0x0

    .line 831
    :goto_24
    array-length v9, v1

    if-ge v7, v9, :cond_2b

    .line 832
    aget-object v9, v16, v0

    aget-object v12, v9, v5

    aget-wide v13, v12, v7

    add-int/lit8 v15, v5, -0x2

    aget-object v9, v9, v15

    aget-wide v43, v9, v7

    sub-double v13, v13, v43

    aput-wide v13, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_2b
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2d
    move-object/from16 v49, v1

    move/from16 v13, v17

    move-wide/from16 v0, v23

    move-object/from16 v7, v28

    move/from16 v9, v47

    goto/16 :goto_1d

    :cond_2e
    move-wide/from16 v23, v0

    move-object/from16 v28, v7

    move/from16 v47, v9

    move/from16 v17, v13

    move-object/from16 v1, v49

    if-ltz v3, :cond_30

    .line 842
    move-object/from16 v4, v45

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 844
    iget-wide v4, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move-object/from16 v7, v45

    invoke-virtual {v7, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 846
    iget-boolean v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v0, :cond_2f

    move-object/from16 v9, v19

    .line 848
    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v3

    .line 849
    iget-wide v12, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-int/lit8 v2, v2, 0x7

    int-to-double v14, v2

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    div-double v14, v23, v14

    invoke-static {v3, v4, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v14

    move-object/from16 v49, v1

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    div-double/2addr v12, v0

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v2, v3, v12

    move-wide v12, v0

    if-lez v2, :cond_32

    move-wide/from16 v31, v12

    const/16 v37, 0x1

    goto :goto_26

    :cond_2f
    move-object/from16 v49, v1

    move-object/from16 v9, v19

    goto :goto_25

    :cond_30
    move-object/from16 v49, v1

    move-object/from16 v9, v19

    move-object/from16 v7, v45

    goto :goto_25

    :cond_31
    move-wide/from16 v23, v0

    move-object/from16 v28, v7

    move/from16 v47, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v7, v45

    move/from16 v17, v13

    :goto_25
    move-wide/from16 v12, v23

    :cond_32
    :goto_26
    if-nez v37, :cond_3e

    .line 864
    iget-wide v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-object/from16 v0, p0

    move-object/from16 v14, v49

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v28

    move-wide/from16 v4, p2

    .line 865
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 868
    iget-wide v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 869
    array-length v0, v14

    move-object/from16 v1, v35

    const/4 v2, 0x0

    invoke-static {v6, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    array-length v0, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v46

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    if-ne v10, v2, :cond_35

    move-object/from16 v46, v3

    move-object/from16 v28, v4

    move-object/from16 v23, v6

    move-object/from16 v45, v7

    move/from16 v0, v47

    if-eqz v33, :cond_33

    goto :goto_27

    :cond_33
    const/4 v2, 0x2

    :cond_34
    :goto_27
    const/4 v3, 0x2

    goto/16 :goto_29

    :cond_35
    move/from16 v0, v47

    if-gt v10, v0, :cond_38

    .line 881
    iget-object v5, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v15, v10, -0x1

    aget-wide v22, v5, v15

    move-object/from16 v46, v3

    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v5, v10

    mul-double v2, v2, v31

    cmpg-double v2, v22, v2

    if-gez v2, :cond_36

    move-object/from16 v28, v4

    move-object/from16 v23, v6

    move-object/from16 v45, v7

    move v2, v15

    goto :goto_27

    .line 883
    :cond_36
    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    mul-double v2, v2, v22

    cmpg-double v2, v31, v2

    if-gez v2, :cond_37

    add-int/lit8 v2, v10, 0x1

    .line 884
    iget-object v3, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v3, v3

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    move-object/from16 v28, v4

    move v3, v5

    move-object/from16 v23, v6

    move-object/from16 v45, v7

    goto :goto_29

    :cond_37
    move-object/from16 v28, v4

    move-object/from16 v23, v6

    move-object/from16 v45, v7

    move v2, v10

    goto :goto_27

    :cond_38
    move-object/from16 v46, v3

    const/4 v5, 0x2

    add-int/lit8 v2, v10, -0x1

    if-le v10, v5, :cond_39

    .line 888
    iget-object v3, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v5, v10, -0x2

    aget-wide v22, v3, v5

    move-object/from16 v28, v4

    move v15, v5

    iget-wide v4, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    aget-wide v31, v3, v2

    mul-double v4, v4, v31

    cmpg-double v3, v22, v4

    if-gez v3, :cond_3a

    move v2, v15

    goto :goto_28

    :cond_39
    move-object/from16 v28, v4

    .line 892
    :cond_3a
    :goto_28
    iget-object v3, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v4, v3, v10

    move-object/from16 v23, v6

    move-object/from16 v45, v7

    iget-wide v6, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    aget-wide v31, v3, v2

    mul-double v6, v6, v31

    cmpg-double v3, v4, v6

    if-gez v3, :cond_34

    .line 893
    iget-object v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v10, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    :goto_29
    if-eqz v33, :cond_3b

    .line 900
    invoke-static {v2, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 901
    iget-wide v4, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v6, v0, v2

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    move-wide/from16 v31, v4

    move/from16 v15, v17

    const/4 v6, 0x0

    goto :goto_2b

    :cond_3b
    if-gt v2, v10, :cond_3c

    .line 905
    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v4, v0, v2

    move/from16 v15, v17

    const/4 v6, 0x0

    goto :goto_2a

    :cond_3c
    if-ge v10, v0, :cond_3d

    .line 907
    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v4, v0, v10

    iget-wide v6, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    add-int/lit8 v15, v10, -0x1

    aget-wide v24, v0, v15

    mul-double v6, v6, v24

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3d

    .line 909
    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v4, v0, v10

    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    aget v0, v0, v10

    int-to-double v6, v0

    div-double/2addr v4, v6

    move/from16 v15, v17

    const/4 v0, 0x0

    invoke-virtual {v11, v4, v5, v15, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    move v6, v0

    goto :goto_2a

    :cond_3d
    move/from16 v15, v17

    .line 912
    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v4, v0, v10

    iget-object v0, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v6, v0, v2

    int-to-double v6, v6

    mul-double/2addr v4, v6

    aget v0, v0, v10

    int-to-double v6, v0

    div-double/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {v11, v4, v5, v15, v6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    :goto_2a
    move-wide/from16 v31, v4

    :goto_2b
    move/from16 v34, v2

    move-wide/from16 v4, v31

    const/4 v0, 0x1

    const/16 v22, 0x1

    goto :goto_2c

    :cond_3e
    move-object/from16 v23, v6

    move-object/from16 v45, v7

    move/from16 v15, v17

    move-object/from16 v1, v35

    move/from16 v0, v47

    move-object/from16 v14, v49

    const/4 v3, 0x2

    const/4 v6, 0x0

    move/from16 v34, v0

    move-wide/from16 v4, v31

    move/from16 v0, v36

    .line 925
    :goto_2c
    invoke-static {v4, v5, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    if-nez v15, :cond_3f

    neg-double v4, v4

    :cond_3f
    if-eqz v37, :cond_40

    .line 933
    iput-boolean v6, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    const/16 v33, 0x1

    goto :goto_2d

    :cond_40
    move/from16 v33, v6

    .line 939
    :goto_2d
    iget-boolean v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v2, :cond_41

    .line 942
    iget-wide v2, v11, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v7, p1

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 943
    invoke-virtual {v7, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->resetInternalState()V

    return-void

    :cond_41
    move-object/from16 v7, p1

    move/from16 v24, v6

    move-object/from16 v19, v9

    move-object v12, v11

    move-object v10, v14

    move v11, v15

    move-wide/from16 v31, v38

    move-object/from16 v17, v40

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object v9, v1

    move-wide v1, v4

    move-object v15, v8

    goto/16 :goto_5
.end method

.method public setControlFactors(DDDD)V
    .locals 5

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p1, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_1

    cmpl-double v2, p1, v3

    if-lez v2, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p1, 0x3fe4cccccccccccdL    # 0.65

    .line 263
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    :goto_1
    cmpg-double p1, p3, v0

    if-ltz p1, :cond_3

    cmpl-double p1, p3, v3

    if-lez p1, :cond_2

    goto :goto_2

    .line 271
    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_3

    :cond_3
    :goto_2
    const-wide p1, 0x3fee147ae147ae14L    # 0.94

    .line 269
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    :goto_3
    cmpg-double p1, p5, v0

    if-ltz p1, :cond_5

    cmpl-double p1, p5, v3

    if-lez p1, :cond_4

    goto :goto_4

    .line 277
    :cond_4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_5

    :cond_5
    :goto_4
    const-wide p1, 0x3f947ae147ae147bL    # 0.02

    .line 275
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    :goto_5
    const-wide p1, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double p1, p7, p1

    if-ltz p1, :cond_7

    const-wide p1, 0x408f3f3333333333L    # 999.9

    cmpl-double p1, p7, p1

    if-lez p1, :cond_6

    goto :goto_6

    .line 283
    :cond_6
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    goto :goto_7

    :cond_7
    :goto_6
    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 281
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    :goto_7
    return-void
.end method

.method public setInterpolationControl(ZI)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-lez p2, :cond_1

    const/4 p1, 0x7

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 414
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    :goto_1
    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 4

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 314
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x12

    .line 315
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p2, v0

    const-wide v2, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz p1, :cond_3

    cmpl-double p1, p2, v2

    if-lez p1, :cond_2

    goto :goto_0

    .line 321
    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 319
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    :goto_1
    cmpg-double p1, p4, v0

    if-ltz p1, :cond_5

    cmpl-double p1, p4, v2

    if-lez p1, :cond_4

    goto :goto_2

    .line 327
    :cond_4
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_3

    :cond_5
    :goto_2
    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 325
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 331
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-gtz p2, :cond_0

    const/4 p2, 0x2

    .line 224
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    .line 225
    :cond_1
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    const-wide p1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p4, p1

    if-ltz p1, :cond_3

    const-wide p1, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double p1, p4, p1

    if-lez p1, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    .line 228
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    :goto_1
    return-void
.end method
