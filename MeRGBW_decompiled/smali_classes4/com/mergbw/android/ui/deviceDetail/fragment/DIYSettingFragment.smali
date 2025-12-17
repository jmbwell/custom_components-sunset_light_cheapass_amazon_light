.class public Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "DIYSettingFragment.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-DIYSettingFragment(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 41
    sget p1, Lcom/mergbw/android/R$id;->rb_sub:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    .line 43
    :cond_0
    sget p1, Lcom/mergbw/android/R$id;->rb_diy:I

    if-ne p2, p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    .line 32
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1, p2}, Lcom/mergbw/core/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rgDiyType:Landroid/widget/RadioGroup;

    sget p2, Lcom/mergbw/android/R$id;->rb_sub:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 40
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rgDiyType:Landroid/widget/RadioGroup;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/adapter/DIYPageStateAdapter;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Lcom/mergbw/android/ui/deviceDetail/adapter/DIYPageStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment$1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/DIYSettingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method
