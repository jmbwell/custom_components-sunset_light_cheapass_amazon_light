.class public Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "IlluminatingSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "8A0DBB8C-5F59-4A85-9101-AD04A928C9C1"


# instance fields
.field private lastLineColor:I

.field private mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$mg1S5mT60d_jYmczUukBUHkIPas(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->lastLineColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->lastLineColor:I

    return p0
.end method

.method static synthetic access$102(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->lastLineColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    return-object p0
.end method

.method private updateBrightnessInfo(Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/bean/BrightnessInfo;->getWarmBrightness()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-IlluminatingSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 74
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "8A0DBB8C-5F59-4A85-9101-AD04A928C9C1"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-deviceDetail-fragment-IlluminatingSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColdAndWarm(Lcom/mergbw/android/ui/deviceDetail/bean/ColdAndWarm;)V

    .line 102
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "8A0DBB8C-5F59-4A85-9101-AD04A928C9C1"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string p1, "8A0DBB8C-5F59-4A85-9101-AD04A928C9C1"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    .line 62
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 63
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setBrightnessInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 69
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 70
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    .line 72
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getIlluminatingData6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setData(Ljava/util/List;)V

    .line 78
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->notifyItemInserted(I)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->getColdAndWarmBrightness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 98
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getWarmColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getWarmColorLineList()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setColors([I)V

    .line 107
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment$2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/IlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    :cond_0
    return-void
.end method
