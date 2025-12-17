.class public Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DeviceInfoViewModel.java"


# instance fields
.field private final mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

.field private final mDeleteResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field private final mDeviceViewData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    .line 47
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)V

    const-string v1, "DeviceInfoViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 66
    new-instance p1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public deleteDevice()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->deleteDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 127
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mergbw/core/track/TrackManager;->deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 128
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v2, v1, v3}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 106
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 107
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->sendData([B)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 98
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "DeviceInfoViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public sendData([B)V
    .locals 2

    .line 138
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setDeleteResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDeviceViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setLedNum(I)V
    .locals 3

    const/16 v0, 0xb

    .line 132
    invoke-static {p1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->sendData([B)V

    .line 133
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/mergbw/core/track/TrackManager;->deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 134
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v2, v1, p1}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public updateAliasName(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method
