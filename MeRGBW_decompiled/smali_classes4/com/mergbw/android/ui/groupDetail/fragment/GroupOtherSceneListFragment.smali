.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.source "GroupOtherSceneListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "8C88014D-4F82-4C33-B410-DBE760716845"


# instance fields
.field private mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupOtherSceneListFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "8C88014D-4F82-4C33-B410-DBE760716845"

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
    const-string p1, "8C88014D-4F82-4C33-B410-DBE760716845"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 45
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    iput-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 51
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    .line 54
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-virtual {p2}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->setData(Ljava/util/List;)V

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupOtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->resetSelected()V

    :cond_0
    return-void
.end method
