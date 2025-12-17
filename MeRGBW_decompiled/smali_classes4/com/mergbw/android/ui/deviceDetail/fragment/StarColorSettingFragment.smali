.class public Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "StarColorSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "828A3A67-AA80-4FE8-ADEE-425DFB870364"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;


# direct methods
.method public static synthetic $r8$lambda$POitGXaSE5iTeZDNmn6x7We6kqY(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->updateDetailViewData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ewIm-ZPnX6_Bt_jgSj_kKQHAEP4(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->updateCommonColor(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    return-object p0
.end method

.method private updateCommonColor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->layoutCommonColor:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 147
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateDetailViewData(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMotorSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvSpeedPercent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getMotorSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbStarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getStarBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvStarBrightnessPercent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getStarBrightness()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-StarColorSettingFragment(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setColor(I)V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "828A3A67-AA80-4FE8-ADEE-425DFB870364"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-deviceDetail-fragment-StarColorSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setColor(I)V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "828A3A67-AA80-4FE8-ADEE-425DFB870364"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-mergbw-android-ui-deviceDetail-fragment-StarColorSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setColor(I)V

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "828A3A67-AA80-4FE8-ADEE-425DFB870364"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-mergbw-android-ui-deviceDetail-fragment-StarColorSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->saveSingleColor()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    .line 59
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbStarBrightness:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->viewStarColorPicker:Lcom/mergbw/core/ui/views/StarColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/StarColorPickerView;->setOnColorPickListener(Lcom/mergbw/core/ui/views/StarColorPickerView$OnStarColorPickListener;)V

    .line 109
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 111
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getClassicColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 119
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 120
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mCommonColorAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->btnSave:Landroid/widget/Button;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setDetailViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 130
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/StarColorSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel3;->setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
