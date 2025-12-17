.class final Lkotlinx/coroutines/rx2/RxObservableCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "RxObservable.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ProducerScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxObservable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxObservable.kt\nkotlinx/coroutines/rx2/RxObservableCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,217:1\n1#2:218\n159#3:219\n*S KotlinDebug\n*F\n+ 1 RxObservable.kt\nkotlinx/coroutines/rx2/RxObservableCoroutine\n*L\n165#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001e\u0010\u0018\u001a\u00020\u00192\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u0004\u0012\u00020\u00040\u001bH\u0016J\u001e\u0010$\u001a\u00020\u00042\n\u0010%\u001a\u0006\u0012\u0002\u0008\u00030&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002H\u0002J\u001e\u0010(\u001a\u0004\u0018\u00010\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010\u00022\u0008\u0010)\u001a\u0004\u0018\u00010\u0002H\u0002J\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040+2\u0006\u0010\'\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0016\u0010.\u001a\u00020\u00042\u0006\u0010\'\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010/J\u0017\u00100\u001a\u0004\u0018\u00010\u00172\u0006\u00101\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00102J\u0008\u00103\u001a\u00020\u0004H\u0002J\u001a\u00104\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u00105\u001a\u00020\u0013H\u0002J\u001a\u00106\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u00105\u001a\u00020\u0013H\u0002J\u0015\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u0004H\u0014\u00a2\u0006\u0002\u00109J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u0013H\u0014R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\t\u0010\u0010\u001a\u00020\u0011X\u0082\u0004R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\r0\u001f8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006;"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/RxObservableCoroutine;",
        "T",
        "",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "subscriber",
        "Lio/reactivex/ObservableEmitter;",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/ObservableEmitter;)V",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "getChannel",
        "()Lkotlinx/coroutines/channels/SendChannel;",
        "_signal",
        "Lkotlinx/atomicfu/AtomicInt;",
        "isClosedForSend",
        "",
        "()Z",
        "close",
        "cause",
        "",
        "invokeOnClose",
        "",
        "handler",
        "Lkotlin/Function1;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend$annotations",
        "()V",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "registerSelectForSend",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "element",
        "processResultSelectSend",
        "selectResult",
        "trySend",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doLockedNext",
        "elem",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "unlockAndCheckCompleted",
        "doLockedSignalCompleted",
        "handled",
        "signalCompleted",
        "onCompleted",
        "value",
        "(Lkotlin/Unit;)V",
        "onCancelled",
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


# static fields
.field private static final synthetic _signal$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _signal$volatile:I

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final subscriber:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;

    const-string v1, "_signal$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->_signal$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 55
    iput-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->subscriber:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x0

    .line 67
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getMutex$p(Lkotlinx/coroutines/rx2/RxObservableCoroutine;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 53
    iget-object p0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$processResultSelectSend(Lkotlinx/coroutines/rx2/RxObservableCoroutine;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$registerSelectForSend(Lkotlinx/coroutines/rx2/RxObservableCoroutine;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method private final doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCompletionCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCompletionCauseHandled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    .line 122
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->subscriber:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-direct {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->unlockAndCheckCompleted()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    new-instance v0, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    .line 129
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->close(Ljava/lang/Throwable;)Z

    move-result p1

    .line 130
    invoke-direct {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->unlockAndCheckCompleted()V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 137
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method

.method private final doLockedSignalCompleted(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->get_signal$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 188
    iget-object p1, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 162
    :cond_0
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->get_signal$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    .line 163
    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eqz p1, :cond_2

    .line 219
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->unwrapImpl(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 168
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->subscriber:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    :try_start_3
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_1

    .line 172
    :cond_3
    instance-of v3, v2, Lio/reactivex/exceptions/UndeliverableException;

    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    .line 176
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    if-ne v2, p2, :cond_5

    iget-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->subscriber:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_6

    .line 181
    :cond_5
    :try_start_4
    iget-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->subscriber:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 183
    :try_start_5
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 184
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/RxCancellableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    :cond_6
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1
.end method

.method public static synthetic getOnSend$annotations()V
    .locals 0

    return-void
.end method

.method private final synthetic get_signal$volatile()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->_signal$volatile:I

    return v0
.end method

.method private static final synthetic get_signal$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->_signal$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    const-string p2, "null cannot be cast to non-null type T of kotlinx.coroutines.rx2.RxObservableCoroutine"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    throw p1
.end method

.method private final registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 79
    iget-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lkotlinx/coroutines/rx2/RxObservableCoroutine$registerSelectForSend$1;

    invoke-direct {p2, p0, p1, v1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine$registerSelectForSend$1;-><init>(Lkotlinx/coroutines/rx2/RxObservableCoroutine;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final synthetic set_signal$volatile(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->_signal$volatile:I

    return-void
.end method

.method private final signalCompleted(Ljava/lang/Throwable;Z)V
    .locals 3

    .line 193
    invoke-static {}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->get_signal$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    :cond_1
    return-void
.end method

.method private final unlockAndCheckCompleted()V
    .locals 3

    .line 151
    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCompletionCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->getCompletionCauseHandled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)Z
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->cancelCoroutine(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getChannel()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TT;>;"
        }
    .end annotation

    .line 57
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TT;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TT;>;>;"
        }
    .end annotation

    .line 70
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause2Impl;

    .line 72
    sget-object v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$onSend$1;->INSTANCE:Lkotlinx/coroutines/rx2/RxObservableCoroutine$onSend$1;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 73
    sget-object v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$onSend$2;->INSTANCE:Lkotlinx/coroutines/rx2/RxObservableCoroutine$onSend$2;

    const-string v3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    .line 70
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/selects/SelectClause2Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lkotlinx/coroutines/selects/SelectClause2;

    return-object v7
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RxObservableCoroutine doesn\'t support invokeOnClose"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->invokeOnClose(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;

    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ProducerScope$DefaultImpls;->offer(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onCancelled(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->signalCompleted(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->onCompleted(Lkotlin/Unit;)V

    return-void
.end method

.method protected onCompleted(Lkotlin/Unit;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->signalCompleted(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;

    iget v1, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;-><init>(Lkotlinx/coroutines/rx2/RxObservableCoroutine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/rx2/RxObservableCoroutine$send$1;->label:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 114
    :goto_1
    invoke-direct {v0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 114
    :cond_4
    throw p1
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/rx2/RxObservableCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 107
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
