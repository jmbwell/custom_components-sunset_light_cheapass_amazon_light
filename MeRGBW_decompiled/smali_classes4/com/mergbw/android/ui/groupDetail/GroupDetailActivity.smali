.class public Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "GroupDetailActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

.field private mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

.field private mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$zW3JtOELaM8YDcspT40jrTU6H1Q(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/GroupItemBean;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemState:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 128
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel5;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iput-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance v2, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setGroupInfoDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 132
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->initData(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/utils/ViewDataUtils;->getGroupTabList(I)Ljava/util/List;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {v2, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setData(Ljava/util/List;)V

    .line 136
    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-virtual {v2, v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;->setPageList(Ljava/util/List;)V

    .line 138
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/core/track/TrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    .line 139
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lcom/mergbw/android/google/GoogleTrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    return-void
.end method

.method private updateGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$string;->group_device_num:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvItemModel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 150
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setPower(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentViewModel()Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    return-object v0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->tvTitle:Landroid/widget/TextView;

    sget v0, Lcom/mergbw/android/R$string;->my_group:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivAlarm:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivDeviceIcon:Landroid/widget/ImageView;

    sget v0, Lcom/mergbw/android/R$mipmap;->icon_group:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    .line 83
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mTabAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/TabItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ITabItemClickListener;)V

    .line 86
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-direct {p1, p0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mPageAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupDetailPageStateAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 89
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$1;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->ivSetting:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-groupDetail-GroupDetailActivity(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-groupDetail-GroupDetailActivity(ILcom/mergbw/core/bean/TabItemBean;)V
    .locals 1

    .line 84
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-groupDetail-GroupDetailActivity(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setPower(Z)V

    .line 94
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/mergbw/core/track/TrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    .line 95
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lcom/mergbw/android/google/GoogleTrackManager;->groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-groupDetail-GroupDetailActivity(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->getCurrentGroup()Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToGroupSetting(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    .line 60
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceDetail2Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->initViews(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->initData()V

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 69
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

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 157
    const-string v0, "DELETE_GROUP_SUCCESS_ACTION"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->finish()V

    .line 160
    :cond_0
    const-string v0, "UPDATE_GROUP_SUCCESS_ACTION"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->updateGroupInfo()V

    :cond_1
    return-void
.end method
