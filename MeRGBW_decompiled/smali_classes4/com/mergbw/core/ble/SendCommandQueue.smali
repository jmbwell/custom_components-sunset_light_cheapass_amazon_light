.class public Lcom/mergbw/core/ble/SendCommandQueue;
.super Ljava/lang/Object;
.source "SendCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ble/SendCommandQueue$sendThread;
    }
.end annotation


# instance fields
.field private canSendAudio:Z

.field private final dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mergbw/core/ble/CommandData;",
            ">;"
        }
    .end annotation
.end field

.field private mtu:I

.field private runSend:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->runSend:Z

    const/16 v1, 0x14

    .line 13
    iput v1, p0, Lcom/mergbw/core/ble/SendCommandQueue;->mtu:I

    .line 15
    iput-boolean v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->canSendAudio:Z

    .line 19
    new-instance v0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;-><init>(Lcom/mergbw/core/ble/SendCommandQueue;Lcom/mergbw/core/ble/SendCommandQueue$1;)V

    invoke-virtual {v0}, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/mergbw/core/ble/SendCommandQueue;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->runSend:Z

    return p0
.end method

.method static synthetic access$202(Lcom/mergbw/core/ble/SendCommandQueue;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mergbw/core/ble/SendCommandQueue;->canSendAudio:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
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

.method public getMtu()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->mtu:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->dataQueue:Ljava/util/concurrent/BlockingQueue;

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

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendAudioData(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "data"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->canSendAudio:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    return-void
.end method

.method public setMtu(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtu"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/mergbw/core/ble/SendCommandQueue;->mtu:I

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->runSend:Z

    return-void
.end method

.method public take()Lcom/mergbw/core/ble/CommandData;
    .locals 1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/CommandData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
