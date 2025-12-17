.class public abstract Lorg/apache/commons/math3/ode/MultistepIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "MultistepIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckTransformer;
    }
.end annotation


# instance fields
.field private exp:D

.field private maxGrowth:D

.field private minReduction:D

.field private final nSteps:I

.field protected nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private safety:D

.field protected scaled:[D

.field private starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object v10, p0

    move v11, p2

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 117
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 v0, 0x2

    if-lt v11, v0, :cond_0

    .line 125
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    move-object v1, v0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DDDD)V

    iput-object v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 128
    iput v11, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 130
    iput-wide v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 133
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 134
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 135
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    return-void

    .line 120
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method protected constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 163
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 164
    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    move-object v0, v7

    move-wide v1, p4

    move-wide v3, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DD[D[D)V

    iput-object v7, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    move v0, p2

    .line 167
    iput v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 169
    iput-wide v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 172
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 173
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 174
    iget-wide v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method protected computeStepGrowShrinkFactor(D)D
    .locals 8

    .line 321
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    invoke-static {p1, p2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 278
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    return-wide v0
.end method

.method public getSafety()D
    .locals 2

    .line 306
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    return-wide v0
.end method

.method public getStarterIntegrator()Lorg/apache/commons/math3/ode/ODEIntegrator;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    return-object v0
.end method

.method protected abstract initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.end method

.method public setMaxGrowth(D)V
    .locals 0

    .line 299
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    .line 285
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    .line 313
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    return-void
.end method

.method public setStarterIntegrator(Lorg/apache/commons/math3/ode/FirstOrderIntegrator;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    return-void
.end method

.method protected start(D[DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearEventHandlers()V

    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearStepHandlers()V

    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    new-instance v1, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;

    iget v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    array-length v3, p3

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    instance-of v1, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    goto :goto_0

    .line 234
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;)V

    array-length v2, p3

    new-array v7, v2, [D

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v7}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getEvaluationsCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->getEvaluations()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount(I)V

    .line 258
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearStepHandlers()V

    return-void
.end method
