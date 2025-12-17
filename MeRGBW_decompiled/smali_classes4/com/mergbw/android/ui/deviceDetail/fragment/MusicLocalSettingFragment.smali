.class public Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.source "MusicLocalSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "3AC675F7-EE95-459B-92AA-CE2C44371072"


# instance fields
.field private mAudioData:Lcom/mergbw/core/bean/SceneData;

.field private mAudioSensitive:I

.field public mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    return p0
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    return p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-MusicLocalSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 3

    .line 87
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioData:Lcom/mergbw/core/bean/SceneData;

    .line 88
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->checkAudioPermission()V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "3AC675F7-EE95-459B-92AA-CE2C44371072"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 91
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public onAudioReady()V
    .locals 3

    .line 97
    invoke-super {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onAudioReady()V

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    iget v1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioData:Lcom/mergbw/core/bean/SceneData;

    invoke-virtual {v2}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->startVoiceData(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string p1, "3AC675F7-EE95-459B-92AA-CE2C44371072"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {p2}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 53
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    .line 54
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/UserinfoManage;->getAudioSensitive()I

    move-result p1

    iput p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    iget p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->tvSensitivePercent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mAudioSensitive:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    .line 83
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getMusicModel6()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setData(Ljava/util/List;)V

    .line 85
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->notifyItemInserted(I)V

    .line 86
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter6;->resetSelected()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicLocalSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->stopGetAudio()V

    return-void
.end method
