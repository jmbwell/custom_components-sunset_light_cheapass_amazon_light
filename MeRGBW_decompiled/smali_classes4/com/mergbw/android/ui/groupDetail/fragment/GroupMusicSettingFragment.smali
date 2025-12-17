.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.source "GroupMusicSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "906C3BCA-0A16-4DFF-9837-5B03027FB9E8"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupMusicSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;->setMusicModel(I)V

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "906C3BCA-0A16-4DFF-9837-5B03027FB9E8"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string p1, "906C3BCA-0A16-4DFF-9837-5B03027FB9E8"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    .line 52
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/GroupDetailViewModel1;

    .line 53
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    .line 77
    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getMusicModel()Ljava/util/List;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-virtual {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setData(Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->resetSelected()V

    :cond_0
    return-void
.end method
