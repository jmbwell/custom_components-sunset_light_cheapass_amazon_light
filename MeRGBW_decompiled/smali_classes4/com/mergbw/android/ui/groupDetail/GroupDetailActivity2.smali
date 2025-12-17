.class public Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "GroupDetailActivity2.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

.field private mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

.field private mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

.field private mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$4DgPT1sO1Y_-xT8y5cEImbDqZsc(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->updateSingleDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WhX1uFtL9nInfjAN-II0527inKI(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZ6Ktp89d5EpWv8NcaWZQZJCPPM(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sUw7PNlZPQ1Oq7aLjBq7aZKcu1M(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->showLoading(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->updateCheckAll()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/GroupItemBean;

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->tvGroupName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v3, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    goto :goto_0

    .line 161
    :cond_2
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v3, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    goto :goto_0

    .line 157
    :cond_3
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v3, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance v3, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {v1, p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setGroupInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 169
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance v3, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {v1, p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setSingleDeviceInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 170
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance v3, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {v1, p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setBrightnessInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 171
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance v3, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {v1, p0, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setShowLoadingObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->initData(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getGroupTabList(I)Ljava/util/List;

    move-result-object v1

    .line 175
    iget-object v3, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {v3, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setData(Ljava/util/List;)V

    .line 176
    iget-object v3, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-virtual {v3, v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->setPageList(Ljava/util/List;)V

    .line 178
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/core/track/TrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    .line 179
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/android/google/GoogleTrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    return-void
.end method

.method private showLoading(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->showWaitDialog()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->hideWaitDialog()V

    :goto_0
    return-void
.end method

.method private updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->sbBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->sbBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->getBrightness()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateCheckAll()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 216
    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->cbCheckAll:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {v3}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 192
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$string;->group_device_num:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->setData(Ljava/util/List;)V

    .line 197
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 198
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1, v3}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setPower(Z)V

    :cond_0
    return-void
.end method

.method private updateSingleDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 3

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {v2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$1;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivSetting:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    .line 110
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;)V

    .line 113
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-direct {p1, p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    .line 114
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 116
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    .line 120
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$2;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->setClickListener(Lcom/mergbw/android/ui/groupDetail/adapter/IDeviceItemClickListener;)V

    .line 144
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->cbCheckAll:Landroid/widget/CheckBox;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-groupDetail-GroupDetailActivity2(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-groupDetail-GroupDetailActivity2(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setPower(Z)V

    .line 88
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/mergbw/core/track/TrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    .line 89
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lcom/mergbw/android/google/GoogleTrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-groupDetail-GroupDetailActivity2(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->getCurrentGroup()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToGroupSetting(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-groupDetail-GroupDetailActivity2(ILcom/mergbw/core/bean/TabItemBean;)V
    .locals 1

    .line 111
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-android-ui-groupDetail-GroupDetailActivity2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mDeviceAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDeviceItemAdapter;->updateCheckAll(Z)V

    .line 147
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->changeCheckedAll(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    .line 68
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mBinding:Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->initViews(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->initData()V

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 77
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

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 232
    const-string v0, "DELETE_GROUP_SUCCESS_ACTION"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->finish()V

    .line 235
    :cond_0
    const-string v0, "UPDATE_GROUP_SUCCESS_ACTION"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity2;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->updateGroupInfo()V

    :cond_1
    return-void
.end method
