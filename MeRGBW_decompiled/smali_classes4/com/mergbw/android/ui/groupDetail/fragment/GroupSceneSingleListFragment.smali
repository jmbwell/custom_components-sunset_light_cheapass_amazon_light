.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.source "GroupSceneSingleListFragment.java"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "A2050E35-3B18-43D4-914D-88380C38C23D"


# instance fields
.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupSceneSingleListFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "A2050E35-3B18-43D4-914D-88380C38C23D"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string p1, "A2050E35-3B18-43D4-914D-88380C38C23D"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 54
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    .line 56
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData5()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setData(Ljava/util/List;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupSceneSingleListFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->resetSelected()V

    :cond_0
    return-void
.end method
