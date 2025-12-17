.class Lcom/mergbw/core/ble/RGBDeviceManager$2;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;->setNotify(Lcom/clj/fastble/data/BleDevice;)V
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

    .line 163
    iput-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$2;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 3
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

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setNotify onCharacteristicChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$2;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

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

    const/4 v2, 0x1

    .line 181
    aget-byte v2, p2, v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/mergbw/core/ble/BleCallback;->onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNotify onNotifyFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 166
    const-string v0, "setNotify onNotifySuccess"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mergbw/core/ble/RGBDeviceManager$2;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

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

    .line 168
    invoke-virtual {v1, p1}, Lcom/mergbw/core/ble/BleCallback;->onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method
