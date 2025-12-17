.class public Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DeviceUpgradeActivity.java"

# interfaces
.implements Lcom/ota66/sdk/firware/UpdateFirewareCallBack;


# instance fields
.field private isUpgrading:Z

.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

.field private mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;


# direct methods
.method public static synthetic $r8$lambda$3uIqlpaYDlNVL_AICoavzacDPPc(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OivQ5R1dbBbKBc2E6iaYrjoryy0(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/ble/BleStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->isUpgrading:Z

    return-void
.end method

.method private onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    if-ne p1, v0, :cond_3

    .line 83
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/ble/RGBDeviceManager;->isUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iget-boolean p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->isUpgrading:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->isUpgrading:Z

    .line 87
    sget-object p1, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE:Ljava/util/Map;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object p1, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE_02:Ljava/util/Map;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->onError(I)V

    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "firmware file path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/ota66/sdk/OTASDKUtils;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/ota66/sdk/OTASDKUtils;-><init>(Landroid/content/Context;Lcom/ota66/sdk/firware/UpdateFirewareCallBack;)V

    .line 99
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ota66/sdk/OTASDKUtils;->updateFirware(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private startOTA()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->setUpgrade(Z)V

    .line 78
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->disconnectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->setDeviceViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->initData(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->setConnectStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/mergbw/android/R$string;->current_version:I

    invoke-virtual {p0, v2}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFirmwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnUpgrade:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnComplete:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvNewFirmware:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/mergbw/android/R$string;->last_version:I

    invoke-virtual {p0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "V04"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->showWaitDialog()V

    .line 59
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->startOTA()V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onError$3$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;Z)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 134
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceResume(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onError$4$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 8

    .line 126
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->hideWaitDialog()V

    .line 127
    new-instance v7, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->upgrade_failed:I

    .line 128
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/mergbw/android/R$string;->upgrade_failed_sul:I

    .line 129
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 130
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/mergbw/android/R$string;->start_resume:I

    .line 131
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 138
    invoke-virtual {v7}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    return-void
.end method

.method synthetic lambda$onProcess$5$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity(F)V
    .locals 6

    .line 147
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->hideWaitDialog()V

    .line 148
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutBeforeUpgrade:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnUpgrade:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    const/high16 v3, 0x42c80000    # 100.0f

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    sub-float v4, v3, p1

    invoke-static {v4}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mergbw/android/ui/view/WaveProgressView;->setWaveHeight(F)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    float-to-int v4, p1

    invoke-virtual {v0, v4}, Lcom/mergbw/android/ui/view/WaveProgressView;->setProgress(I)V

    .line 159
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvUpgradePercent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    invoke-virtual {p1, v2}, Lcom/mergbw/android/ui/view/WaveProgressView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivCompleteCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method synthetic lambda$onUpdateComplete$6$com-mergbw-android-ui-deviceUpgrade-DeviceUpgradeActivity()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnComplete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutHint:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvUpgradeTick:Landroid/widget/TextView;

    sget v1, Lcom/mergbw/android/R$string;->upgrade_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    .line 46
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->setContentView(Landroid/view/View;)V

    .line 47
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->initViews(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->subscribeUI()V

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceUpgradeActivity upgrade onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->setUpgrade(Z)V

    .line 111
    iput-boolean v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->isUpgrading:Z

    .line 113
    new-instance v0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceName(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceType(I)V

    .line 116
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setDeviceModel(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setFactoryID(I)V

    .line 118
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setAliasName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setErrorCode(I)V

    .line 120
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->setRecordTime(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->addErrorRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    .line 125
    new-instance p1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcess(F)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceUpgradeActivity upgrade onProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;F)V

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateComplete()V
    .locals 2

    .line 170
    const-string v0, "DeviceUpgradeActivity upgrade onUpdateComplete"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->setUpgrade(Z)V

    .line 172
    iput-boolean v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->isUpgrading:Z

    .line 174
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 175
    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;)V

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
