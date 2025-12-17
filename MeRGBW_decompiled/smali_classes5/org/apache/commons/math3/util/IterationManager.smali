.class public Lorg/apache/commons/math3/util/IterationManager;
.super Ljava/lang/Object;
.source "IterationManager.java"


# instance fields
.field private final iterations:Lorg/apache/commons/math3/util/Incrementor;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/util/IterationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 46
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 61
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 81
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->initializationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 93
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 105
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationStarted(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/IterationListener;

    .line 117
    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/IterationListener;->terminationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getIterations()I
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public incrementIterationCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    return-void
.end method

.method public removeIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetIterationCount()V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    return-void
.end method
