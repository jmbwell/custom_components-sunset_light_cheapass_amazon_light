.class public Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;
.super Lcom/mergbw/core/ui/BaseSelectFragment;
.source "DIYListFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "3E7D39D8-BFB3-44EB-9B57-3A2033BCB548"


# instance fields
.field private mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

.field private mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;


# direct methods
.method public static synthetic $r8$lambda$1hB0VELj9TL_AI63sABJbN3_mvI(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->updateSendResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$htMMsR2XMUYb881jEO6-tb9ZFe0(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->updateDIYListData(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseSelectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)Lcom/mergbw/android/databinding/FragmentDiyListBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    return-object p0
.end method

.method private updateDIYListData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/mergbw/core/Constants;->MAX_DIY_NUM:I

    if-ge v3, v4, :cond_0

    .line 148
    new-instance v3, Lcom/mergbw/core/database/bean/DIYInfoBean;

    invoke-direct {v3}, Lcom/mergbw/core/database/bean/DIYInfoBean;-><init>()V

    .line 149
    sget v4, Lcom/mergbw/core/R$string;->create_dynamic:I

    invoke-virtual {p0, v4}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 150
    invoke-virtual {v3, v4}, Lcom/mergbw/core/database/bean/DIYInfoBean;->setType(I)V

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    invoke-virtual {p1, v0}, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;->setData(Ljava/util/List;)V

    .line 155
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    invoke-virtual {p1}, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->listDiy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->listDiy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSendResult(Z)V
    .locals 3

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-DIYListFragment(Landroid/view/View;)V
    .locals 3

    .line 140
    invoke-static {}, Lcom/mergbw/core/jump/JumpManager;->getInstance()Lcom/mergbw/core/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/mergbw/core/jump/JumpManager;->jumpToDIYSetting(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/core/database/bean/DIYInfoBean;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string p1, "3E7D39D8-BFB3-44EB-9B57-3A2033BCB548"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->registerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    .line 64
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    .line 65
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lcom/mergbw/core/ui/BaseSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->listDiy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance p1, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    invoke-direct {p1}, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    .line 74
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->listDiy:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;->setClickListener(Lcom/mergbw/core/ui/adapter/IDIYItemClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setDIYListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 138
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/DeviceDetailViewModel1;->setSendDIYResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 140
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiyListBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiyListBinding;->layoutEmptyAdd:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetSelected()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYListFragment;->mAdapter:Lcom/mergbw/core/ui/adapter/DIYItemAdapter;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/mergbw/core/ui/adapter/DIYItemAdapter;->resetSelected()V

    :cond_0
    return-void
.end method
