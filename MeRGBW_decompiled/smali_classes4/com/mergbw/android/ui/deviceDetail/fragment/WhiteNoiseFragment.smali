.class public Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.source "WhiteNoiseFragment.java"

# interfaces
.implements Lcom/mergbw/android/task/IAudioCallback;


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "374CCD26-79FB-4BEA-929A-D84239B790A9"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;-><init>()V

    return-void
.end method

.method private setOffEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTitle:Landroid/widget/TextView;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTimeStr:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 114
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTime:Landroid/widget/TextView;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->layoutOffTime:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTitle:Landroid/widget/TextView;

    const v0, 0x3f0a3d71    # 0.54f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 128
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTimeStr:Landroid/widget/TextView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 129
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTime:Landroid/widget/TextView;

    const v0, 0x3ed70a3d    # 0.42f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 130
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->layoutOffTime:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bindServiceSuccess()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->bindServiceSuccess()V

    .line 102
    const-string v0, "WhiteNoiseFragment"

    invoke-virtual {p0, v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->setCallback(Ljava/lang/String;Lcom/mergbw/android/task/IAudioCallback;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-WhiteNoiseFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/android/UserinfoManage;->setWhiteNoiseTimer(Z)V

    .line 81
    invoke-direct {p0, p2}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->setOffEnable(Z)V

    if-eqz p2, :cond_0

    .line 83
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 84
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setOffEnable$1$com-mergbw-android-ui-deviceDetail-fragment-WhiteNoiseFragment(II)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/UserinfoManage;->setWhiteNoiseOffTimeHour(I)V

    .line 122
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mergbw/android/UserinfoManage;->setWhiteNoiseOffTimeMin(I)V

    return-void
.end method

.method synthetic lambda$setOffEnable$2$com-mergbw-android-ui-deviceDetail-fragment-WhiteNoiseFragment(Landroid/view/View;)V
    .locals 4

    .line 116
    new-instance p1, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeHour()I

    move-result v1

    .line 118
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeMin()I

    move-result v2

    new-instance v3, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;-><init>(Landroid/content/Context;IILcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;)V

    .line 124
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string p1, "374CCD26-79FB-4BEA-929A-D84239B790A9"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->registerEvent(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->bindService()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    .line 43
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onDestroy()V

    .line 95
    const-string v0, "WhiteNoiseFragment"

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->removeCallback(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->unBindService()V

    return-void
.end method

.method public onPlayResult(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->setPlaying(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 48
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 49
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->listNoise:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    .line 51
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->listNoise:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/IAudioItemClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getWhiteNoiseModel()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/WhiteNoiseItemAdapter;->setData(Ljava/util/List;)V

    .line 79
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->switchOff:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->switchOff:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/UserinfoManage;->isSetWhiteNoiseTimer()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 88
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/UserinfoManage;->isSetWhiteNoiseTimer()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->setOffEnable(Z)V

    .line 89
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/WhiteNoiseFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTime:Landroid/widget/TextView;

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeHour()I

    move-result p2

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->getWhiteNoiseOffTimeMin()I

    move-result v0

    invoke-static {p2, v0}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
