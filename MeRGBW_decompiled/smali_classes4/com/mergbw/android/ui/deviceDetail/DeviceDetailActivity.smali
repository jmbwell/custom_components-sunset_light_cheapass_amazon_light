.class public Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DeviceDetailActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

.field private mPageAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

.field private mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

.field private mTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$05NmwTsMK3wqD9Tnf1KN48AlT2M(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2B3N1hgskU184KhHteimQJWz9IQ(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;Lcom/mergbw/core/ble/BleStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbS5CREl677C0WGb27W-cDOGd6k(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;Lcom/mergbw/android/ui/addDevice/BindStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->updateBindStatus(Lcom/mergbw/android/ui/addDevice/BindStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tn07bJK6pG4n_Kgj1739diZJxVU(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->updateDetailViewData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    return-object p0
.end method

.method private hasContainFactoryArea()Z
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/bean/TabItemBean;

    .line 274
    invoke-virtual {v1}, Lcom/mergbw/core/bean/TabItemBean;->getId()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initData()V
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 157
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 158
    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBindStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 151
    :cond_1
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel7;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    goto :goto_0

    .line 147
    :cond_2
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel6;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    goto :goto_0

    .line 143
    :cond_3
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel5;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    goto :goto_0

    .line 139
    :cond_4
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setDetailViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 162
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->initData(Landroid/content/Intent;)V

    .line 163
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setConnectStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 164
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance v2, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setFactoryInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 166
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getTabList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    .line 167
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {v2, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setData(Ljava/util/List;)V

    .line 168
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->setPageList(Ljava/util/List;)V

    .line 170
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 171
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method static synthetic lambda$updateDetailViewData$7(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method private onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->hideConnectingDialog()V

    .line 221
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    if-ne p1, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->finish()V

    .line 226
    :cond_0
    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->CONNECT_ERROR:Lcom/mergbw/core/ble/BleStatus;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutConnectedFail:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutDeviceSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :cond_1
    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->CONNECTED:Lcom/mergbw/core/ble/BleStatus;

    if-ne p1, v0, :cond_2

    .line 234
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutConnectedFail:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateBindStatus(Lcom/mergbw/android/ui/addDevice/BindStatus;)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->hideConnectingDialog()V

    .line 243
    sget-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    if-ne p1, v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->showBindDialog()V

    goto :goto_0

    .line 246
    :cond_0
    sget-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    if-ne p1, v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->hideBindDialog()V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->hideBindDialog()V

    .line 250
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->finish()V

    :goto_0
    return-void
.end method

.method private updateDetailViewData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDetailViewData open: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    :cond_1
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->showConnectingDialog()V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    if-eqz v0, :cond_9

    .line 200
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_5

    .line 201
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->sbBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 202
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/mergbw/core/utils/ViewDataUtils;->getDeviceIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/mergbw/core/R$mipmap;->icon_ble_connected:I

    goto :goto_3

    :cond_6
    sget v1, Lcom/mergbw/core/R$mipmap;->icon_ble_disconnected:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->layoutDeviceSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivAlarm:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private updateFactoryInfo(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getRoleType()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->hasContainFactoryArea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    new-instance v1, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v2, 0x3d

    sget v3, Lcom/mergbw/android/R$string;->factory_area:I

    invoke-direct {v1, v2, v3}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setData(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;->setPageList(Ljava/util/List;)V

    .line 261
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getPromotionPicture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryFileAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;->getPromotionPicture()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/high16 v1, 0x41400000    # 12.0f

    .line 264
    invoke-static {v1}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/high16 v0, 0x42fa0000    # 125.0f

    .line 265
    invoke-static {v0}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1, v0}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivBg:Landroid/widget/ImageView;

    .line 266
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    return-object v0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 97
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivSetting:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivAlarm:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->btnReconnect:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

    invoke-direct {p1, p0}, Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

    .line 124
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/DetailPageStateAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 126
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 128
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    .line 130
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setPower(Z)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceAlarm(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(Landroid/view/View;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->showConnectingDialog()V

    return-void
.end method

.method synthetic lambda$initViews$6$com-mergbw-android-ui-deviceDetail-DeviceDetailActivity(ILcom/mergbw/core/bean/TabItemBean;)V
    .locals 1

    .line 131
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    .line 81
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->initViews(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->initData()V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/mergbw/core/event/EventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 177
    const-string v0, "DELETE_DEVICE_SUCCESS_ACTION"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->disconnectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 181
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->finish()V

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "DEVICE_ALIAS_NAME_CHANGE"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setAliasName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
