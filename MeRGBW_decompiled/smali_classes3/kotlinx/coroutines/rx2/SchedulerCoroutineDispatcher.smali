.class public final Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000fj\u0002`\u000eH\u0016\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0015H\u0016J)\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\n\u0010\r\u001a\u00060\u000fj\u0002`\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "scheduler",
        "Lio/reactivex/Scheduler;",
        "<init>",
        "(Lio/reactivex/Scheduler;)V",
        "getScheduler",
        "()Lio/reactivex/Scheduler;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlinx/coroutines/Runnable;",
        "Ljava/lang/Runnable;",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "scheduleResumeAfterDelay",
        "timeMillis",
        "",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;",
        "toString",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final scheduler:Lio/reactivex/Scheduler;


# direct methods
.method public static synthetic $r8$lambda$6e97yTlBabSsJoSTj_X4LDNZahw(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduleResumeAfterDelay$lambda$1(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lSPKPWyFR_jtxEBNHYYp9GC6EX4(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->invokeOnTimeout$lambda$2(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Scheduler;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 148
    iput-object p1, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method private static final invokeOnTimeout$lambda$2(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 166
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method private static final scheduleResumeAfterDelay$lambda$1(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;)V
    .locals 1

    .line 158
    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .line 144
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->delay(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 173
    instance-of v0, p1, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;

    iget-object p1, p1, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    iget-object v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 148
    iget-object v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 165
    iget-object p4, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p3, p1, p2, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 166
    new-instance p2, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/disposables/Disposable;)V

    return-object p2
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;)V

    .line 159
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 160
    invoke-static {p3, p1}, Lkotlinx/coroutines/rx2/RxAwaitKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
