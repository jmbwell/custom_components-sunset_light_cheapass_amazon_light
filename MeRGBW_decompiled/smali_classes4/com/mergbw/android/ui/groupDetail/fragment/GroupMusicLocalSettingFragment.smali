.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.source "GroupMusicLocalSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "66CF96EF-748A-4C97-B734-BDA051263E86"


# instance fields
.field private mAudioData:Lcom/mergbw/core/bean/SceneData;

.field private mAudioSensitive:I

.field private mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    return p0
.end method

.method static synthetic access$102(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    return p1
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;)Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupMusicLocalSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioData:Lcom/mergbw/core/bean/SceneData;

    .line 85
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->checkAudioPermission()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "66CF96EF-748A-4C97-B734-BDA051263E86"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onAudioReady()V
    .locals 3

    .line 92
    invoke-super {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onAudioReady()V

    .line 93
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget v1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    iget-object v2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioData:Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->startVoiceData(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string p1, "66CF96EF-748A-4C97-B734-BDA051263E86"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;

    invoke-virtual {p2}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    .line 50
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    .line 51
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/UserinfoManage;->getAudioSensitive()I

    move-result p1

    iput p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    iget p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->tvSensitivePercent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mAudioSensitive:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment$1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 78
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    .line 80
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getMusicModel6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setData(Ljava/util/List;)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->notifyItemInserted(I)V

    .line 83
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter5;->resetSelected()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupMusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->stopGetAudio()V

    return-void
.end method
