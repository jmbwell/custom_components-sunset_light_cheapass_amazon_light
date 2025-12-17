.class Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "AddDeviceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;-><init>(Landroid/app/Application;)V
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

    .line 54
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getUniId()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_1
    return-void
.end method

.method public onConnectedFailed(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    sget-object v1, Lcom/mergbw/android/ui/addDevice/BindStatus;->ERROR:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-interface {p1, v0, v1}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V

    :cond_1
    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xe

    if-ne p2, p1, :cond_3

    const/4 p1, 0x4

    .line 88
    aget-byte p1, p3, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 90
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    iget-object p2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object p2

    sget-object p3, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-interface {p1, p2, p3}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 95
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    iget-object p2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object p2

    sget-object p3, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-interface {p1, p2, p3}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 100
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object p1

    iget-object p2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object p2

    sget-object p3, Lcom/mergbw/android/ui/addDevice/BindStatus;->TIMEOUT:Lcom/mergbw/android/ui/addDevice/BindStatus;

    invoke-interface {p1, p2, p3}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getUniId()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_1
    return-void
.end method
