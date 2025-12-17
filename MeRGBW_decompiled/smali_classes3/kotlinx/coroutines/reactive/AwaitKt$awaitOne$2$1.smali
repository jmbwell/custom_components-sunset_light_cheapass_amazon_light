.class public final Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;
.super Ljava/lang/Object;
.source "Await.kt"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/reactive/AwaitKt;->awaitOne(Lorg/reactivestreams/Publisher;Lkotlinx/coroutines/reactive/Mode;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0015\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "kotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1",
        "Lorg/reactivestreams/Subscriber;",
        "subscription",
        "Lorg/reactivestreams/Subscription;",
        "value",
        "Ljava/lang/Object;",
        "seenValue",
        "",
        "inTerminalState",
        "onSubscribe",
        "",
        "sub",
        "onNext",
        "t",
        "(Ljava/lang/Object;)V",
        "onComplete",
        "onError",
        "e",
        "",
        "tryEnterTerminalState",
        "signalName",
        "",
        "withSubscriptionLock",
        "block",
        "Lkotlin/Function0;",
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


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $default:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $mode:Lkotlinx/coroutines/reactive/Mode;

.field private inTerminalState:Z

.field private seenValue:Z

.field private subscription:Lorg/reactivestreams/Subscription;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/reactive/Mode;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TT;>;",
            "Lkotlinx/coroutines/reactive/Mode;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    iput-object p3, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$default:Ljava/lang/Object;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$withSubscriptionLock(Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final tryEnterTerminalState(Ljava/lang/String;)Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->inTerminalState:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/reactive/AwaitKt;->access$gotSignalInTerminalStateException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->inTerminalState:Z

    return p1
.end method

.method private final declared-synchronized withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 260
    const-string v0, "onComplete"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->tryEnterTerminalState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-boolean v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->seenValue:Z

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v1, Lkotlinx/coroutines/reactive/Mode;->FIRST_OR_DEFAULT:Lkotlinx/coroutines/reactive/Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v1, Lkotlinx/coroutines/reactive/Mode;->FIRST:Lkotlinx/coroutines/reactive/Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->value:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v1, Lkotlinx/coroutines/reactive/Mode;->FIRST_OR_DEFAULT:Lkotlinx/coroutines/reactive/Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v1, Lkotlinx/coroutines/reactive/Mode;->SINGLE_OR_DEFAULT:Lkotlinx/coroutines/reactive/Mode;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No value received via onNext for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 274
    :cond_4
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$default:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 284
    const-string v0, "onError"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->tryEnterTerminalState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->subscription:Lorg/reactivestreams/Subscription;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    if-nez v0, :cond_0

    .line 217
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'onNext\' was called before \'onSubscribe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 217
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void

    .line 224
    :cond_0
    iget-boolean v2, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->inTerminalState:Z

    if-eqz v2, :cond_1

    .line 225
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const-string v0, "onNext"

    invoke-static {p1, v0}, Lkotlinx/coroutines/reactive/AwaitKt;->access$gotSignalInTerminalStateException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v2, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lkotlinx/coroutines/reactive/Mode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 241
    :cond_3
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v3, Lkotlinx/coroutines/reactive/Mode;->SINGLE:Lkotlinx/coroutines/reactive/Mode;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    sget-object v3, Lkotlinx/coroutines/reactive/Mode;->SINGLE_OR_DEFAULT:Lkotlinx/coroutines/reactive/Mode;

    if-ne v1, v3, :cond_5

    :cond_4
    iget-boolean v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->seenValue:Z

    if-eqz v1, :cond_5

    .line 242
    new-instance p1, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onNext$2;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onNext$2;-><init>(Lorg/reactivestreams/Subscription;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V

    .line 247
    iget-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 248
    iget-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than one onNext value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 251
    :cond_5
    iput-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->value:Ljava/lang/Object;

    .line 252
    iput-boolean v2, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->seenValue:Z

    goto :goto_1

    .line 230
    :cond_6
    iget-boolean v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->seenValue:Z

    if-eqz v1, :cond_7

    .line 231
    iget-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    invoke-static {p1, v0}, Lkotlinx/coroutines/reactive/AwaitKt;->access$moreThanOneValueProvidedException(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/reactive/Mode;)V

    return-void

    .line 234
    :cond_7
    iput-boolean v2, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->seenValue:Z

    .line 235
    new-instance v1, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onNext$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onNext$1;-><init>(Lorg/reactivestreams/Subscription;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V

    .line 238
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->subscription:Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$1;-><init>(Lorg/reactivestreams/Subscription;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->subscription:Lorg/reactivestreams/Subscription;

    .line 203
    iget-object v0, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    new-instance v1, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$2;

    invoke-direct {v1, p0, p1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$2;-><init>(Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;Lorg/reactivestreams/Subscription;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 208
    new-instance v0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$3;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->$mode:Lkotlinx/coroutines/reactive/Mode;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1$onSubscribe$3;-><init>(Lorg/reactivestreams/Subscription;Lkotlinx/coroutines/reactive/Mode;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/AwaitKt$awaitOne$2$1;->withSubscriptionLock(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
