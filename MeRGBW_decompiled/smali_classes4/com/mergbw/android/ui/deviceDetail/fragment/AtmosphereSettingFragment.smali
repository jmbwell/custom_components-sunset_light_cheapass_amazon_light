.class public Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "AtmosphereSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"


# instance fields
.field private lastLineColor:I

.field private mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$AN7mM6tEn2Vspiy2Tf_4FbeoENc(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->lastLineColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->lastLineColor:I

    return p0
.end method

.method static synthetic access$102(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->lastLineColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    return-object p0
.end method

.method private updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->getBrightness()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-AtmosphereSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-deviceDetail-fragment-AtmosphereSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 101
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 102
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-mergbw-android-ui-deviceDetail-fragment-AtmosphereSettingFragment(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 134
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-mergbw-android-ui-deviceDetail-fragment-AtmosphereSettingFragment(Landroid/view/View;)V
    .locals 2

    .line 131
    new-instance p1, Lcom/mergbw/core/ui/views/ColorPiePopWindow;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;-><init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;)V

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string p1, "4525277A-CAA6-44D6-84E2-7DEF48D7C57E"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    .line 61
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 62
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightnessInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 68
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 69
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    .line 71
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setData(Ljava/util/List;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->notifyItemInserted(I)V

    .line 80
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getBrightness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 97
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getAtmosphereColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 98
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V

    .line 130
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->layoutColorPie:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/AtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    :cond_0
    return-void
.end method
