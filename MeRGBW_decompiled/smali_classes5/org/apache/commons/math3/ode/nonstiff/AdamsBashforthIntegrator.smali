.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 165
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

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

    .line 187
    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 28
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

    .line 197
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 198
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v8, 0x1

    if-lez v0, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 202
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    .line 203
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [D

    .line 204
    array-length v0, v12

    new-array v13, v0, [D

    .line 207
    new-instance v15, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v15}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v15, v12, v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v11

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->initIntegration(D[DD)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 216
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v14, v15

    move-object v9, v15

    move-wide v15, v0

    move-wide/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 217
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 218
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 221
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 222
    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    const/4 v2, 0x0

    .line 225
    iput-boolean v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    :goto_1
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    move-wide/from16 v26, v0

    move-wide v0, v2

    move-wide/from16 v2, v26

    :goto_2
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v0, v14

    if-ltz v5, :cond_4

    .line 231
    iput-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 235
    :goto_3
    iget v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    if-ge v5, v8, :cond_2

    .line 236
    aget-wide v16, v12, v5

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 237
    iget-object v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    if-nez v8, :cond_1

    iget-wide v14, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalAbsoluteTolerance:D

    move-wide/from16 v22, v2

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalRelativeTolerance:D

    mul-double v2, v2, v16

    add-double/2addr v14, v2

    goto :goto_4

    :cond_1
    move-wide/from16 v22, v2

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v14, v2, v5

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecRelativeTolerance:[D

    aget-wide v24, v2, v5

    mul-double v24, v24, v16

    add-double v14, v14, v24

    .line 240
    :goto_4
    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getEntry(II)D

    move-result-wide v2

    div-double/2addr v2, v14

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, v22

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_2
    move-wide/from16 v22, v2

    .line 243
    iget v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    .line 247
    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v2

    .line 248
    iget-wide v14, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double/2addr v14, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v14, v15, v10, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v2

    .line 249
    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_5

    :cond_3
    move-wide/from16 v2, v22

    :goto_5
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v2

    const/4 v8, 0x0

    .line 255
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v14, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    add-double/2addr v2, v14

    .line 256
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 257
    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v5

    .line 259
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v14

    .line 260
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 262
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    array-length v14, v5

    move v15, v8

    :goto_6
    if-ge v15, v14, :cond_5

    move-wide/from16 v24, v0

    aget-object v0, v5, v15

    .line 263
    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    const/16 v21, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v24

    goto :goto_6

    :cond_5
    move-wide/from16 v24, v0

    const/16 v21, 0x1

    .line 268
    invoke-virtual {v6, v2, v3, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeDerivatives(D[D[D)V

    .line 271
    array-length v0, v11

    new-array v8, v0, [D

    const/4 v0, 0x0

    .line 272
    :goto_7
    array-length v1, v11

    if-ge v0, v1, :cond_6

    .line 273
    iget-wide v14, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    aget-wide v16, v13, v0

    mul-double v14, v14, v16

    aput-wide v14, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 275
    :cond_6
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v5

    .line 276
    iget-object v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    invoke-virtual {v6, v0, v8, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 277
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-object v14, v9

    move-wide v15, v2

    move-wide/from16 v17, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 280
    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    move-wide/from16 v14, v24

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v16, v2

    move-object v2, v12

    move-object v3, v13

    move/from16 v24, v4

    move-object/from16 v25, v11

    move-object v11, v5

    move-wide/from16 v4, p2

    .line 281
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    .line 282
    iput-object v8, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    .line 283
    iput-object v11, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 284
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v3, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide v4, v14

    move-object v14, v9

    move-wide/from16 v15, v16

    move-wide/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 286
    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-nez v0, :cond_c

    .line 289
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 291
    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetOccurred:Z

    if-eqz v0, :cond_7

    .line 294
    iget-wide v1, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move-object v3, v12

    move-wide v14, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 295
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v8, v12

    move-wide v11, v14

    move-object v14, v9

    move-wide v15, v0

    move-wide/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    goto :goto_8

    :cond_7
    move-object v8, v12

    move-wide v11, v4

    .line 299
    :goto_8
    invoke-virtual {v6, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v0

    .line 300
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    .line 301
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v0, v2

    if-eqz v10, :cond_8

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_9

    goto :goto_9

    :cond_8
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_9

    :goto_9
    move/from16 v0, v21

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 303
    :goto_a
    invoke-virtual {v6, v2, v3, v10, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    .line 305
    iget-wide v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v2, v0

    if-eqz v10, :cond_a

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_b

    goto :goto_b

    :cond_a
    cmpg-double v2, v2, p2

    if-gtz v2, :cond_b

    .line 308
    :goto_b
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    sub-double v0, p2, v0

    .line 311
    :cond_b
    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_c

    :cond_c
    move-object v8, v12

    move-wide/from16 v0, v22

    .line 315
    :goto_c
    iget-boolean v2, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-eqz v2, :cond_d

    .line 318
    iget-wide v0, v6, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 319
    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetInternalState()V

    return-void

    :cond_d
    move-object v12, v8

    move/from16 v8, v21

    move/from16 v4, v24

    move-object/from16 v11, v25

    goto/16 :goto_1
.end method
