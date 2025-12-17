.class public Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;
.super Lcom/mergbw/core/ui/BaseBluetoothActivity;
.source "AddDeviceActivity.java"

# interfaces
.implements Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;


# instance fields
.field private mAdapter:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

.field private mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

.field private mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;


# direct methods
.method public static synthetic $r8$lambda$_OUVcRxFRUBcl6Z7bpIh2qDpClQ(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    return-object p0
.end method

.method private addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showAliasPop(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showConnectingDialog()V

    .line 74
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :goto_1
    return-void
.end method

.method private showAliasPop(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 9

    .line 129
    new-instance v8, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->set_alias:I

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/mergbw/core/R$string;->skip:I

    .line 131
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/mergbw/core/R$string;->done:I

    .line 132
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$1;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 146
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method


# virtual methods
.method protected bluetoothReady()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->scanDevice()V

    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->initViews(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance p1, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)V

    invoke-direct {p1, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter$DeviceItemClickCallback;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mAdapter:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->listDevice:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mAdapter:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->btnScanAgain:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-addDevice-AddDeviceActivity(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-addDevice-AddDeviceActivity(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutDeviceList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutSearch:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->scanDevice()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    .line 34
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    .line 35
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->setContentView(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->initViews(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {p1, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->setViewListener(Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;)V

    .line 38
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseBluetoothActivity;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mViewModel:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->cancelScan()V

    return-void
.end method

.method public updateAddResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    sget p1, Lcom/mergbw/android/R$string;->add_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showToast(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->finish()V

    :cond_0
    return-void
.end method

.method public updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->hideConnectingDialog()V

    .line 116
    sget-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->UNBIND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    if-ne p2, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showBindDialog()V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/mergbw/android/ui/addDevice/BindStatus;->BOUND:Lcom/mergbw/android/ui/addDevice/BindStatus;

    if-ne p2, v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->hideBindDialog()V

    .line 121
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showAliasPop(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->hideBindDialog()V

    .line 124
    sget p1, Lcom/mergbw/android/R$string;->add_failed:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateDeviceList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mAdapter:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->setData(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mAdapter:Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceAdapter;->notifyDataSetInvalidated()V

    .line 85
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutDeviceList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutSearch:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 90
    sget v0, Lcom/mergbw/android/R$string;->add_device_tick_03:I

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->tvScanTick:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateScanResult(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutDeviceList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutSearch:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method
