.class public Lcom/mergbw/core/utils/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final DEFAULT_SINGLE_POOL_NAME:Ljava/lang/String; = "DEFAULT_SINGLE_POOL_NAME"

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final mDownloadLock:Ljava/lang/Object;

.field private static mDownloadPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

.field private static final mLongLock:Ljava/lang/Object;

.field private static mLongPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

.field private static final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final mShortLock:Ljava/lang/Object;

.field private static mShortPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

.field private static final mSingleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/mergbw/core/utils/ThreadManager;->CPU_COUNT:I

    .line 20
    sput v0, Lcom/mergbw/core/utils/ThreadManager;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 22
    sput v0, Lcom/mergbw/core/utils/ThreadManager;->MAXIMUM_POOL_SIZE:I

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mLongPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mergbw/core/utils/ThreadManager;->mLongLock:Ljava/lang/Object;

    .line 30
    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mShortPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mergbw/core/utils/ThreadManager;->mShortLock:Ljava/lang/Object;

    .line 34
    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mDownloadPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mDownloadLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ThreadManager;->mSingleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 15
    sget v0, Lcom/mergbw/core/utils/ThreadManager;->CORE_POOL_SIZE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 15
    sget v0, Lcom/mergbw/core/utils/ThreadManager;->MAXIMUM_POOL_SIZE:I

    return v0
.end method

.method public static getDownloadPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    .locals 3

    .line 46
    sget-object v0, Lcom/mergbw/core/utils/ThreadManager;->mDownloadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mDownloadPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;-><init>(Lcom/mergbw/core/utils/ThreadManager$1;)V

    sput-object v1, Lcom/mergbw/core/utils/ThreadManager;->mDownloadPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 50
    :cond_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mDownloadPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLongPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    .locals 3

    .line 58
    sget-object v0, Lcom/mergbw/core/utils/ThreadManager;->mLongLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mLongPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;-><init>(Lcom/mergbw/core/utils/ThreadManager$1;)V

    sput-object v1, Lcom/mergbw/core/utils/ThreadManager;->mLongPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 62
    :cond_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mLongPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    .locals 3

    .line 70
    sget-object v0, Lcom/mergbw/core/utils/ThreadManager;->mShortLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mShortPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;-><init>(Lcom/mergbw/core/utils/ThreadManager$1;)V

    sput-object v1, Lcom/mergbw/core/utils/ThreadManager;->mShortPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    .line 74
    :cond_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mShortPool:Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSinglePool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    .locals 1

    .line 82
    const-string v0, "DEFAULT_SINGLE_POOL_NAME"

    invoke-static {v0}, Lcom/mergbw/core/utils/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getSinglePool(Ljava/lang/String;)Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/mergbw/core/utils/ThreadManager;->mSingleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/mergbw/core/utils/ThreadManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;-><init>(Lcom/mergbw/core/utils/ThreadManager$1;)V

    .line 93
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
