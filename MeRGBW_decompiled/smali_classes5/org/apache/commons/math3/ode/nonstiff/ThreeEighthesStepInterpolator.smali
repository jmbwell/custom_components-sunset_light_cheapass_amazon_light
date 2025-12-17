.class Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "ThreeEighthesStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 36

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    sub-double v7, v3, v5

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    mul-double v11, v11, p1

    sub-double v11, v5, v11

    mul-double/2addr v11, v1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v15, p1, v13

    sub-double/2addr v15, v9

    mul-double/2addr v15, v1

    .line 103
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    const/16 v19, 0x2

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    const/16 v24, 0x1

    const/16 v25, 0x0

    if-eqz v9, :cond_0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, p1, v26

    if-gtz v9, :cond_0

    move-wide/from16 v26, v11

    .line 104
    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->h:D

    mul-double v10, v10, p1

    div-double v10, v10, v22

    mul-double v3, v3, p1

    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    mul-double v17, v17, p1

    sub-double v22, v22, v17

    mul-double/2addr v13, v3

    add-double v22, v22, v13

    mul-double v22, v22, v10

    mul-double v20, v20, v10

    mul-double v5, v5, p1

    sub-double/2addr v5, v3

    mul-double v5, v5, v20

    mul-double v20, v20, p1

    const-wide/high16 v12, -0x3ff8000000000000L    # -3.0

    mul-double v12, v12, p1

    add-double/2addr v12, v3

    mul-double/2addr v10, v12

    move/from16 v3, v25

    .line 110
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 111
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v25

    aget-wide v12, v4, v3

    .line 112
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v24

    aget-wide v17, v4, v3

    .line 113
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v19

    aget-wide v28, v4, v3

    .line 114
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    const/4 v9, 0x3

    aget-object v4, v4, v9

    aget-wide v30, v4, v3

    .line 115
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    aget-wide v32, v14, v3

    mul-double v34, v22, v12

    add-double v32, v32, v34

    mul-double v34, v5, v17

    add-double v32, v32, v34

    mul-double v34, v20, v28

    add-double v32, v32, v34

    mul-double v34, v10, v30

    add-double v32, v32, v34

    aput-wide v32, v4, v3

    .line 117
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    mul-double/2addr v12, v7

    mul-double v17, v17, v26

    add-double v12, v12, v17

    mul-double v28, v28, v1

    add-double v12, v12, v28

    mul-double v30, v30, v15

    add-double v12, v12, v30

    aput-wide v12, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v26, v11

    div-double v5, p3, v22

    mul-double v3, v3, p1

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    mul-double v10, v10, p1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v10, v17, v10

    mul-double/2addr v13, v3

    add-double/2addr v10, v13

    mul-double/2addr v10, v5

    mul-double v20, v20, v5

    add-double v12, p1, v17

    sub-double v17, v12, v3

    mul-double v17, v17, v20

    mul-double v20, v20, v12

    add-double/2addr v12, v3

    mul-double/2addr v5, v12

    move/from16 v3, v25

    .line 128
    :goto_1
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 129
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v25

    aget-wide v12, v4, v3

    .line 130
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v24

    aget-wide v22, v4, v3

    .line 131
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v19

    aget-wide v28, v4, v3

    .line 132
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    const/4 v9, 0x3

    aget-object v4, v4, v9

    aget-wide v30, v4, v3

    .line 133
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->currentState:[D

    aget-wide v32, v14, v3

    mul-double v34, v10, v12

    sub-double v32, v32, v34

    mul-double v34, v17, v22

    sub-double v32, v32, v34

    mul-double v34, v20, v28

    sub-double v32, v32, v34

    mul-double v34, v5, v30

    sub-double v32, v32, v34

    aput-wide v32, v4, v3

    .line 135
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    mul-double/2addr v12, v7

    mul-double v22, v22, v26

    add-double v12, v12, v22

    mul-double v28, v28, v1

    add-double v12, v12, v28

    mul-double v30, v30, v15

    add-double v12, v12, v30

    aput-wide v12, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V

    return-object v0
.end method
