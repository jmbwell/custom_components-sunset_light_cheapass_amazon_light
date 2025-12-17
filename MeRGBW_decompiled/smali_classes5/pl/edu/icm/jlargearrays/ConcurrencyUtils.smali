.class public Lpl/edu/icm/jlargearrays/ConcurrencyUtils;
.super Ljava/lang/Object;
.source "ConcurrencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;,
        Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomExceptionHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

.field private static concurrentThreshold:J

.field private static nthreads:I

.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;

    new-instance v1, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomExceptionHandler;-><init>(Lpl/edu/icm/jlargearrays/ConcurrencyUtils$1;)V

    invoke-direct {v0, v1}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils$CustomThreadFactory;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->DEFAULT_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    .line 51
    sput-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 53
    invoke-static {}, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->getNumberOfProcessors()I

    move-result v0

    sput v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->nthreads:I

    const-wide/32 v0, 0x186a0

    .line 55
    sput-wide v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->concurrentThreshold:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConcurrentThreshold()J
    .locals 2

    .line 101
    sget-wide v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->concurrentThreshold:J

    return-wide v0
.end method

.method public static getNumberOfProcessors()I
    .locals 1

    .line 121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getNumberOfThreads()I
    .locals 1

    .line 131
    sget v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->nthreads:I

    return v0
.end method

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 209
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static setConcurrentThreshold(J)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 111
    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->max(JJ)J

    move-result-wide p0

    sput-wide p0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->concurrentThreshold:J

    return-void
.end method

.method public static setNumberOfThreads(I)V
    .locals 0

    .line 141
    sput p0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->nthreads:I

    return-void
.end method

.method public static setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 199
    sput-object p0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static shutdownThreadPoolAndAwaitTermination()V
    .locals 4

    .line 217
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 220
    :try_start_0
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 223
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Pool did not terminate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 170
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->DEFAULT_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_1
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 155
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->DEFAULT_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 158
    :cond_1
    sget-object v0, Lpl/edu/icm/jlargearrays/ConcurrencyUtils;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static waitForCompletion([Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 186
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
