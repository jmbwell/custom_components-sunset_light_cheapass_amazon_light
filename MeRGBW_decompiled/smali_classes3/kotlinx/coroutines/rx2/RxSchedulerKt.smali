.class public final Lkotlinx/coroutines/rx2/RxSchedulerKt;
.super Ljava/lang/Object;
.source "RxScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/RxSchedulerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0011\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0008\u0000\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0001\u001am\u0010\u000b\u001a\u00020\u000c*\u00020\r2\n\u0010\u000e\u001a\u00060\u0010j\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u00122F\u0010\u0013\u001aB\u00124\u00122\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007j\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\u0008\u0012\u00060\u0010j\u0002`\u000f0\u0007H\u0002\u00a2\u0006\u0002\u0010\u0014*8\u0008\u0002\u0010\u0006\"\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00072\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "asCoroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lio/reactivex/Scheduler;",
        "asCoroutineDispatcher0",
        "Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;",
        "asScheduler",
        "Task",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "scheduleTask",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "block",
        "Lkotlinx/coroutines/Runnable;",
        "Ljava/lang/Runnable;",
        "delayMillis",
        "",
        "adaptForScheduling",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;",
        "kotlinx-coroutines-rx2"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$_LLogQ4mq0U9JlsDs7oL-kpGnlI(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx2/RxSchedulerKt;->scheduleTask$task$lambda$1(Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e28lEi8-t-FwUGG6E3GXbqwvWs8(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx2/RxSchedulerKt;->scheduleTask$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static final synthetic access$scheduleTask(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/rx2/RxSchedulerKt;->scheduleTask(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scheduleTask$task(Lio/reactivex/disposables/Disposable;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/rx2/RxSchedulerKt;->scheduleTask$task(Lio/reactivex/disposables/Disposable;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final asCoroutineDispatcher(Lio/reactivex/Scheduler;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 17
    instance-of v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;

    if-eqz v0, :cond_0

    .line 18
    check-cast p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;

    iget-object p0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;-><init>(Lio/reactivex/Scheduler;)V

    move-object p0, v0

    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_0
    return-object p0
.end method

.method public static final synthetic asCoroutineDispatcher(Lio/reactivex/Scheduler;)Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.4.2, binary compatibility with earlier versions"
    .end annotation

    .line 26
    new-instance v0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;-><init>(Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public static final asScheduler(Lkotlinx/coroutines/CoroutineDispatcher;)Lio/reactivex/Scheduler;
    .locals 1

    .line 32
    instance-of v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/DispatcherScheduler;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/DispatcherScheduler;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    move-object p0, v0

    check-cast p0, Lio/reactivex/Scheduler;

    :goto_0
    return-object p0
.end method

.method private static final scheduleTask(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/Runnable;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 113
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 114
    new-instance v2, Lkotlinx/coroutines/rx2/RxSchedulerKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/rx2/RxSchedulerKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 118
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 130
    new-instance v3, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$toSchedule$1;

    invoke-direct {v3, v2, v0, p1}, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$toSchedule$1;-><init>(Lio/reactivex/disposables/Disposable;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 131
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p0, p2, v3

    if-gtz p0, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object p0

    invoke-interface {p0, p2, p3, p1, v0}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method private static final scheduleTask$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method

.method private static final scheduleTask$task(Lio/reactivex/disposables/Disposable;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/disposables/Disposable;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;

    iget v1, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 119
    iget v2, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 122
    :cond_3
    :try_start_1
    new-instance p0, Lkotlinx/coroutines/rx2/RxSchedulerKt$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/rx2/RxSchedulerKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/rx2/RxSchedulerKt$scheduleTask$task$1;->label:I

    const/4 p2, 0x0

    invoke-static {p2, p0, v0, v3, p2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_4

    return-object v1

    :catchall_0
    move-exception p0

    .line 126
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 128
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final scheduleTask$task$lambda$1(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    .line 123
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 124
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
