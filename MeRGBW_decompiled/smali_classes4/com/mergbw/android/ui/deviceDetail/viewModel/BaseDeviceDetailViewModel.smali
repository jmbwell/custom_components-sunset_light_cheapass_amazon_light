.class public Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BaseDeviceDetailViewModel.java"


# instance fields
.field private mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

.field public final mBindStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/android/ui/addDevice/BindStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

.field public final mCommonColorListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mConnectStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/ble/BleStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field public mCurrentSingleColor:I

.field private final mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

.field public final mDetailViewData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

.field private final mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$KNP4cDR-o5Ks8ecIKEkKFlZVE8Y(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->sendAudioColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 50
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mBindStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    .line 78
    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mTag:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V

    invoke-virtual {p1, p2, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 129
    new-instance p1, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$2;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V

    invoke-direct {p1, p2}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    .line 151
    new-instance p1, Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$3;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V

    invoke-direct {p1, p2}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;-><init>(Lcom/mergbw/core/network/factory/FactoryDataCallback;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    return-void
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private sendAudioColor(I)V
    .locals 5

    .line 261
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 262
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 263
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte p1, v3, v0

    .line 264
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendAudioColor(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method


# virtual methods
.method public getColdAndWarmBrightness()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object v0
.end method

.method public getFactoryInfo()Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    return-object v0
.end method

.method public getSiteCode()Ljava/lang/String;
    .locals 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSiteCode IP Site: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    .line 314
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_1
    invoke-static {}, Lcom/mergbw/android/FactoryInfoManage;->getInstance()Lcom/mergbw/android/FactoryInfoManage;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/FactoryInfoManage;->getHistorySiteCode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    .line 323
    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    invoke-virtual {v2}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getSiteList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean$SiteInfo;->getSiteCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_4
    const-string v0, "US"

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 195
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 196
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 198
    invoke-static {p1, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->sendData([B)V

    return-void
.end method

.method public loadDataFactoryAreaData(Ljava/lang/String;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryActivityInfo(ILjava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfo:Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryProductInfo(ILjava/lang/String;)V

    return-void
.end method

.method protected onBleResponse(B[B)V
    .locals 0

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 180
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 181
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->stopGetAudio()V

    .line 182
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public saveSingleColor()V
    .locals 3

    .line 227
    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentSingleColor:I

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/mergbw/core/database/bean/ColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/ColorBean;-><init>()V

    .line 229
    iget v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentSingleColor:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/ColorBean;->setColorValue(I)V

    .line 230
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;->setAddTime(J)V

    .line 231
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {v1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->addColor(Lcom/mergbw/core/database/bean/ColorBean;)V

    :cond_0
    return-void
.end method

.method public sendData([B)V
    .locals 2

    .line 223
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setAudioSensitive(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioRecordTask;->setAudioSensitive(I)V

    :cond_0
    return-void
.end method

.method public setBindStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/android/ui/addDevice/BindStatus;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mBindStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    return-void
.end method

.method public setBrightnessInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V
    .locals 0

    return-void
.end method

.method public setColdAndWarmBrightness(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentSingleColor:I

    return-void
.end method

.method public setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 191
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->getColorList()V

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

    .line 202
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mConnectStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDetailViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
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

    .line 186
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDetailViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setFactoryActivityListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryActivityListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setFactoryInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 215
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mDataPresenter:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryInfo(I)V

    return-void
.end method

.method public setFactoryProductListObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryProductInfoBean$GoodsInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mFactoryProductListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setPower(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 239
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 240
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->sendData([B)V

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 0

    return-void
.end method

.method public startVoiceData(II)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/mergbw/android/task/AudioRecordTask;

    int-to-float p2, p2

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/mergbw/android/task/AudioRecordTask;-><init>(IFLcom/mergbw/android/task/IAudioRecordListener;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    .line 270
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getLongPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioRecordTask;->setAudioSensitive(I)V

    .line 273
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/task/AudioRecordTask;->setHue(F)V

    :goto_0
    return-void
.end method

.method public stopGetAudio()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/mergbw/android/task/AudioRecordTask;->release()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    :cond_0
    return-void
.end method
