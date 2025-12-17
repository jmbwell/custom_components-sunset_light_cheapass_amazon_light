.class Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "BaseDeviceDetailViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;-><init>(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->CONNECTED:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    :cond_0
    return-void
.end method

.method public onConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->CONNECTED:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    :cond_0
    return-void
.end method

.method public onConnectedFailed(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->CONNECT_ERROR:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    :cond_0
    return-void
.end method

.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    :cond_0
    return-void
.end method

.method public onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/core/ble/BleCallback;->onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V

    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->onBleResponse(B[B)V

    return-void
.end method

.method public onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/mergbw/core/ble/BleCallback;->onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method
