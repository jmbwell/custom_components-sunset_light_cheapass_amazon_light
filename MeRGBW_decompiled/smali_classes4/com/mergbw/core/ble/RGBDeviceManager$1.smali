.class Lcom/mergbw/core/ble/RGBDeviceManager$1;
.super Lcom/clj/fastble/callback/BleGattCallback;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ble/RGBDeviceManager;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ble/RGBDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "exception"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onConnectFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/clj/fastble/exception/BleException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/BleCallback;

    .line 106
    invoke-virtual {v0, p1}, Lcom/mergbw/core/ble/BleCallback;->onConnectedFailed(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectSuccess(Lcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device",
            "gatt",
            "status"
        }
    .end annotation

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "connectDevice: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " onConnectSuccess"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mergbw/core/ble/BleCallback;

    .line 115
    invoke-virtual {p3, p1}, Lcom/mergbw/core/ble/BleCallback;->onConnected(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$200(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V

    .line 120
    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 121
    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/mergbw/core/ble/SendCommandQueue;

    invoke-direct {p3}, Lcom/mergbw/core/ble/SendCommandQueue;-><init>()V

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onConnectSuccess mDataQueue size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDisConnected(ZLcom/clj/fastble/data/BleDevice;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isActiveDisConnected",
            "device",
            "gatt",
            "status"
        }
    .end annotation

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onDisConnected: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " onDisConnected"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$100(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mergbw/core/ble/BleCallback;

    .line 130
    invoke-virtual {p3, p2}, Lcom/mergbw/core/ble/BleCallback;->onDisconnected(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/ble/SendCommandQueue;

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/mergbw/core/ble/SendCommandQueue;->stop()V

    .line 137
    iget-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onConnectSuccess mDataQueue size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$1;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-static {p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->access$300(Lcom/mergbw/core/ble/RGBDeviceManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onStartConnect()V
    .locals 0

    return-void
.end method
