.class public Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BaseGroupDetailViewModel.java"


# instance fields
.field private mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

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

.field public mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

.field public mCurrentSingleColor:I

.field public final mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

.field public final mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

.field public final mGroupInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public final mShowLoading:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PzZ__oTAYaYtfBRjq941Qrubqqo(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->sendAudioColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 52
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance p1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    .line 109
    new-instance p1, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$2;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IColorDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    .line 131
    new-instance p1, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$3;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    .line 159
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    const-string v1, "BaseGroupDetailViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->initGroupDevice()V

    return-void
.end method

.method private initGroupDevice()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDevices()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v1, v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceMacList([Ljava/lang/String;)V

    .line 267
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 268
    iget-object v4, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    invoke-virtual {v4, v3}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->getDeviceInfo(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendAudioColor(I)V
    .locals 5

    .line 362
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 363
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 364
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

    .line 365
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 366
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendAudioColor(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public changeChecked(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 303
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public changeCheckedAll(Z)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 312
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentGroup()Lcom/mergbw/core/database/bean/GroupItemBean;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 254
    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/GroupItemBean;

    .line 255
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->initGroupDevice()V

    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->getGroupInfo(I)V

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 244
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 245
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->stopGetAudio()V

    .line 246
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "BaseGroupDetailViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public saveSingleColor()V
    .locals 3

    .line 332
    iget v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentSingleColor:I

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lcom/mergbw/core/database/bean/ColorBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/ColorBean;-><init>()V

    .line 334
    iget v1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentSingleColor:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/ColorBean;->setColorValue(I)V

    .line 335
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/core/database/bean/ColorBean;->setAddTime(J)V

    .line 336
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {v1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->addColor(Lcom/mergbw/core/database/bean/ColorBean;)V

    :cond_0
    return-void
.end method

.method public sendData([B)V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 319
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendDataSingle(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V
    .locals 2

    .line 326
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    :cond_0
    return-void
.end method

.method public setAudioSensitive(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioRecordTask;->setAudioSensitive(I)V

    :cond_0
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

    .line 290
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mBrightnessInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

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

    .line 281
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCommonColorListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 282
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mColorDatabasePresenter:Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->getColorList()V

    return-void
.end method

.method public setGroupInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setPower(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 342
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 343
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->sendData([B)V

    return-void
.end method

.method public setPowerSingle(Lcom/mergbw/core/database/bean/DeviceInfoBean;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 348
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    .line 349
    invoke-static {v0, v1}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->sendDataSingle(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    return-void
.end method

.method public setRGBColor(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentSingleColor:I

    return-void
.end method

.method public setScene(Lcom/mergbw/core/bean/SceneData;)V
    .locals 0

    return-void
.end method

.method public setShowLoadingObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
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

    .line 294
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mShowLoading:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSingleDeviceInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
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

    .line 286
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public startVoiceData(II)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/mergbw/android/task/AudioRecordTask;

    int-to-float p2, p2

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/mergbw/android/task/AudioRecordTask;-><init>(IFLcom/mergbw/android/task/IAudioRecordListener;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    .line 375
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getLongPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mergbw/android/task/AudioRecordTask;->setAudioSensitive(I)V

    .line 378
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/task/AudioRecordTask;->setHue(F)V

    :goto_0
    return-void
.end method

.method public stopGetAudio()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/mergbw/android/task/AudioRecordTask;->release()V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mAudioRecordTask:Lcom/mergbw/android/task/AudioRecordTask;

    :cond_0
    return-void
.end method

.method public updateGroupInfo()V
    .locals 0

    return-void
.end method
