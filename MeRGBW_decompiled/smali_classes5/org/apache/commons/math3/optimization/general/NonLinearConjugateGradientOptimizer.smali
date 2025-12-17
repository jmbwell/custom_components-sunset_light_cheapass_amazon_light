.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private initialStep:D

.field private point:[D

.field private final preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private final updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 123
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 124
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 125
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 126
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    return-object p0
.end method

.method private findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 10

    .line 250
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    :goto_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, p4, v2

    if-gez v2, :cond_1

    add-double v2, p2, p4

    .line 254
    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    mul-double v6, v0, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    .line 252
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double/2addr p4, v2

    goto :goto_0

    .line 259
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 26

    move-object/from16 v6, p0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v8

    .line 153
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v9, v0

    .line 154
    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    .line 155
    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    .line 157
    aget-wide v2, v0, v1

    neg-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    .line 163
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const-wide/16 v11, 0x0

    move-wide v4, v11

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    .line 167
    aget-wide v13, v0, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getMaxEvaluations()I

    move-result v0

    const/4 v3, 0x0

    move/from16 v22, v0

    move-object/from16 v23, v1

    move-object v15, v2

    move-wide/from16 v24, v4

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v14, v0, 0x1

    .line 176
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v0

    .line 178
    new-instance v13, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-direct {v13, v2, v0, v1}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v3, :cond_2

    .line 179
    invoke-interface {v7, v14, v3, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v13

    .line 185
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    invoke-direct {v4, v6, v15}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    const-wide/16 v2, 0x0

    .line 186
    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v18, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v0

    .line 190
    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v16, 0x0

    const-wide v20, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v3, v13

    move-object v13, v2

    move v2, v14

    move/from16 v14, v22

    move-object v4, v15

    move-object/from16 v15, v18

    move-wide/from16 v18, v0

    invoke-interface/range {v13 .. v21}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    .line 191
    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v5}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v5

    sub-int v22, v22, v5

    const/4 v5, 0x0

    .line 194
    :goto_3
    iget-object v13, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v14, v13

    if-ge v5, v14, :cond_3

    .line 195
    aget-wide v14, v13, v5

    aget-wide v16, v4, v5

    mul-double v16, v16, v0

    add-double v14, v14, v16

    aput-wide v14, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 198
    :cond_3
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    .line 199
    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    .line 201
    aget-wide v13, v0, v1

    neg-double v13, v13

    aput-wide v13, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 207
    :cond_4
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    invoke-interface {v1, v5, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    move-wide v13, v11

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_5

    .line 210
    aget-wide v15, v0, v5

    aget-wide v17, v1, v5

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 214
    :cond_5
    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v15, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v5, v15, :cond_6

    div-double v15, v13, v24

    goto :goto_7

    :cond_6
    move-wide v15, v11

    const/4 v5, 0x0

    .line 218
    :goto_6
    array-length v10, v0

    if-ge v5, v10, :cond_7

    .line 219
    aget-wide v18, v0, v5

    aget-wide v20, v23, v5

    mul-double v18, v18, v20

    add-double v15, v15, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    sub-double v15, v13, v15

    div-double v15, v15, v24

    .line 226
    :goto_7
    rem-int v0, v2, v9

    if-eqz v0, :cond_a

    cmpg-double v0, v15, v11

    if-gez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_9

    .line 233
    aget-wide v18, v1, v0

    aget-wide v20, v4, v0

    mul-double v20, v20, v15

    add-double v18, v18, v20

    aput-wide v18, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move-object v15, v4

    goto :goto_a

    .line 229
    :cond_a
    :goto_9
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v15, v0

    :goto_a
    move-object/from16 v23, v1

    move v0, v2

    move-wide/from16 v24, v13

    goto/16 :goto_2
.end method

.method public setInitialStep(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 141
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    goto :goto_0

    .line 143
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    :goto_0
    return-void
.end method
