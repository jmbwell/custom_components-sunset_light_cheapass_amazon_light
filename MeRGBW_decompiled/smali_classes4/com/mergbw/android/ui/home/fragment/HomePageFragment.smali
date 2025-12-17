.class public Lcom/mergbw/android/ui/home/fragment/HomePageFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "HomePageFragment.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

.field private mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

.field private mDeviceGroupPage:Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;

.field private mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rgTitleBar:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/home/fragment/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->refreshListIcon()V

    .line 59
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/home/fragment/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivAdd:Landroid/widget/ImageView;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-direct {v0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    .line 72
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 74
    sget v1, Lcom/mergbw/android/R$id;->layout_child_content:I

    iget-object v2, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 76
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    iput-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    return-void
.end method

.method static synthetic lambda$initViews$2(Landroid/view/View;)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAddDevice()V

    .line 67
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mergbw/core/track/TrackManager;->homeClickTrack(III)V

    .line 68
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mergbw/android/google/GoogleTrackManager;->homeClickTrack(III)V

    return-void
.end method

.method private refreshListIcon()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->getListType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mergbw/android/R$mipmap;->icon_list_grid:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mergbw/android/R$mipmap;->icon_list:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bluetoothReady()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->bluetoothReady()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-home-fragment-HomePageFragment(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    sget v0, Lcom/mergbw/android/R$id;->rb_device:I

    if-ne p2, v0, :cond_1

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->switchContent(Lcom/mergbw/core/ui/BaseFragment;)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivAdd:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget p2, Lcom/mergbw/android/R$id;->rb_group:I

    if-ne p1, p2, :cond_3

    .line 50
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceGroupPage:Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;

    if-nez p1, :cond_2

    .line 51
    new-instance p1, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceGroupPage:Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceGroupPage:Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->switchContent(Lcom/mergbw/core/ui/BaseFragment;)V

    .line 54
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivAdd:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-home-fragment-HomePageFragment(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mDeviceListPage:Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->listTypeClick()V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->refreshListIcon()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    .line 36
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->initViews()V

    .line 37
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public switchContent(Lcom/mergbw/core/ui/BaseFragment;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    if-eq v0, p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/mergbw/core/ui/BaseFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/mergbw/android/R$id;->layout_child_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 108
    :goto_0
    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/HomePageFragment;->mCurrentFragment:Lcom/mergbw/core/ui/BaseFragment;

    :cond_1
    return-void
.end method
