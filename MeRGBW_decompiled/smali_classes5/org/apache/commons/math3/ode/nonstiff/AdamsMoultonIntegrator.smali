.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsMoultonIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    .line 181
    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    .line 203
    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 214
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 215
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v9, 0x0

    if-lez v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    .line 219
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    .line 220
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [D

    .line 221
    array-length v0, v12

    new-array v13, v0, [D

    .line 222
    array-length v0, v12

    new-array v14, v0, [D

    .line 223
    array-length v0, v12

    new-array v15, v0, [D

    .line 227
    new-instance v4, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v4}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 228
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v4, v12, v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v23, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->initIntegration(D[DD)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 236
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v16, v23

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 237
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v4, v23

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 239
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 240
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 242
    iput-boolean v9, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    const/4 v2, 0x0

    :goto_1
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    move-object v5, v2

    move-wide v2, v0

    move-wide/from16 v0, v16

    :goto_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v0, v16

    if-ltz v18, :cond_4

    .line 248
    iput-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 251
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move/from16 v24, v10

    iget-wide v9, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double/2addr v0, v9

    .line 252
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v5

    .line 254
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    .line 255
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v10

    invoke-virtual {v9, v10, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 257
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    array-length v9, v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_1

    move-wide/from16 v26, v2

    aget-object v2, v5, v10

    .line 258
    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    const/16 v25, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v26

    goto :goto_3

    :cond_1
    move-wide/from16 v26, v2

    const/16 v25, 0x1

    .line 263
    invoke-virtual {v6, v0, v1, v14, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    const/4 v0, 0x0

    .line 266
    :goto_4
    array-length v1, v11

    if-ge v0, v1, :cond_2

    .line 267
    iget-wide v1, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v8, v13, v0

    mul-double/2addr v1, v8

    aput-wide v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 269
    :cond_2
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v5

    .line 270
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    invoke-virtual {v6, v0, v15, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 273
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    invoke-direct {v0, v6, v12, v15, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    cmpl-double v2, v0, v16

    if-ltz v2, :cond_3

    .line 277
    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v2

    .line 278
    iget-wide v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double/2addr v8, v2

    move/from16 v10, v24

    const/4 v2, 0x0

    invoke-virtual {v6, v8, v9, v10, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v8

    .line 279
    invoke-virtual {v4, v8, v9}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    move-wide v2, v8

    goto :goto_5

    :cond_3
    move/from16 v10, v24

    move-wide/from16 v2, v26

    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v26, v2

    const/16 v25, 0x1

    .line 284
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double/2addr v2, v8

    .line 285
    invoke-virtual {v6, v2, v3, v14, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 288
    array-length v8, v11

    new-array v8, v8, [D

    move-wide/from16 v28, v0

    const/4 v9, 0x0

    .line 289
    :goto_6
    array-length v0, v11

    if-ge v9, v0, :cond_5

    .line 290
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v16, v13, v9

    mul-double v0, v0, v16

    aput-wide v0, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 292
    :cond_5
    invoke-virtual {v6, v15, v8, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 295
    array-length v0, v12

    const/4 v9, 0x0

    invoke-static {v14, v9, v12, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-object/from16 v16, v4

    move-wide/from16 v17, v2

    move-wide/from16 v19, v0

    move-object/from16 v21, v8

    move-object/from16 v22, v5

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 297
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 298
    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 299
    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-wide/from16 v2, v28

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v24, v10

    move-wide/from16 v16, v26

    move-wide v9, v2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    move-object v11, v4

    move-object v13, v5

    move-wide/from16 v4, p2

    .line 300
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    .line 301
    iput-object v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    .line 302
    iput-object v13, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 304
    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-nez v0, :cond_b

    .line 307
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 309
    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetOccurred:Z

    if-eqz v0, :cond_6

    .line 312
    iget-wide v1, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move-object v3, v12

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 313
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v16, v11

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v16 .. v22}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 318
    :cond_6
    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v0

    .line 319
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    .line 320
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double/2addr v0, v2

    if-eqz v24, :cond_7

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_8

    :goto_7
    move/from16 v8, v24

    move/from16 v0, v25

    goto :goto_8

    :cond_8
    move/from16 v8, v24

    const/4 v0, 0x0

    .line 322
    :goto_8
    invoke-virtual {v6, v2, v3, v8, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    .line 324
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double/2addr v2, v0

    if-eqz v8, :cond_9

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_a

    goto :goto_9

    :cond_9
    cmpg-double v2, v2, p2

    if-gtz v2, :cond_a

    .line 327
    :goto_9
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    sub-double v0, p2, v0

    .line 330
    :cond_a
    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_a

    :cond_b
    move/from16 v8, v24

    move-wide/from16 v0, v16

    .line 333
    :goto_a
    iget-boolean v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-eqz v2, :cond_c

    .line 336
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 337
    invoke-virtual {v7, v12}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetInternalState()V

    return-void

    :cond_c
    move v10, v8

    move-object v4, v11

    move-object v2, v13

    move-object/from16 v11, v26

    move-object/from16 v13, v27

    const/4 v9, 0x0

    goto/16 :goto_1
.end method
