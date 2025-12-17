.class public final Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx2/DispatcherScheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler\n*L\n1#1,13:1\n56#2:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $task$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lkotlinx/coroutines/rx2/DispatcherScheduler;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/rx2/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx2/DispatcherScheduler;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx2/DispatcherScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/rx2/DispatcherScheduler;->access$getScope$p(Lkotlinx/coroutines/rx2/DispatcherScheduler;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$1$1$1;

    iget-object v2, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
