.class public Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DeviceAlarmViewModel.java"


# instance fields
.field private final mConnectStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/ble/BleStatus;",
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

.field private final mSetResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mSetResultData:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 36
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)V

    const-string v1, "DeviceAlarmViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mSetResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 70
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 71
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 58
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "DeviceAlarmViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public sendData([B)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setConnectStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/ble/BleStatus;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

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

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSetResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
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

    .line 75
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->mSetResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
