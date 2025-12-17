.class public Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "HomeViewModel.java"


# instance fields
.field private final mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

.field private final mGroupListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 38
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mGroupListData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceList:Ljava/util/List;

    .line 50
    new-instance p1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;-><init>(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    .line 85
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;-><init>(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)V

    const-string v1, "HomeViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 181
    new-instance p1, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$3;-><init>(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->deviceInitData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->syncInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mGroupListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private deviceInitData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 3

    .line 210
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/16 v1, 0xe

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 220
    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 221
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->syncInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getUniId()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private syncInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 14

    .line 235
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x2

    .line 241
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x5

    .line 242
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/16 v10, 0xb

    .line 243
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/16 v11, 0xc

    .line 244
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    const/16 v13, 0xd

    .line 245
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 246
    invoke-static {}, Lcom/mergbw/core/utils/StringUtils;->getWeekInt()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    new-array v4, v4, [B

    aput-byte v3, v4, v2

    aput-byte v5, v4, v1

    aput-byte v7, v4, v6

    const/4 v1, 0x3

    aput-byte v9, v4, v1

    const/4 v1, 0x4

    aput-byte v10, v4, v1

    aput-byte v12, v4, v8

    const/4 v1, 0x6

    aput-byte v0, v4, v1

    const/4 v0, 0x7

    aput-byte v13, v4, v0

    .line 247
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-static {v11, v4}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method


# virtual methods
.method protected onCleared()V
    .locals 2

    .line 252
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 253
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "HomeViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public sendData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setDeviceListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 258
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->getDeviceList()V

    return-void
.end method

.method public setGroupListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mGroupListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 263
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->getGroupListWithFlowable()V

    return-void
.end method
