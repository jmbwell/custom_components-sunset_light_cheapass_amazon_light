.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "GroupAtmosphereSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"


# instance fields
.field private lastLineColor:I

.field private mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->lastLineColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->lastLineColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->lastLineColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupAtmosphereSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setIlluminating(Lcom/mergbw/core/bean/SceneData;)V

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-groupDetail-fragment-GroupAtmosphereSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setRGBColor(I)V

    .line 79
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-mergbw-android-ui-groupDetail-fragment-GroupAtmosphereSettingFragment(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setRGBColor(I)V

    .line 111
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->refreshSelected(I)V

    .line 112
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-mergbw-android-ui-groupDetail-fragment-GroupAtmosphereSettingFragment(Landroid/view/View;)V
    .locals 2

    .line 109
    new-instance p1, Lcom/mergbw/core/ui/views/ColorPiePopWindow;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/mergbw/core/ui/views/ColorPiePopWindow;-><init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/ColorPiePopWindow$OnColorPickListener;)V

    .line 115
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string p1, "EE41E48B-9FF9-47D9-94C0-05F61602DA0E"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    .line 56
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    .line 64
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->setData(Ljava/util/List;)V

    .line 70
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1, v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->notifyItemInserted(I)V

    .line 73
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 75
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getAtmosphereColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V

    .line 108
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->layoutColorPie:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupAtmosphereSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    :cond_0
    return-void
.end method
