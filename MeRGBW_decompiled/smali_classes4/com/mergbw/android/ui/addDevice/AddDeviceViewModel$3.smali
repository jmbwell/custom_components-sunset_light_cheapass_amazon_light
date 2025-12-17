.class Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "AddDeviceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->scanDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$300(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateScanResult(Z)V

    :cond_1
    return-void
.end method

.method public onScanStarted(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateScanResult(Z)V

    :cond_0
    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 5

    .line 173
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$200(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 178
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$400(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;[B)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/ble/CastDataBean;

    .line 185
    invoke-virtual {v2}, Lcom/mergbw/core/ble/CastDataBean;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 186
    invoke-virtual {v2}, Lcom/mergbw/core/ble/CastDataBean;->getLen()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 187
    invoke-virtual {v2}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    .line 188
    invoke-virtual {v2}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0x35

    if-ne v2, v3, :cond_3

    .line 190
    new-instance v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-direct {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;-><init>()V

    .line 191
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceMac(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1, v1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$500(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;Ljava/util/List;)V

    .line 195
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$300(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 197
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$300(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateDeviceList(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method
