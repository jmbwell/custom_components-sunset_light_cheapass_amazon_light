.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "PowellOptimizer.java"


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 62
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 145
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 162
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-wide v0, p1

    move-wide v2, p3

    move-object/from16 v4, p9

    .line 114
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 116
    sget-wide v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_1

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    .line 122
    iput-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    .line 123
    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    .line 126
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p5

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v9, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    return-void

    .line 120
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 117
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private checkParameters()V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getUpperBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 9

    .line 274
    array-length v0, p1

    .line 275
    new-array v1, v0, [D

    .line 276
    new-array v2, v0, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 278
    aget-wide v5, p2, v4

    mul-double/2addr v5, p3

    aput-wide v5, v2, v4

    .line 279
    aget-wide v7, p1, v4

    add-double/2addr v7, v5

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 284
    new-array p1, p1, [[D

    aput-object v1, p1, v3

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 28

    move-object/from16 v0, p0

    .line 168
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->checkParameters()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 172
    array-length v3, v2

    const/4 v4, 0x2

    .line 174
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    .line 176
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v7

    .line 183
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v8

    .line 184
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 186
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->incrementIterationCount()V

    move v13, v6

    move/from16 v18, v13

    move-wide v14, v8

    const-wide/16 v16, 0x0

    :goto_2
    if-ge v13, v3, :cond_2

    .line 195
    aget-object v19, v4, v13

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v5

    .line 199
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v11, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v11

    .line 200
    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v20

    .line 201
    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v11

    .line 202
    invoke-direct {v0, v2, v5, v11, v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 203
    aget-object v2, v2, v6

    sub-double v14, v14, v20

    cmpl-double v5, v14, v16

    if-lez v5, :cond_1

    move/from16 v18, v13

    move-wide/from16 v16, v14

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v14, v20

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    sub-double v11, v8, v14

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v11, v20

    move-object v13, v7

    .line 212
    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->relativeThreshold:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v6, v6, v24

    move-object/from16 v19, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->absoluteThreshold:D

    add-double/2addr v6, v4

    cmpg-double v4, v22, v6

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 216
    :goto_3
    new-instance v5, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v5, v10, v8, v9}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 217
    new-instance v6, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v6, v2, v14, v15}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    if-nez v4, :cond_4

    if-eqz v13, :cond_4

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->getIterations()I

    move-result v4

    invoke-interface {v13, v4, v5, v6}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_8

    .line 222
    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v2, :cond_6

    cmpg-double v1, v14, v8

    if-gez v1, :cond_5

    move-object v5, v6

    :cond_5
    return-object v5

    :cond_6
    cmpl-double v1, v14, v8

    if-lez v1, :cond_7

    move-object v5, v6

    :cond_7
    return-object v5

    .line 229
    :cond_8
    new-array v4, v3, [D

    .line 230
    new-array v5, v3, [D

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_9

    .line 232
    aget-wide v22, v2, v6

    aget-wide v25, v10, v6

    sub-double v22, v22, v25

    aput-wide v22, v4, v6

    .line 233
    aget-wide v22, v2, v6

    mul-double v22, v22, v20

    aget-wide v25, v10, v6

    sub-double v22, v22, v25

    aput-wide v22, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 236
    :cond_9
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, [D

    .line 237
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v5

    cmpl-double v7, v8, v5

    if-lez v7, :cond_a

    add-double v22, v8, v5

    mul-double v25, v14, v20

    sub-double v22, v22, v25

    mul-double v22, v22, v20

    sub-double v11, v11, v16

    mul-double/2addr v11, v11

    mul-double v22, v22, v11

    sub-double/2addr v8, v5

    mul-double v16, v16, v8

    mul-double v16, v16, v8

    sub-double v22, v22, v16

    const-wide/16 v5, 0x0

    cmpg-double v5, v22, v5

    if-gez v5, :cond_a

    .line 247
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v5, v2, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v5

    .line 248
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v6

    .line 249
    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v8

    .line 250
    invoke-direct {v0, v2, v4, v8, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    const/4 v4, 0x0

    .line 251
    aget-object v5, v2, v4

    add-int/lit8 v8, v3, -0x1

    .line 254
    aget-object v9, v19, v8

    aput-object v9, v19, v18

    const/4 v9, 0x1

    .line 255
    aget-object v2, v2, v9

    aput-object v2, v19, v8

    move-object v2, v5

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    const/4 v9, 0x1

    move-wide v6, v14

    :goto_5
    move v5, v9

    move-wide v8, v6

    move-object v7, v13

    move v6, v4

    move-object/from16 v4, v19

    goto/16 :goto_1
.end method
