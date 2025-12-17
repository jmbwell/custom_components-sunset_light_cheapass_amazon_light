.class public Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "BrentOptimizer.java"


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 47
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 51
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 109
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 82
    sget-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p5, p1, v0

    if-ltz p5, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p5, p3, v0

    if-lez p5, :cond_0

    .line 89
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    .line 90
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    return-void

    .line 86
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 83
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method private best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    if-eqz p3, :cond_3

    .line 309
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double p3, v0, v2

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1

    .line 311
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double p3, v0, v2

    if-ltz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 49

    move-object/from16 v0, p0

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMin()D

    move-result-wide v2

    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v4

    .line 118
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMax()D

    move-result-wide v6

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v8

    cmpg-double v9, v2, v6

    if-gez v9, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v47, v2

    move-wide v2, v6

    move-wide/from16 v6, v47

    .line 139
    :goto_1
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v9

    if-nez v1, :cond_2

    neg-double v9, v9

    .line 147
    :cond_2
    new-instance v11, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_3

    move-wide v12, v9

    goto :goto_2

    :cond_3
    neg-double v12, v9

    :goto_2
    invoke-direct {v11, v4, v5, v12, v13}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    const/4 v14, 0x0

    move-wide/from16 v16, v9

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-object v12, v11

    move-object v13, v14

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-wide v9, v4

    move-wide v14, v6

    move-wide v6, v9

    :goto_3
    add-double v28, v2, v14

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    mul-double v28, v28, v30

    move-object/from16 v32, v8

    move-wide/from16 v33, v9

    .line 154
    iget-wide v8, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    mul-double v8, v8, v35

    move-wide/from16 v35, v6

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double/2addr v8, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v37, v8, v6

    sub-double v39, v4, v28

    .line 158
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    sub-double v41, v14, v2

    mul-double v41, v41, v30

    sub-double v41, v37, v41

    cmpg-double v10, v39, v41

    if-gtz v10, :cond_4

    .line 276
    invoke-direct {v0, v13, v12, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-direct {v0, v11, v2, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1

    .line 165
    :cond_4
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    cmpl-double v10, v39, v8

    if-lez v10, :cond_b

    sub-double v39, v4, v35

    sub-double v41, v16, v18

    mul-double v41, v41, v39

    sub-double v43, v4, v33

    sub-double v45, v16, v20

    mul-double v45, v45, v43

    mul-double v43, v43, v45

    mul-double v39, v39, v41

    move-object v13, v11

    sub-double v10, v43, v39

    sub-double v45, v45, v41

    mul-double v6, v6, v45

    const-wide/16 v22, 0x0

    cmpl-double v39, v6, v22

    if-lez v39, :cond_5

    neg-double v10, v10

    goto :goto_4

    :cond_5
    neg-double v6, v6

    :goto_4
    sub-double v39, v2, v4

    mul-double v41, v6, v39

    cmpl-double v41, v10, v41

    if-lez v41, :cond_9

    sub-double v41, v14, v4

    mul-double v41, v41, v6

    cmpg-double v41, v10, v41

    if-gez v41, :cond_9

    .line 180
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    mul-double v30, v30, v6

    mul-double v30, v30, v24

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v24, v41, v24

    if-gez v24, :cond_9

    div-double/2addr v10, v6

    add-double v6, v4, v10

    sub-double v24, v6, v2

    cmpg-double v24, v24, v37

    if-ltz v24, :cond_7

    sub-double v6, v14, v6

    cmpg-double v6, v6, v37

    if-gez v6, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v24, v26

    goto :goto_7

    :cond_7
    :goto_5
    cmpg-double v6, v4, v28

    if-gtz v6, :cond_8

    move-wide/from16 v24, v26

    move-wide/from16 v26, v8

    goto :goto_8

    :cond_8
    neg-double v6, v8

    move-wide/from16 v24, v26

    move-wide/from16 v26, v6

    goto :goto_8

    :cond_9
    cmpg-double v6, v4, v28

    if-gez v6, :cond_a

    sub-double v39, v14, v4

    .line 202
    :cond_a
    sget-wide v6, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v6, v6, v39

    move-wide/from16 v26, v6

    move-wide/from16 v24, v39

    goto :goto_8

    :cond_b
    move-object v13, v11

    cmpg-double v6, v4, v28

    if-gez v6, :cond_c

    sub-double v6, v14, v4

    goto :goto_6

    :cond_c
    sub-double v6, v2, v4

    .line 211
    :goto_6
    sget-wide v10, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v10, v6

    move-wide/from16 v24, v6

    :goto_7
    move-wide/from16 v26, v10

    .line 215
    :goto_8
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_e

    const-wide/16 v6, 0x0

    cmpl-double v10, v26, v6

    if-ltz v10, :cond_d

    add-double/2addr v8, v4

    goto :goto_9

    :cond_d
    sub-double v8, v4, v8

    goto :goto_9

    :cond_e
    const-wide/16 v6, 0x0

    add-double v8, v4, v26

    .line 225
    :goto_9
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v10

    if-nez v1, :cond_f

    neg-double v10, v10

    .line 232
    :cond_f
    new-instance v6, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-wide/from16 v28, v2

    if-eqz v1, :cond_10

    move-wide v2, v10

    goto :goto_a

    :cond_10
    neg-double v2, v10

    :goto_a
    invoke-direct {v6, v8, v9, v2, v3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 233
    invoke-direct {v0, v12, v6, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-direct {v0, v13, v2, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v2

    if-eqz v32, :cond_11

    .line 239
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getIterations()I

    move-result v3

    move-object/from16 v7, v32

    invoke-interface {v7, v3, v12, v6}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-object v2

    :cond_11
    move-object/from16 v7, v32

    :cond_12
    cmpg-double v3, v10, v16

    if-gtz v3, :cond_14

    cmpg-double v3, v8, v4

    if-gez v3, :cond_13

    move-wide v14, v4

    goto :goto_b

    :cond_13
    move-wide/from16 v28, v4

    :goto_b
    move/from16 v30, v1

    move-object v13, v2

    move-wide v0, v4

    move-wide v4, v8

    move-wide/from16 v18, v20

    move-wide/from16 v2, v28

    move-wide/from16 v20, v16

    move-wide/from16 v16, v10

    move-wide/from16 v9, v35

    goto/16 :goto_f

    :cond_14
    cmpg-double v3, v8, v4

    if-gez v3, :cond_15

    move-wide/from16 v28, v8

    goto :goto_c

    :cond_15
    move-wide v14, v8

    :goto_c
    cmpg-double v3, v10, v20

    if-lez v3, :cond_1a

    move v3, v1

    move-wide/from16 v0, v35

    .line 262
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object v13, v2

    move/from16 v30, v3

    goto :goto_e

    :cond_16
    cmpg-double v13, v10, v18

    if-lez v13, :cond_18

    move-object v13, v2

    move/from16 v30, v3

    move-wide/from16 v2, v33

    .line 268
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v31

    if-nez v31, :cond_19

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v31

    if-eqz v31, :cond_17

    goto :goto_d

    :cond_17
    move-wide v9, v2

    move-wide/from16 v2, v28

    goto :goto_f

    :cond_18
    move-object v13, v2

    move/from16 v30, v3

    :cond_19
    :goto_d
    move-wide/from16 v18, v10

    move-wide/from16 v2, v28

    move-wide v9, v8

    goto :goto_f

    :cond_1a
    move/from16 v30, v1

    move-object v13, v2

    move-wide/from16 v0, v35

    :goto_e
    move-wide/from16 v18, v20

    move-wide/from16 v2, v28

    move-wide/from16 v20, v10

    move-wide/from16 v47, v0

    move-wide v0, v8

    move-wide/from16 v9, v47

    .line 283
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->incrementIterationCount()V

    move-object v8, v7

    move-object v11, v13

    move-object v13, v12

    move-object v12, v6

    move-wide v6, v0

    move/from16 v1, v30

    move-object/from16 v0, p0

    goto/16 :goto_3
.end method
