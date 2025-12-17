.class public Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "SubColorListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "9BDE8BA8-5A88-431E-AB21-462EBBD2E1D4"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

.field private mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;


# direct methods
.method public static synthetic $r8$lambda$qbWs7cHwqN0L3AZOIWPIHI9LEqM(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->updateSubColor(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnY8QIJhI4Tj2uhcUfpO7BCa2XU(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->updateSendResult(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)Lcom/mergbw/android/databinding/FragmentSubColorListBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    return-object p0
.end method

.method private updateSendResult(Z)V
    .locals 3

    .line 168
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSubColor(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/mergbw/core/Constants;->MAX_DIY_NUM:I

    if-ge v3, v4, :cond_0

    .line 147
    new-instance v3, Lcom/mergbw/core/database/bean/SubColorBean;

    invoke-direct {v3}, Lcom/mergbw/core/database/bean/SubColorBean;-><init>()V

    .line 148
    sget v4, Lcom/mergbw/core/R$string;->create_static:I

    invoke-virtual {p0, v4}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mergbw/core/database/bean/SubColorBean;->setAlias(Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 149
    invoke-virtual {v3, v4}, Lcom/mergbw/core/database/bean/SubColorBean;->setType(I)V

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->setData(Ljava/util/List;)V

    .line 154
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->notifyDataSetChanged()V

    .line 155
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->listSubColor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->listSubColor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-SubColorListFragment(Landroid/view/View;)V
    .locals 3

    .line 72
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/jump/JumpManager;->jumpToSubSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/SubColorBean;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string p1, "9BDE8BA8-5A88-431E-AB21-462EBBD2E1D4"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    .line 64
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    .line 65
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2}, Lcom/mergbw/core/ui/BaseSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance p1, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->listSubColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSubColorListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSubColorListBinding;->listSubColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/ISubColorGroupClickListener;)V

    .line 138
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setSubColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 139
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setSendSubResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SubColorListFragment;->mSubAdapter:Lcom/mergbw/core/ui/adapter/SubGroupAdapter;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/mergbw/core/ui/adapter/SubGroupAdapter;->resetSelected()V

    :cond_0
    return-void
.end method
