.class public Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.source "FestivalSceneListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "77101538-78D1-4816-9076-F5D2E14FEFA9"


# instance fields
.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-FestivalSceneListFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "77101538-78D1-4816-9076-F5D2E14FEFA9"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string p1, "77101538-78D1-4816-9076-F5D2E14FEFA9"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 50
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 51
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    .line 53
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-virtual {p2}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setData(Ljava/util/List;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/FestivalSceneListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->resetSelected()V

    :cond_0
    return-void
.end method
