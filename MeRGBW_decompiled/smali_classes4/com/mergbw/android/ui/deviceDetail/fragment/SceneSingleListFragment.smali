.class public Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.source "SceneSingleListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "5FB421D6-C1FB-4F22-B0E2-2B70CD65E6D8"


# instance fields
.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-SceneSingleListFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "5FB421D6-C1FB-4F22-B0E2-2B70CD65E6D8"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string p1, "5FB421D6-C1FB-4F22-B0E2-2B70CD65E6D8"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 51
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x1

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 52
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    .line 54
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->mCurrentDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData3()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData5()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setData(Ljava/util/List;)V

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->resetSelected()V

    :cond_0
    return-void
.end method
