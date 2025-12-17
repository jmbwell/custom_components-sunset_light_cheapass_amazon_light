.class Lcom/mergbw/core/ble/RGBDeviceManager$4;
.super Lcom/clj/fastble/callback/BleMtuChangedCallback;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;->setMtu(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bleDevice"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    iput-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleMtuChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMtuChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtu"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMtu onMtuChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$400(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V

    .line 256
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/ble/BleCallback;

    .line 257
    iget-object v2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/mergbw/core/ble/BleCallback;->onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/SendCommandQueue;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0, p1}, Lcom/mergbw/core/ble/SendCommandQueue;->setMtu(I)V

    :cond_1
    return-void
.end method

.method public onSetMTUFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMtu onSetMTUFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$400(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V

    .line 243
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/BleCallback;

    .line 244
    iget-object v2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/mergbw/core/ble/BleCallback;->onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$4;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ble/SendCommandQueue;

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1, v1}, Lcom/mergbw/core/ble/SendCommandQueue;->setMtu(I)V

    :cond_1
    return-void
.end method
