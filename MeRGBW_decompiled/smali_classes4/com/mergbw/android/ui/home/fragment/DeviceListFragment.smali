.class public Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "DeviceListFragment.java"


# static fields
.field private static final OPEN_BLUETOOTH:I = 0xc8


# instance fields
.field private mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

.field private mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:I

.field private mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;


# direct methods
.method public static synthetic $r8$lambda$r6kth7vBAhxtge8GNYkWUhJl2eM(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->updateDeviceList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    .line 45
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->getListType()I

    move-result v0

    iput v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mListType:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mDeviceList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->checkBluetooth()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    return-object p0
.end method

.method private checkBluetooth()Z
    .locals 8

    .line 140
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/mergbw/core/R$string;->need_open_bluetooth_title:I

    .line 143
    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/mergbw/core/R$string;->need_open_bluetooth_content:I

    .line 144
    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v1, 0x1040000

    .line 145
    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x104000a

    .line 146
    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 153
    invoke-virtual {v0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initListType()V
    .locals 3

    .line 72
    iget v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 76
    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance v0, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;

    invoke-direct {v0}, Lcom/mergbw/android/ui/home/adapter/DeviceItemListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 82
    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v0, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;

    invoke-direct {v0}, Lcom/mergbw/android/ui/home/adapter/DeviceItemGridAdapter;-><init>()V

    iput-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$1;-><init>(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;->setClickListener(Lcom/mergbw/android/ui/home/adapter/IDeviceListClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    iget-object v1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mDeviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;->setData(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToAddDevice()V

    .line 65
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/mergbw/core/track/TrackManager;->homeClickTrack(III)V

    .line 66
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->homeClickTrack(III)V

    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->setDeviceListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDeviceList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 123
    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mDeviceList:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;->setData(Ljava/util/List;)V

    .line 125
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/home/adapter/DeviceItemAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public bluetoothReady()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->subscribeUI()V

    return-void
.end method

.method synthetic lambda$checkBluetooth$1$com-mergbw-android-ui-home-fragment-DeviceListFragment(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xc8

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public listTypeClick()V
    .locals 2

    .line 129
    iget v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 130
    iput v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mListType:I

    .line 131
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mergbw/android/UserinfoManage;->setListType(I)V

    goto :goto_0

    .line 133
    :cond_0
    iput v1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mListType:I

    .line 134
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mergbw/android/UserinfoManage;->setListType(I)V

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->initListType()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    .line 57
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->btnAddDevice:Landroid/widget/Button;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceListFragment;->initListType()V

    return-void
.end method
