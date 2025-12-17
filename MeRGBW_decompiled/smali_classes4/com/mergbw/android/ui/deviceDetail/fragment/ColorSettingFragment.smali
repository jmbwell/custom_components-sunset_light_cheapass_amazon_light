.class public Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;
.super Lcom/mergbw/core/ui/BaseFragment;
.source "ColorSettingFragment.java"


# static fields
.field private static final CHILD_FRAGMENT_UUID:Ljava/lang/String; = "828A3A67-AA80-4FE8-ADEE-425DFB870364"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

.field private mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;


# direct methods
.method public static synthetic $r8$lambda$OGebHhEIptpcpyWw6tdrWlvWkM0(Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->updateCommonColor(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, v0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setCommonColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onViewCreated$0$com-mergbw-android-ui-deviceDetail-fragment-ColorSettingFragment(I)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setColor(I)V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "SCENE_CHANGED"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "828A3A67-AA80-4FE8-ADEE-425DFB870364"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-mergbw-android-ui-deviceDetail-fragment-ColorSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->saveSingleColor()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    .line 41
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceDetail/DeviceDetailActivity;->getCurrentViewModel()Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    .line 42
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;)V

    invoke-virtual {p1, p2}, Lcom/mergbw/core/ui/views/CommonColorPickerView;->setOnColorPickListener(Lcom/mergbw/core/ui/views/CommonColorPickerView$OnColorPickListener;)V

    .line 51
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mBinding:Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->btnSave:Landroid/widget/Button;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;->mViewModel:Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;

    new-instance p2, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceDetail/fragment/ColorSettingFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/mergbw/android/ui/deviceDetail/viewModel/BaseDeviceDetailViewModel;->setCommonColorListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
