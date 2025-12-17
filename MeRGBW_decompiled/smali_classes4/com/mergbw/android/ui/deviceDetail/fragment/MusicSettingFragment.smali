.class public Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;
.super Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;
.source "MusicSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "183D265F-1A81-4D74-BC6C-50E947973837"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

.field private mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-MusicSettingFragment(Lcom/mergbw/core/bean/SceneData;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {p1}, Lcom/mergbw/core/bean/SceneData;->getSceneIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setMusicModel(I)V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "183D265F-1A81-4D74-BC6C-50E947973837"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/track/TrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    .line 88
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/android/google/GoogleTrackManager;->deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/BaseMusicFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string p1, "183D265F-1A81-4D74-BC6C-50E947973837"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 55
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p3, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    iput-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    .line 57
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getSensitive()I

    move-result p1

    sget p2, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    sget v0, Lcom/mergbw/core/Constants;->MIN_SENSITIVE_VALUE:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 64
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 65
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->tvSensitivePercent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->sbSensitive:Landroid/widget/SeekBar;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    .line 84
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneItemClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentMusicSettingBinding;->listMusicMode:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getMusicModel()Ljava/util/List;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    invoke-virtual {p2, p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->setData(Ljava/util/List;)V

    .line 94
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/MusicSettingFragment;->mItemAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneItemAdapter;->resetSelected()V

    :cond_0
    return-void
.end method
