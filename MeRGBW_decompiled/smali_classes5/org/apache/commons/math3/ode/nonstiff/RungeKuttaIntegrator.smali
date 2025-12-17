.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "RungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private final step:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    .line 87
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    .line 88
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    .line 89
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 90
    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 99
    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 100
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v10, 0x0

    if-lez v0, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v10

    .line 104
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v12

    .line 105
    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [D

    .line 106
    iget-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v14, v0

    add-int/lit8 v15, v14, 0x1

    .line 107
    new-array v6, v15, [[D

    move v0, v10

    :goto_1
    if-ge v0, v15, :cond_1

    .line 109
    array-length v1, v12

    new-array v1, v1, [D

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [D

    .line 112
    array-length v0, v12

    new-array v4, v0, [D

    .line 115
    iget-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 116
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v9, v3

    move-object v3, v6

    move-object/from16 v18, v4

    move v4, v11

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    if-eqz v11, :cond_3

    .line 123
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    add-double/2addr v0, v2

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_2

    .line 124
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 126
    :cond_2
    iput-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 129
    :cond_3
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    sub-double/2addr v0, v2

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_4

    .line 130
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    :cond_4
    neg-double v0, v2

    .line 132
    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 135
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v12

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 138
    iput-boolean v10, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    .line 141
    :goto_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 144
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    aget-object v2, v16, v10

    invoke-virtual {v7, v0, v1, v13, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    const/4 v0, 0x1

    :goto_4
    if-ge v0, v15, :cond_7

    move v1, v10

    .line 149
    :goto_5
    array-length v2, v12

    if-ge v1, v2, :cond_6

    .line 150
    iget-object v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aget-wide v4, v2, v10

    aget-object v2, v16, v10

    aget-wide v20, v2, v1

    mul-double v4, v4, v20

    const/4 v2, 0x1

    :goto_6
    if-ge v2, v0, :cond_5

    .line 152
    iget-object v6, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    aget-object v6, v6, v3

    aget-wide v20, v6, v2

    aget-object v6, v16, v2

    aget-wide v22, v6, v1

    mul-double v20, v20, v22

    add-double v4, v4, v20

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 154
    :cond_5
    aget-wide v2, v13, v1

    move/from16 v17, v11

    iget-wide v10, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v10, v4

    add-double/2addr v2, v10

    move-object/from16 v10, v19

    aput-wide v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v17

    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    move/from16 v17, v11

    move-object/from16 v10, v19

    .line 157
    iget-wide v1, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-object v3, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v3, v4

    move-object v11, v9

    iget-wide v8, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v4, v8

    add-double/2addr v1, v4

    aget-object v3, v16, v0

    invoke-virtual {v7, v1, v2, v10, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p1

    move-object v9, v11

    move/from16 v11, v17

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move/from16 v17, v11

    move-object/from16 v10, v19

    move-object v11, v9

    const/4 v0, 0x0

    .line 162
    :goto_7
    array-length v1, v12

    if-ge v0, v1, :cond_9

    .line 163
    iget-object v1, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-object v1, v16, v2

    aget-wide v8, v1, v0

    mul-double/2addr v3, v8

    const/4 v1, 0x1

    :goto_8
    if-ge v1, v15, :cond_8

    .line 165
    iget-object v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v8, v2, v1

    aget-object v2, v16, v1

    aget-wide v19, v2, v0

    mul-double v8, v8, v19

    add-double/2addr v3, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 167
    :cond_8
    aget-wide v1, v13, v0

    iget-wide v8, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v8, v3

    add-double/2addr v1, v8

    aput-wide v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 171
    :cond_9
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 172
    array-length v0, v12

    const/4 v6, 0x0

    invoke-static {v10, v6, v13, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    aget-object v0, v16, v14

    array-length v1, v12

    move-object/from16 v8, v18

    invoke-static {v0, v6, v8, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v13

    move-object v3, v8

    move-wide/from16 v4, p2

    .line 174
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 176
    iget-boolean v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-nez v0, :cond_b

    .line 179
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 182
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v0, v2

    if-eqz v17, :cond_a

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_b

    goto :goto_9

    :cond_a
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_b

    .line 185
    :goto_9
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 189
    :cond_b
    iget-boolean v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-eqz v0, :cond_c

    .line 192
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 193
    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 195
    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 196
    iput-wide v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    return-void

    :cond_c
    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object v9, v11

    move/from16 v11, v17

    move-object/from16 v8, p1

    move v10, v6

    goto/16 :goto_3
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD)[D
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    .line 229
    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 230
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 231
    new-array v8, v6, [[D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v6, :cond_0

    .line 233
    array-length v11, v4

    new-array v11, v11, [D

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    sub-double v11, p5, v2

    .line 239
    aget-object v13, v8, v9

    invoke-interface {v1, v2, v3, v5, v13}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    move v13, v7

    :goto_1
    if-ge v13, v6, :cond_3

    move v14, v9

    .line 244
    :goto_2
    array-length v15, v4

    if-ge v14, v15, :cond_2

    .line 245
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v16, v13, -0x1

    aget-object v15, v15, v16

    aget-wide v17, v15, v9

    aget-object v15, v8, v9

    aget-wide v19, v15, v14

    mul-double v17, v17, v19

    move v15, v7

    :goto_3
    if-ge v15, v13, :cond_1

    .line 247
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    aget-object v7, v7, v16

    aget-wide v20, v7, v15

    aget-object v7, v8, v15

    aget-wide v22, v7, v14

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 249
    :cond_1
    aget-wide v15, v5, v14

    mul-double v17, v17, v11

    add-double v15, v15, v17

    aput-wide v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 252
    :cond_2
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, v7, v14

    mul-double/2addr v14, v11

    add-double/2addr v14, v2

    aget-object v7, v8, v13

    invoke-interface {v1, v14, v15, v10, v7}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v1, v9

    .line 257
    :goto_4
    array-length v2, v4

    if-ge v1, v2, :cond_5

    .line 258
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v13, v2, v9

    aget-object v2, v8, v9

    aget-wide v15, v2, v1

    mul-double/2addr v13, v15

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v6, :cond_4

    .line 260
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v15, v3, v2

    aget-object v3, v8, v2

    aget-wide v17, v3, v1

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 262
    :cond_4
    aget-wide v2, v5, v1

    mul-double/2addr v13, v11

    add-double/2addr v2, v13

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v5
.end method
