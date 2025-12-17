.class public Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.source "BrentOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

    .line 49
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 53
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 111
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 84
    sget-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p5, p1, v0

    if-ltz p5, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p5, p3, v0

    if-lez p5, :cond_0

    .line 91
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    .line 92
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    return-void

    .line 88
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 85
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

.method private best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    if-eqz p3, :cond_3

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double p3, v0, v2

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1

    .line 313
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

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
.method protected doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 51

    move-object/from16 v0, p0

    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 118
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMin()D

    move-result-wide v4

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v6

    .line 120
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMax()D

    move-result-wide v8

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    cmpg-double v10, v4, v8

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v49, v4

    move-wide v4, v8

    move-wide/from16 v8, v49

    .line 141
    :goto_1
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v10

    if-nez v1, :cond_2

    neg-double v10, v10

    .line 149
    :cond_2
    new-instance v12, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_3

    move-wide v13, v10

    goto :goto_2

    :cond_3
    neg-double v13, v10

    :goto_2
    invoke-direct {v12, v6, v7, v13, v14}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    const/4 v15, 0x0

    move-wide/from16 v17, v10

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-object v13, v12

    move-object v14, v15

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-wide v10, v6

    move-wide v15, v8

    move-wide v8, v10

    :goto_3
    add-double v29, v4, v15

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    mul-double v29, v29, v31

    move-object/from16 v33, v2

    move/from16 v34, v3

    .line 157
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    mul-double v2, v2, v35

    move-wide/from16 v35, v10

    iget-wide v10, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double/2addr v2, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v37, v2, v10

    sub-double v39, v6, v29

    .line 161
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    sub-double v41, v15, v4

    mul-double v41, v41, v31

    sub-double v41, v37, v41

    cmpg-double v39, v39, v41

    if-gtz v39, :cond_4

    .line 279
    invoke-direct {v0, v14, v13, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-direct {v0, v12, v2, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v1

    return-object v1

    .line 168
    :cond_4
    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    cmpl-double v14, v39, v2

    if-lez v14, :cond_b

    sub-double v39, v6, v8

    sub-double v41, v17, v19

    mul-double v41, v41, v39

    sub-double v43, v6, v35

    sub-double v45, v17, v21

    mul-double v45, v45, v43

    mul-double v43, v43, v45

    mul-double v39, v39, v41

    move-wide/from16 v47, v8

    sub-double v8, v43, v39

    sub-double v45, v45, v41

    mul-double v10, v10, v45

    const-wide/16 v23, 0x0

    cmpl-double v14, v10, v23

    if-lez v14, :cond_5

    neg-double v8, v8

    goto :goto_4

    :cond_5
    neg-double v10, v10

    :goto_4
    sub-double v39, v4, v6

    mul-double v41, v10, v39

    cmpl-double v14, v8, v41

    if-lez v14, :cond_9

    sub-double v41, v15, v6

    mul-double v41, v41, v10

    cmpg-double v14, v8, v41

    if-gez v14, :cond_9

    .line 183
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    mul-double v31, v31, v10

    mul-double v31, v31, v25

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v14, v41, v25

    if-gez v14, :cond_9

    div-double/2addr v8, v10

    add-double v10, v6, v8

    sub-double v25, v10, v4

    cmpg-double v14, v25, v37

    if-ltz v14, :cond_7

    sub-double v10, v15, v10

    cmpg-double v10, v10, v37

    if-gez v10, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move-wide/from16 v25, v27

    move-wide/from16 v27, v8

    goto :goto_8

    :cond_7
    :goto_6
    cmpg-double v8, v6, v29

    if-gtz v8, :cond_8

    move-wide/from16 v25, v27

    move-wide/from16 v27, v2

    goto :goto_8

    :cond_8
    neg-double v8, v2

    goto :goto_5

    :cond_9
    cmpg-double v8, v6, v29

    if-gez v8, :cond_a

    sub-double v39, v15, v6

    .line 205
    :cond_a
    sget-wide v8, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double v8, v8, v39

    move-wide/from16 v27, v8

    move-wide/from16 v25, v39

    goto :goto_8

    :cond_b
    move-wide/from16 v47, v8

    cmpg-double v8, v6, v29

    if-gez v8, :cond_c

    sub-double v8, v15, v6

    goto :goto_7

    :cond_c
    sub-double v8, v4, v6

    .line 214
    :goto_7
    sget-wide v10, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v10, v8

    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    .line 218
    :goto_8
    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_e

    const-wide/16 v8, 0x0

    cmpl-double v10, v27, v8

    if-ltz v10, :cond_d

    add-double/2addr v2, v6

    goto :goto_9

    :cond_d
    sub-double v2, v6, v2

    goto :goto_9

    :cond_e
    const-wide/16 v8, 0x0

    add-double v2, v6, v27

    .line 228
    :goto_9
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v10

    if-nez v1, :cond_f

    neg-double v10, v10

    .line 235
    :cond_f
    new-instance v14, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_10

    move-wide v8, v10

    goto :goto_a

    :cond_10
    neg-double v8, v10

    :goto_a
    invoke-direct {v14, v2, v3, v8, v9}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 236
    invoke-direct {v0, v13, v14, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v8

    invoke-direct {v0, v12, v8, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v12

    move-object/from16 v8, v33

    move/from16 v9, v34

    if-eqz v33, :cond_11

    .line 242
    invoke-interface {v8, v9, v13, v14}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    return-object v12

    :cond_11
    cmpg-double v29, v10, v17

    if-gtz v29, :cond_13

    cmpg-double v19, v2, v6

    if-gez v19, :cond_12

    move-wide v15, v6

    goto :goto_b

    :cond_12
    move-wide v4, v6

    :goto_b
    move/from16 v29, v1

    move-wide v0, v6

    move-wide/from16 v19, v21

    move-wide v6, v2

    move-wide/from16 v21, v17

    move-wide/from16 v17, v10

    move-wide/from16 v10, v47

    goto :goto_f

    :cond_13
    cmpg-double v29, v2, v6

    if-gez v29, :cond_14

    move-wide v4, v2

    goto :goto_c

    :cond_14
    move-wide v15, v2

    :goto_c
    cmpg-double v29, v10, v21

    if-lez v29, :cond_19

    move/from16 v29, v1

    move-wide/from16 v0, v47

    .line 265
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v30

    if-eqz v30, :cond_15

    move-wide/from16 v30, v2

    goto :goto_e

    :cond_15
    cmpg-double v30, v10, v19

    if-lez v30, :cond_17

    move-wide/from16 v30, v2

    move-wide/from16 v2, v35

    .line 271
    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v32

    if-nez v32, :cond_18

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v32

    if-eqz v32, :cond_16

    goto :goto_d

    :cond_16
    move-wide v10, v2

    goto :goto_f

    :cond_17
    move-wide/from16 v30, v2

    :cond_18
    :goto_d
    move-wide/from16 v19, v10

    move-wide/from16 v10, v30

    goto :goto_f

    :cond_19
    move/from16 v29, v1

    move-wide/from16 v30, v2

    move-wide/from16 v0, v47

    :goto_e
    move-wide/from16 v19, v21

    move-wide/from16 v21, v10

    move-wide v10, v0

    move-wide/from16 v0, v30

    :goto_f
    add-int/lit8 v3, v9, 0x1

    move-object v2, v8

    move-wide v8, v0

    move/from16 v1, v29

    move-object/from16 v0, p0

    move-object/from16 v49, v14

    move-object v14, v13

    move-object/from16 v13, v49

    goto/16 :goto_3
.end method
