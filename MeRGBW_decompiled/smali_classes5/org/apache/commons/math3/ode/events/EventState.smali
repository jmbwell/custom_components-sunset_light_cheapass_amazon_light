.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    .line 109
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    .line 110
    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    .line 111
    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 115
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 116
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const/4 p3, 0x1

    .line 117
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const/4 p4, 0x0

    .line 118
    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 119
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 120
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 121
    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 122
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 7

    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    .line 204
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 207
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 208
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 228
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    .line 229
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    .line 230
    iget-wide v4, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double/2addr v2, v4

    .line 231
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    return v5

    .line 235
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    const/4 v6, 0x1

    invoke-static {v6, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    int-to-double v7, v4

    div-double/2addr v2, v7

    .line 238
    new-instance v15, Lorg/apache/commons/math3/ode/events/EventState$1;

    invoke-direct {v15, v1, v0}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    .line 249
    iget-wide v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 250
    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    move v14, v5

    move-wide/from16 v17, v7

    :goto_0
    if-ge v14, v4, :cond_10

    .line 254
    iget-wide v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v11, v14, 0x1

    int-to-double v11, v11

    mul-double/2addr v11, v2

    add-double v12, v7, v11

    .line 255
    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 256
    iget-object v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v8

    invoke-interface {v7, v12, v13, v8}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v19

    .line 259
    iget-boolean v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v21, 0x0

    cmpl-double v8, v19, v21

    if-ltz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    xor-int/2addr v7, v8

    if-eqz v7, :cond_f

    cmpl-double v7, v19, v9

    if-ltz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    .line 263
    :goto_2
    iput-boolean v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 267
    iget-object v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v8, v7, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v8, :cond_4

    .line 269
    check-cast v7, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    .line 271
    iget-boolean v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v8, :cond_3

    iget v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v9, v15

    move-wide/from16 v10, v17

    move-wide/from16 v23, v12

    move/from16 v25, v14

    move-object/from16 v14, v16

    invoke-interface/range {v7 .. v14}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v7

    goto :goto_3

    :cond_3
    move-wide/from16 v23, v12

    move/from16 v25, v14

    iget v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v14, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v9, v15

    move-wide/from16 v10, v23

    move-wide/from16 v12, v17

    invoke-interface/range {v7 .. v14}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v7

    :goto_3
    move-object v5, v15

    goto :goto_6

    :cond_4
    move-wide/from16 v23, v12

    move/from16 v25, v14

    .line 275
    iget-boolean v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v8, :cond_5

    iget v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object v9, v15

    move-wide/from16 v10, v17

    move-wide/from16 v12, v23

    invoke-interface/range {v7 .. v13}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v7

    goto :goto_4

    :cond_5
    iget v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-object v9, v15

    move-wide/from16 v10, v23

    move-wide/from16 v12, v17

    invoke-interface/range {v7 .. v13}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v7

    :goto_4
    move-wide v10, v7

    .line 278
    iget v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iget-object v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v8}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v8

    sub-int/2addr v7, v8

    .line 279
    new-instance v9, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    iget-object v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v8}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v12

    iget-object v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v8}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v5

    invoke-direct {v9, v12, v13, v5, v6}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    .line 281
    iget-boolean v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v5, :cond_6

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v8, v15

    move-wide/from16 v12, v17

    move-object v5, v15

    move-wide/from16 v14, v23

    invoke-static/range {v7 .. v16}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v6

    goto :goto_5

    :cond_6
    move-object v5, v15

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v8, v5

    move-wide/from16 v12, v23

    move-wide/from16 v14, v17

    invoke-static/range {v7 .. v16}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v6

    :goto_5
    move-wide v7, v6

    .line 288
    :goto_6
    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_c

    sub-double v9, v7, v17

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v6, v9, v11

    if-gtz v6, :cond_c

    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v9, v7, v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v6, v9, v11

    if-gtz v6, :cond_c

    .line 296
    :goto_7
    iget-boolean v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v6, :cond_7

    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double v17, v17, v6

    goto :goto_8

    :cond_7
    iget-wide v6, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double v17, v17, v6

    :goto_8
    move-wide/from16 v6, v17

    .line 297
    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v19

    .line 298
    iget-boolean v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    cmpl-double v9, v19, v21

    if-ltz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    :goto_9
    xor-int/2addr v8, v9

    if-eqz v8, :cond_b

    iget-boolean v8, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v9, v6, v23

    if-ltz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_a

    :cond_9
    const/4 v9, 0x0

    :goto_a
    xor-int/2addr v8, v9

    if-nez v8, :cond_a

    goto :goto_b

    :cond_a
    move-wide/from16 v17, v6

    goto :goto_7

    :cond_b
    :goto_b
    add-int/lit8 v14, v25, -0x1

    move-wide v12, v6

    goto :goto_c

    .line 300
    :cond_c
    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_e

    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpl-double v6, v9, v11

    if-lez v6, :cond_d

    goto :goto_d

    :cond_d
    move-wide/from16 v12, v23

    move/from16 v14, v25

    :goto_c
    move-wide/from16 v17, v12

    move-wide/from16 v9, v19

    const/4 v6, 0x1

    goto :goto_e

    .line 302
    :cond_e
    :goto_d
    iput-wide v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    return v0

    :cond_f
    move-wide/from16 v23, v12

    move/from16 v25, v14

    move-object v5, v15

    move-wide/from16 v9, v19

    move-wide/from16 v17, v23

    :goto_e
    add-int/2addr v14, v6

    move-object v15, v5

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_10
    move v0, v5

    .line 320
    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 321
    iput-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v0

    throw v0
.end method

.method public getConvergence()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    .line 335
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 170
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 188
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    .line 189
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p1

    invoke-interface {v0, v4, v5, p1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 192
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    return-void
.end method

.method public reset(D[D)Z
    .locals 6

    .line 379
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    .line 384
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 386
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 387
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 389
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object p2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6

    .line 348
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 351
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 353
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 354
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 355
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    .line 357
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 358
    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
