.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "EmbeddedRungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    .line 116
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    move v0, p2

    .line 118
    iput-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    move-object v0, p3

    .line 119
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    move-object v0, p4

    .line 120
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    move-object/from16 v0, p5

    .line 121
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    move-object/from16 v0, p6

    .line 122
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 127
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 128
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 129
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 154
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    move v0, p2

    .line 156
    iput-boolean v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    move-object v0, p3

    .line 157
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    move-object v0, p4

    .line 158
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    move-object v0, p5

    .line 159
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    move-object v0, p6

    .line 160
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 165
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 166
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 167
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 345
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 196
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 197
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v0, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    .line 201
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v15

    .line 202
    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [D

    .line 203
    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v8, v0

    add-int/lit8 v7, v8, 0x1

    .line 204
    array-length v0, v9

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v12

    aput v7, v1, v13

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[D

    .line 205
    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [D

    .line 206
    array-length v0, v9

    new-array v5, v0, [D

    .line 209
    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 210
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v18

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, v16

    move-object v12, v4

    move v4, v14

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 218
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v15

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 221
    iput-boolean v13, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 224
    :goto_1
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    move-wide/from16 v21, v0

    move v6, v2

    move-wide v4, v3

    :goto_2
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v23

    if-ltz v0, :cond_f

    if-nez v6, :cond_1

    .line 230
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v0, :cond_2

    .line 232
    :cond_1
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    aget-object v2, v16, v13

    invoke-virtual {v10, v0, v1, v9, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    :cond_2
    if-eqz v6, :cond_6

    .line 236
    iget v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->mainSetDimension:I

    new-array v3, v0, [D

    .line 237
    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    if-nez v1, :cond_4

    move v1, v13

    :goto_3
    if-ge v1, v0, :cond_3

    .line 239
    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalAbsoluteTolerance:D

    move/from16 v25, v14

    iget-wide v13, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalRelativeTolerance:D

    aget-wide v21, v9, v1

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    mul-double v13, v13, v21

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v25

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    move/from16 v25, v14

    goto :goto_5

    :cond_4
    move/from16 v25, v14

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    .line 243
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v2, v1

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecRelativeTolerance:[D

    aget-wide v13, v2, v1

    aget-wide v21, v9, v1

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v21

    mul-double v13, v13, v21

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 246
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    const/4 v0, 0x0

    aget-object v13, v16, v0

    const/4 v14, 0x1

    aget-object v19, v16, v14

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object v6, v9

    move v14, v7

    move-object v7, v13

    move v13, v8

    move-object/from16 v8, v17

    move-object v11, v9

    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v7, v0

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    move v13, v8

    move-object v11, v9

    move/from16 v25, v14

    move v14, v7

    move-wide/from16 v7, v21

    .line 251
    :goto_6
    iput-wide v7, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    if-eqz v25, :cond_7

    .line 253
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v0, v2

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_8

    .line 254
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    goto :goto_7

    .line 257
    :cond_7
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v0, v2

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_8

    .line 258
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    :cond_8
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-ge v0, v14, :cond_b

    const/4 v1, 0x0

    .line 265
    :goto_9
    array-length v2, v15

    if-ge v1, v2, :cond_a

    .line 266
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    aget-wide v21, v2, v4

    aget-object v2, v16, v4

    aget-wide v4, v2, v1

    mul-double v21, v21, v4

    const/4 v2, 0x1

    :goto_a
    if-ge v2, v0, :cond_9

    .line 268
    iget-object v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    aget-object v4, v4, v3

    aget-wide v26, v4, v2

    aget-object v4, v16, v2

    aget-wide v28, v4, v1

    mul-double v26, v26, v28

    add-double v21, v21, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 270
    :cond_9
    aget-wide v2, v11, v1

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v4, v4, v21

    add-double/2addr v2, v4

    move-object/from16 v9, v17

    aput-wide v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move-object/from16 v9, v17

    .line 273
    iget-wide v1, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-object v3, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v3, v4

    move/from16 v17, v6

    move-wide/from16 v21, v7

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    aget-object v3, v16, v0

    invoke-virtual {v10, v1, v2, v9, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v17

    move-wide/from16 v7, v21

    move-object/from16 v17, v9

    goto :goto_8

    :cond_b
    move-wide/from16 v21, v7

    move-object/from16 v9, v17

    move/from16 v17, v6

    const/4 v0, 0x0

    .line 278
    :goto_b
    array-length v1, v15

    if-ge v0, v1, :cond_d

    .line 279
    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-object v1, v16, v2

    aget-wide v5, v1, v0

    mul-double/2addr v3, v5

    const/4 v1, 0x1

    :goto_c
    if-ge v1, v14, :cond_c

    .line 281
    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v5, v2, v1

    aget-object v2, v16, v1

    aget-wide v7, v2, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 283
    :cond_c
    aget-wide v1, v11, v0

    iget-wide v5, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    aput-wide v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 287
    :cond_d
    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v11

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    cmpl-double v0, v4, v23

    if-ltz v0, :cond_e

    .line 290
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move/from16 v19, v13

    move v8, v14

    iget-wide v13, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v6, v13

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 293
    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    move/from16 v13, v25

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v3, v13, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v21

    move v14, v13

    move/from16 v6, v17

    move v13, v7

    move v7, v8

    move-object/from16 v17, v9

    move-object v9, v11

    move/from16 v8, v19

    goto :goto_d

    :cond_e
    move v8, v13

    move v7, v14

    move/from16 v6, v17

    move/from16 v14, v25

    const/4 v13, 0x0

    move-object/from16 v17, v9

    move-object v9, v11

    :goto_d
    move-object/from16 v11, p1

    goto/16 :goto_2

    :cond_f
    move/from16 v19, v8

    move-object v11, v9

    move-object/from16 v9, v17

    move v8, v7

    move v7, v13

    move v13, v14

    .line 299
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 300
    array-length v0, v15

    invoke-static {v9, v7, v11, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    aget-object v0, v16, v19

    array-length v1, v15

    move-object/from16 v14, v20

    invoke-static {v0, v7, v14, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v14

    move-wide/from16 v30, v4

    move-wide/from16 v4, p2

    .line 302
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 303
    array-length v0, v11

    invoke-static {v11, v7, v9, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-nez v0, :cond_14

    .line 308
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 310
    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v0, :cond_10

    .line 312
    aget-object v0, v16, v7

    array-length v1, v15

    invoke-static {v14, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_10
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move/from16 v17, v8

    iget-wide v7, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    move-object/from16 v23, v11

    move-object/from16 v20, v12

    move-wide/from16 v11, v30

    invoke-static {v11, v12, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v4, v7

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    .line 318
    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    .line 319
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double/2addr v0, v2

    if-eqz v13, :cond_11

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_12

    goto :goto_e

    :cond_11
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_12

    :goto_e
    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    .line 321
    :goto_f
    invoke-virtual {v10, v2, v3, v13, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    .line 323
    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double/2addr v2, v0

    if-eqz v13, :cond_13

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_15

    goto :goto_10

    :cond_13
    cmpg-double v2, v2, p2

    if-gtz v2, :cond_15

    .line 326
    :goto_10
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    goto :goto_11

    :cond_14
    move/from16 v17, v8

    move-object/from16 v23, v11

    move-object/from16 v20, v12

    move-wide/from16 v0, v21

    .line 331
    :cond_15
    :goto_11
    iget-boolean v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-eqz v2, :cond_16

    .line 334
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 335
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->resetInternalState()V

    return-void

    :cond_16
    move-object/from16 v11, p1

    move v2, v6

    move/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v12, v20

    move-object/from16 v17, v9

    move-object/from16 v20, v14

    move-object/from16 v9, v23

    move v14, v13

    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public setMaxGrowth(D)V
    .locals 0

    .line 366
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    .line 352
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-void
.end method
