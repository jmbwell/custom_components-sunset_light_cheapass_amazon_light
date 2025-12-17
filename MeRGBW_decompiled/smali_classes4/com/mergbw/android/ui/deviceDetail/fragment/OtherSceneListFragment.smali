.class public Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;
.source "OtherSceneListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "7732BF53-60D6-46AA-A00C-BF4A96515BAA"


# instance fields
.field private mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-OtherSceneListFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setScene(Lcom/mergbw/core/bean/SceneData;)V

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "7732BF53-60D6-46AA-A00C-BF4A96515BAA"

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
    const-string p1, "7732BF53-60D6-46AA-A00C-BF4A96515BAA"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseSceneListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 50
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    .line 53
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneListBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-virtual {p2}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->setData(Ljava/util/List;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/OtherSceneListFragment;->mItemAdapter2:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter2;->resetSelected()V

    :cond_0
    return-void
.end method
