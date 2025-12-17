.class public abstract Lorg/apache/commons/math3/ode/AbstractIntegrator;
.super Ljava/lang/Object;
.source "AbstractIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private eventsStates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/EventState;",
            ">;"
        }
    .end annotation
.end field

.field private transient expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field protected isLastStep:Z

.field private final name:Ljava/lang/String;

.field protected resetOccurred:Z

.field private statesInitialized:Z

.field protected stepHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected stepSize:D

.field protected stepStart:D


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 86
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    .line 87
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 90
    new-instance p1, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {p1}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    const/4 p1, -0x1

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setMaxEvaluations(I)V

    .line 92
    iget-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    return-void
.end method


# virtual methods
.method protected acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 316
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v3

    .line 317
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalCurrentTime()D

    move-result-wide v5

    .line 320
    iget-boolean v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 321
    iget-object v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/ode/events/EventState;

    .line 322
    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/ode/events/EventState;->reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    goto :goto_0

    .line 324
    :cond_0
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    .line 328
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->isForward()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    .line 329
    :goto_1
    new-instance v9, Ljava/util/TreeSet;

    new-instance v10, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/AbstractIntegrator;I)V

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 338
    iget-object v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/events/EventState;

    .line 339
    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 341
    invoke-interface {v9, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 345
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v7

    const/4 v10, 0x0

    if-nez v7, :cond_10

    .line 348
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 349
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ode/events/EventState;

    .line 350
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 353
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/events/EventState;->getEventTime()D

    move-result-wide v12

    .line 354
    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 355
    invoke-virtual {v1, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 358
    invoke-virtual {v1, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 359
    array-length v3, v2

    new-array v3, v3, [D

    .line 360
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 363
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    array-length v7, v4

    move v14, v10

    move v15, v14

    :goto_4
    if-ge v14, v7, :cond_5

    aget-object v8, v4, v14

    add-int/lit8 v16, v15, 0x1

    .line 364
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v15

    invoke-virtual {v8, v15, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    const/4 v8, 0x1

    goto :goto_4

    .line 369
    :cond_5
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/events/EventState;

    .line 370
    invoke-virtual {v7, v12, v13, v3}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 371
    iget-boolean v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v8, :cond_7

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v7, v10

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v7, 0x1

    :goto_7
    iput-boolean v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_5

    .line 375
    :cond_8
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 376
    iget-boolean v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    invoke-interface {v7, v1, v8}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_8

    .line 379
    :cond_9
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v4, :cond_a

    .line 381
    array-length v1, v2

    invoke-static {v3, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-wide v12

    .line 386
    :cond_a
    iget-object v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    move v7, v10

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ode/events/EventState;

    if-nez v7, :cond_c

    .line 387
    invoke-virtual {v8, v12, v13, v3}, Lorg/apache/commons/math3/ode/events/EventState;->reset(D[D)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_c
    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    if-eqz v7, :cond_e

    .line 392
    invoke-virtual {v1, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 393
    array-length v1, v2

    invoke-static {v3, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, p3

    .line 394
    invoke-virtual {v0, v12, v13, v2, v3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v1, 0x1

    .line 395
    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    return-wide v12

    :cond_e
    move-object/from16 v3, p3

    .line 401
    invoke-virtual {v1, v12, v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftPreviousTime(D)V

    .line 402
    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setSoftCurrentTime(D)V

    .line 405
    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/ode/events/EventState;->evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 407
    invoke-interface {v9, v11}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_f
    move-wide v3, v12

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 413
    :cond_10
    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    .line 414
    array-length v2, v2

    new-array v2, v2, [D

    .line 415
    iget-object v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 418
    iget-object v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    array-length v4, v3

    move v7, v10

    move v8, v7

    :goto_a
    if-ge v7, v4, :cond_11

    aget-object v9, v3, v7

    add-int/lit8 v11, v8, 0x1

    .line 419
    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v8

    invoke-virtual {v9, v8, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v7, v7, 0x1

    move v8, v11

    goto :goto_a

    .line 422
    :cond_11
    iget-object v3, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/events/EventState;

    .line 423
    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/commons/math3/ode/events/EventState;->stepAccepted(D[D)V

    .line 424
    iget-boolean v7, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v7, :cond_13

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/events/EventState;->stop()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_c

    :cond_12
    move v4, v10

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v4, 0x1

    :goto_d
    iput-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    goto :goto_b

    .line 426
    :cond_14
    iget-boolean v2, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v2, :cond_16

    move-wide/from16 v2, p4

    const/4 v4, 0x1

    invoke-static {v5, v6, v2, v3, v4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_e

    :cond_15
    move v8, v10

    goto :goto_f

    :cond_16
    const/4 v4, 0x1

    :goto_e
    move v8, v4

    :goto_f
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    .line 429
    iget-object v2, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 430
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    invoke-interface {v3, v1, v4}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V

    goto :goto_10

    :cond_17
    return-wide v5
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDI)V
    .locals 8

    .line 126
    new-instance v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;

    const/4 v0, 0x5

    invoke-direct {v7, p4, p5, v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 11

    move-object v0, p0

    .line 137
    iget-object v1, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    new-instance v10, Lorg/apache/commons/math3/ode/events/EventState;

    move-object v2, v10

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/ode/events/EventState;-><init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearEventHandlers()V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public clearStepHandlers()V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public computeDerivatives(D[D[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 285
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public getCurrentSignedStepsize()D
    .locals 2

    .line 162
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-wide v0
.end method

.method public getCurrentStepStart()D
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getEvaluationsCounter()Lorg/apache/commons/math3/util/Incrementor;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    return-object v0
.end method

.method public getEventHandlers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/events/EventHandler;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    iget-object v1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/events/EventState;

    .line 145
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/ode/sampling/StepHandler;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected initIntegration(D[DD)V
    .locals 9

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->eventsStates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/events/EventState;

    .line 190
    iget-object v2, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/ode/events/EventState;->setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 191
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/events/EventState;->getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/ode/sampling/StepHandler;

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .line 195
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/math3/ode/sampling/StepHandler;->init(D[DD)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setStateInitialized(Z)V

    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 231
    array-length v0, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 234
    array-length v0, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 239
    new-instance v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V

    .line 240
    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 241
    invoke-virtual {v0, p4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setPrimaryState([D)V

    .line 244
    invoke-virtual {p0, v0, p5, p6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 247
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryState()[D

    move-result-object p1

    array-length p2, p7

    const/4 p3, 0x0

    invoke-static {p1, p3, p7, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide p1

    return-wide p1

    .line 235
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p3, p7

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 232
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p3, p4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 449
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    sub-double/2addr v2, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    cmpg-double p3, p1, v0

    if-lez p3, :cond_0

    return-void

    .line 451
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_SMALL_INTEGRATION_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, v2, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method protected setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public setMaxEvaluations(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    return-void
.end method

.method protected setStateInitialized(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->statesInitialized:Z

    return-void
.end method
