.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "GroupIlluminatingSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "4674CB84-221F-4937-A2AE-C3A64BA5982A"


# instance fields
.field private lastLineColor:I

.field private mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

.field private mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

.field private mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->lastLineColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->lastLineColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->lastLineColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupIlluminatingSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setIlluminating(Lcom/mergbw/core/bean/SceneData;)V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "4674CB84-221F-4937-A2AE-C3A64BA5982A"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-groupDetail-fragment-GroupIlluminatingSettingFragment(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/ColorBean;->getColorValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;->setWarmColor(I)V

    .line 80
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "4674CB84-221F-4937-A2AE-C3A64BA5982A"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string p1, "4674CB84-221F-4937-A2AE-C3A64BA5982A"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    .line 57
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel6;

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance p1, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-direct {p1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    .line 65
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getIlluminatingData6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->setData(Ljava/util/List;)V

    .line 71
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    invoke-virtual {p1, v1}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->notifyItemInserted(I)V

    .line 74
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance p1, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    .line 76
    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getWarmColorList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setData(Ljava/util/List;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mClassicAdapter:Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SingleColorItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISingleColorListClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    invoke-static {}, Lcom/mergbw/core/utils/ColorUtils;->getWarmColorLineList()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setColors([I)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupIlluminatingSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment$1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/LineColorPickerView;->setOnColorPickerChangeListener(Lcom/mergbw/core/ui/views/LineColorPickerView$OnColorPickerChangeListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupIlluminatingSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/adapter/GroupSceneItemAdapter6;->resetSelected()V

    :cond_0
    return-void
.end method
