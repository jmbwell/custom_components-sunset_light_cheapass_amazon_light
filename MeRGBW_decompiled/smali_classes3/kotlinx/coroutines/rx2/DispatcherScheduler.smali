.class final Lkotlinx/coroutines/rx2/DispatcherScheduler;
.super Lio/reactivex/Scheduler;
.source "RxScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,178:1\n13#2:179\n*S KotlinDebug\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler\n*L\n56#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000c\u001a\u00020\r2\n\u0010\u000e\u001a\u00060\u0010j\u0002`\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\t\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/DispatcherScheduler;",
        "Lio/reactivex/Scheduler;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "schedulerJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "workerCounter",
        "Lkotlinx/atomicfu/AtomicLong;",
        "scheduleDirect",
        "Lio/reactivex/disposables/Disposable;",
        "block",
        "Lkotlinx/coroutines/Runnable;",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;",
        "createWorker",
        "Lio/reactivex/Scheduler$Worker;",
        "shutdown",
        "",
        "toString",
        "",
        "DispatcherWorker",
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
.field private static final synthetic workerCounter$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final schedulerJob:Lkotlinx/coroutines/CompletableJob;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private volatile synthetic workerCounter$volatile:J


# direct methods
.method public static synthetic $r8$lambda$jXgRpAIiPWg3phLPb7wKOvloa5o(Lkotlinx/coroutines/rx2/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/rx2/DispatcherScheduler;->scheduleDirect$lambda$1(Lkotlinx/coroutines/rx2/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/rx2/DispatcherScheduler;

    const-string v1, "workerCounter$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->workerCounter$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->schedulerJob:Lkotlinx/coroutines/CompletableJob;

    .line 47
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->scope:Lkotlinx/coroutines/CoroutineScope;

    const-wide/16 v0, 0x1

    .line 52
    iput-wide v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->workerCounter$volatile:J

    return-void
.end method

.method public static final synthetic access$getScope$p(Lkotlinx/coroutines/rx2/DispatcherScheduler;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 38
    iget-object p0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method private final synthetic getWorkerCounter$volatile()J
    .locals 2

    iget-wide v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->workerCounter$volatile:J

    return-wide v0
.end method

.method private static final synthetic getWorkerCounter$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->workerCounter$volatile$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private static final scheduleDirect$lambda$1(Lkotlinx/coroutines/rx2/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 1

    .line 179
    new-instance v0, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/rx2/DispatcherScheduler$scheduleDirect$lambda$1$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/rx2/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private final synthetic setWorkerCounter$volatile(J)V
    .locals 0

    iput-wide p1, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->workerCounter$volatile:J

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 5

    .line 59
    new-instance v0, Lkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker;

    invoke-static {}, Lkotlinx/coroutines/rx2/DispatcherScheduler;->getWorkerCounter$volatile$FU()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object v3, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v4, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->schedulerJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker;-><init>(JLkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/Job;)V

    check-cast v0, Lio/reactivex/Scheduler$Worker;

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 55
    iget-object v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    new-instance p4, Lkotlinx/coroutines/rx2/DispatcherScheduler$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lkotlinx/coroutines/rx2/DispatcherScheduler$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/rx2/DispatcherScheduler;)V

    invoke-static {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/rx2/RxSchedulerKt;->access$scheduleTask(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 3

    .line 62
    iget-object v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->schedulerJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/rx2/DispatcherScheduler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0}, Lkotlinx/coroutines/CoroutineDispatcher;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
