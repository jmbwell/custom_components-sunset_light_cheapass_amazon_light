.class public Lcom/mergbw/core/ble/TotalCommandDataQueue;
.super Ljava/lang/Object;
.source "TotalCommandDataQueue.java"


# static fields
.field private static sendDataQueue:Lcom/mergbw/core/ble/TotalCommandDataQueue;


# instance fields
.field private final mDataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mergbw/core/ble/CommandData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static getInstance()Lcom/mergbw/core/ble/TotalCommandDataQueue;
    .locals 1

    .line 16
    sget-object v0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->sendDataQueue:Lcom/mergbw/core/ble/TotalCommandDataQueue;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/mergbw/core/ble/TotalCommandDataQueue;

    invoke-direct {v0}, Lcom/mergbw/core/ble/TotalCommandDataQueue;-><init>()V

    sput-object v0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->sendDataQueue:Lcom/mergbw/core/ble/TotalCommandDataQueue;

    .line 19
    :cond_0
    sget-object v0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->sendDataQueue:Lcom/mergbw/core/ble/TotalCommandDataQueue;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSize()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public put(Lcom/mergbw/core/ble/CommandData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandData"
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public take()Lcom/mergbw/core/ble/CommandData;
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/TotalCommandDataQueue;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/CommandData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
