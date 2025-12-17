.class public Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "GroupColorSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "54782C38-0B9C-4758-8341-AEA6938F1B15"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

.field private mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$W-gilGFrSdHQC49AZkb4lR2h_nY(Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->updateCommonColor(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private updateCommonColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setCommonColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-groupDetail-fragment-GroupColorSettingFragment(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setRGBColor(I)V

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "54782C38-0B9C-4758-8341-AEA6938F1B15"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-groupDetail-fragment-GroupColorSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->saveSingleColor()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    .line 39
    invoke-virtual {p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/groupDetail/GroupDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    .line 40
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setOnColorPickListener(Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->btnSave:Landroid/widget/Button;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    new-instance p2, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/groupDetail/fragment/GroupColorSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
