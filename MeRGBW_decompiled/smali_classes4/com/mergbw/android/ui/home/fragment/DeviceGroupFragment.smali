.class public Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "DeviceGroupFragment.java"


# instance fields
.field private mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

.field private mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

.field private mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;


# direct methods
.method public static synthetic $r8$lambda$A4ZhDEJUEKP9Kh_07NUo5FL1_JM(Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->updateGroupList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 48
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToGroupDetail2(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToGroupDetail(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToGroupSetting(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    new-instance v1, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->setGroupListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateGroupList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->setData(Ljava/util/List;)V

    .line 68
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentGroupListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    .line 35
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mViewModel:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    .line 36
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentGroupListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 43
    iget-object p2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentGroupListBinding;->listGroup:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    new-instance p1, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    .line 45
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupListBinding;->listGroup:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mAdapter:Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/home/adapter/GroupItemAdapter;->setClickListener(Lcom/mergbw/android/ui/home/adapter/IGroupListClickListener;)V

    .line 54
    invoke-direct {p0}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->subscribeUI()V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentGroupListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentGroupListBinding;->layoutNoGroup:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/mergbw/android/ui/home/fragment/DeviceGroupFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
