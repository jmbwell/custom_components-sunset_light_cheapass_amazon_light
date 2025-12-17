.class public Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "SceneMultiListFragment.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

.field private mGroupAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;)Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mGroupAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-SceneMultiListFragment(ILcom/mergbw/core/bean/SceneGroupData;)V
    .locals 1

    .line 49
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    .line 39
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 45
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 47
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->listSceneType:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mGroupAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    .line 49
    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceDetail/adapter/ISceneGroupClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->listSceneType:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mGroupAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    new-instance p1, Lcom/mergbw/android/ui/deviceDetail/adapter/ScenePageStateAdapter;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/ScenePageStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 53
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;

    iget-object p2, p2, Lcom/mergbw/android/databinding/FragmentSceneSettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 62
    invoke-static {}, Lcom/mergbw/core/utils/ViewDataUtils;->getSceneData()Ljava/util/List;

    move-result-object p2

    .line 63
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/SceneMultiListFragment;->mGroupAdapter:Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;

    invoke-virtual {v0, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/SceneGroupAdapter;->setData(Ljava/util/List;)V

    .line 64
    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceDetail/adapter/ScenePageStateAdapter;->setPageList(Ljava/util/List;)V

    return-void
.end method
