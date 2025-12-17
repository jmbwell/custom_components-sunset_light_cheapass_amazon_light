.class public Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "DeviceUpgradeViewModel.java"


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

.field private final mErrorRecordListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRecordPresenter:Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mErrorRecordListData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)V

    const-string v1, "DeviceUpgradeViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 48
    new-instance p1, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$2;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mRecordPresenter:Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mErrorRecordListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public addErrorRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mRecordPresenter:Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->addRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method

.method public deleteErrorRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mRecordPresenter:Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->deleteConfig(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    return-void
.end method

.method public getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 81
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceInfo:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 82
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 73
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "DeviceUpgradeViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

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

    .line 90
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

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

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mDeviceViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setErrorRecordListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;>;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mErrorRecordListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->mRecordPresenter:Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->getRecordList()V

    return-void
.end method
