.class public final Lkotlinx/coroutines/reactive/PublisherCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Publish.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ProducerScope;
.implements Lorg/reactivestreams/Subscription;


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
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublish.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Publish.kt\nkotlinx/coroutines/reactive/PublisherCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,336:1\n1#2:337\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B7\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0016J\u001e\u0010\u001b\u001a\u00020\u001c2\u0014\u0010\u001d\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u00030\u001eH\u0016J\u001e\u0010\'\u001a\u00020\u00032\n\u0010(\u001a\u0006\u0012\u0002\u0008\u00030)2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u001e\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010-\u001a\u0004\u0018\u00010+H\u0002J\u001d\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00030/2\u0006\u0010*\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0016\u00102\u001a\u00020\u00032\u0006\u0010*\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u00103J\u0017\u00104\u001a\u0004\u0018\u00010\u000c2\u0006\u00105\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00106J\u0008\u00107\u001a\u00020\u0003H\u0002J\u001a\u00108\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010;\u001a\u00020<H\u0016J\u001a\u0010=\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0015\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u0003H\u0014\u00a2\u0006\u0002\u0010@J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u0016H\u0014J\u0008\u0010B\u001a\u00020\u0003H\u0016R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\t\u0010\u0013\u001a\u00020\u0014X\u0082\u0004R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010!\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\"8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006C"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/PublisherCoroutine;",
        "T",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lorg/reactivestreams/Subscription;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "subscriber",
        "Lorg/reactivestreams/Subscriber;",
        "exceptionOnCancelHandler",
        "Lkotlin/Function2;",
        "",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lorg/reactivestreams/Subscriber;Lkotlin/jvm/functions/Function2;)V",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "getChannel",
        "()Lkotlinx/coroutines/channels/SendChannel;",
        "_nRequested",
        "Lkotlinx/atomicfu/AtomicLong;",
        "cancelled",
        "",
        "isClosedForSend",
        "()Z",
        "close",
        "cause",
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
        "",
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
        "request",
        "n",
        "",
        "signalCompleted",
        "onCompleted",
        "value",
        "(Lkotlin/Unit;)V",
        "onCancelled",
        "cancel",
        "kotlinx-coroutines-reactive"
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
.field private static final synthetic _nRequested$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _nRequested$volatile:J

.field private volatile cancelled:Z

.field private final exceptionOnCancelHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/reactive/PublisherCoroutine;

    const-string v1, "_nRequested$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->_nRequested$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lorg/reactivestreams/Subscriber;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 66
    iput-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 67
    iput-object p3, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->exceptionOnCancelHandler:Lkotlin/jvm/functions/Function2;

    .line 82
    invoke-static {v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getMutex$p(Lkotlinx/coroutines/reactive/PublisherCoroutine;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 62
    iget-object p0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$processResultSelectSend(Lkotlinx/coroutines/reactive/PublisherCoroutine;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$registerSelectForSend(Lkotlinx/coroutines/reactive/PublisherCoroutine;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method private final doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 167
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->unlockAndCheckCompleted()V

    .line 169
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 173
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    const/4 v8, 0x0

    if-ltz p1, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1

    sub-long v9, v2, v0

    .line 204
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    move-object v1, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    cmp-long p1, v9, v6

    if-nez p1, :cond_2

    return-object v8

    .line 212
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->unlockAndCheckCompleted()V

    return-object v8

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->cancelled:Z

    .line 187
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 188
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->unlockAndCheckCompleted()V

    if-eqz v0, :cond_3

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->exceptionOnCancelHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    :goto_0
    return-object p1

    .line 158
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->unlockAndCheckCompleted()V

    .line 159
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to emit `null` inside a reactive publisher"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final doLockedSignalCompleted(Ljava/lang/Throwable;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    iget-object p1, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 234
    :cond_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 235
    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 237
    iget-boolean v2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->cancelled:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 239
    iget-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->exceptionOnCancelHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 244
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 246
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 251
    :cond_3
    :try_start_4
    iget-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {p2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    if-eq p2, p1, :cond_4

    .line 254
    :try_start_5
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 256
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 260
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1
.end method

.method public static synthetic getOnSend$annotations()V
    .locals 0

    return-void
.end method

.method private final synthetic get_nRequested$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->_nRequested$volatile:J

    return-wide v0
.end method

.method private static final synthetic get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->_nRequested$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

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

    .line 94
    iget-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lkotlinx/coroutines/reactive/PublisherCoroutine$registerSelectForSend$1;

    invoke-direct {p2, p0, p1, v1}, Lkotlinx/coroutines/reactive/PublisherCoroutine$registerSelectForSend$1;-><init>(Lkotlinx/coroutines/reactive/PublisherCoroutine;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final synthetic set_nRequested$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->_nRequested$volatile:J

    return-void
.end method

.method private final signalCompleted(Ljava/lang/Throwable;Z)V
    .locals 7

    .line 294
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v0, -0x2

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_4

    .line 298
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    const-wide/16 v5, -0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 301
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    :cond_3
    :goto_0
    return-void

    .line 297
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final unlockAndCheckCompleted()V
    .locals 3

    .line 223
    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getCompletionCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->getCompletionCauseHandled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedSignalCompleted(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->cancelled:Z

    const/4 v0, 0x0

    .line 323
    invoke-super {p0, v0}, Lkotlinx/coroutines/AbstractCoroutine;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->cancelCoroutine(Ljava/lang/Throwable;)Z

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

    .line 69
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

    .line 85
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause2Impl;

    .line 87
    sget-object v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$onSend$1;->INSTANCE:Lkotlinx/coroutines/reactive/PublisherCoroutine$onSend$1;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 88
    sget-object v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$onSend$2;->INSTANCE:Lkotlinx/coroutines/reactive/PublisherCoroutine$onSend$2;

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

    .line 85
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

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PublisherCoroutine doesn\'t support invokeOnClose"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->invokeOnClose(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;

    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->isActive()Z

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

    .line 62
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ProducerScope$DefaultImpls;->offer(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onCancelled(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->signalCompleted(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->onCompleted(Lkotlin/Unit;)V

    return-void
.end method

.method protected onCompleted(Lkotlin/Unit;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->signalCompleted(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public request(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "non-positive subscription request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->cancelCoroutine(Ljava/lang/Throwable;)Z

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 271
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-gez v2, :cond_1

    return-void

    :cond_1
    add-long v3, v5, p1

    cmp-long v7, v3, v0

    const-wide v8, 0x7fffffffffffffffL

    if-ltz v7, :cond_3

    cmp-long v7, p1, v8

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-wide v7, v3

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v7, v8

    :goto_1
    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    return-void

    .line 277
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->get_nRequested$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_5

    .line 285
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->unlockAndCheckCompleted()V

    :cond_5
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

    instance-of v0, p2, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;

    iget v1, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;-><init>(Lkotlinx/coroutines/reactive/PublisherCoroutine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget v2, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/reactive/PublisherCoroutine;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    iget-object p2, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/reactive/PublisherCoroutine$send$1;->label:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 129
    :goto_1
    invoke-direct {v0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 129
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

    .line 118
    iget-object v0, p0, Lkotlinx/coroutines/reactive/PublisherCoroutine;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/PublisherCoroutine;->doLockedNext(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 122
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
