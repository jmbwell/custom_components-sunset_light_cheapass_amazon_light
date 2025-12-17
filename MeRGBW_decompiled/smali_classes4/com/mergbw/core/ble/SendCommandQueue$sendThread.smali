.class Lcom/mergbw/core/ble/SendCommandQueue$sendThread;
.super Ljava/lang/Thread;
.source "SendCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ble/SendCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ble/SendCommandQueue;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ble/SendCommandQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->this$0:Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mergbw/core/ble/SendCommandQueue;Lcom/mergbw/core/ble/SendCommandQueue$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;-><init>(Lcom/mergbw/core/ble/SendCommandQueue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 25
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->this$0:Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-static {v0}, Lcom/mergbw/core/ble/SendCommandQueue;->access$100(Lcom/mergbw/core/ble/SendCommandQueue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->this$0:Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-virtual {v0}, Lcom/mergbw/core/ble/SendCommandQueue;->take()Lcom/mergbw/core/ble/CommandData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->this$0:Lcom/mergbw/core/ble/SendCommandQueue;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mergbw/core/ble/SendCommandQueue;->access$202(Lcom/mergbw/core/ble/SendCommandQueue;Z)Z

    const-wide/16 v1, 0x64

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 32
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mergbw/core/ble/CommandData;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mergbw/core/ble/CommandData;->getData()[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendData(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mergbw/core/ble/SendCommandQueue$sendThread;->this$0:Lcom/mergbw/core/ble/SendCommandQueue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mergbw/core/ble/SendCommandQueue;->access$202(Lcom/mergbw/core/ble/SendCommandQueue;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method
