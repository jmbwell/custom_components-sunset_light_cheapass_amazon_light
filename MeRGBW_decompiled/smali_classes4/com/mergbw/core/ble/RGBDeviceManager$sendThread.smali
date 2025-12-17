.class Lcom/mergbw/core/ble/RGBDeviceManager$sendThread;
.super Ljava/lang/Thread;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ble/RGBDeviceManager;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ble/RGBDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$sendThread;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 60
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mergbw/core/ble/TotalCommandDataQueue;->getInstance()Lcom/mergbw/core/ble/TotalCommandDataQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/ble/TotalCommandDataQueue;->take()Lcom/mergbw/core/ble/CommandData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$sendThread;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-virtual {v0}, Lcom/mergbw/core/ble/CommandData;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mergbw/core/ble/CommandData;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendData(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0
.end method
