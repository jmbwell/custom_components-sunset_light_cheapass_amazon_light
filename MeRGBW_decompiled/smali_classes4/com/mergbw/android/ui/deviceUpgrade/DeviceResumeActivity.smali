.class public Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DeviceResumeActivity.java"

# interfaces
.implements Lcom/ota66/sdk/firware/UpdateFirewareCallBack;


# instance fields
.field private mAdapter:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

.field private mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

.field private mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;


# direct methods
.method public static synthetic $r8$lambda$3ZbDqe_l2KgW5DuQkmCqmCxs4Uc(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->updateRecordList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->cancelScan()V

    return-void
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->startOTA(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method private cancelScan()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getScanSate()Lcom/clj/fastble/data/BleScanState;

    move-result-object v0

    sget-object v1, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    if-ne v0, v1, :cond_0

    .line 115
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V

    :cond_0
    return-void
.end method

.method private scanDevice()V
    .locals 2

    .line 88
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    .line 90
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V

    return-void
.end method

.method private startOTA(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 121
    sget-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE:Ljava/util/Map;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE_02:Ljava/util/Map;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    :cond_0
    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->onError(I)V

    return-void

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firmware file path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/ota66/sdk/OTASDKUtils;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/ota66/sdk/OTASDKUtils;-><init>(Landroid/content/Context;Lcom/ota66/sdk/firware/UpdateFirewareCallBack;)V

    .line 133
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->updateFirware(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mAdapter:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->listRecord:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance p1, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    invoke-direct {p1}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mAdapter:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    .line 61
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->listRecord:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mAdapter:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mAdapter:Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/deviceUpgrade/adapter/ErrorRecordAdapter;->setClickListener(Lcom/mergbw/android/ui/deviceUpgrade/adapter/IRecordListClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutRecord:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutResume:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->setErrorRecordListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnUpgrade:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnComplete:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutRecord:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutResume:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->showWaitDialog()V

    .line 76
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->scanDevice()V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onProcess$4$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity(F)V
    .locals 6

    .line 147
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->hideWaitDialog()V

    .line 148
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutBeforeUpgrade:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnUpgrade:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    const/high16 v3, 0x42c80000    # 100.0f

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    sub-float v4, v3, p1

    invoke-static {v4}, Lcom/mergbw/core/utils/UIUtils;->dp2px(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mergbw/android/ui/view/WaveProgressView;->setWaveHeight(F)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    float-to-int v4, p1

    invoke-virtual {v0, v4}, Lcom/mergbw/android/ui/view/WaveProgressView;->setProgress(I)V

    .line 159
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->tvUpgradePercent:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    invoke-virtual {p1, v2}, Lcom/mergbw/android/ui/view/WaveProgressView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivCompleteCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method synthetic lambda$onUpdateComplete$5$com-mergbw-android-ui-deviceUpgrade-DeviceResumeActivity()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnComplete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutHint:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->tvUpgradeTick:Landroid/widget/TextView;

    sget v1, Lcom/mergbw/android/R$string;->resume_success:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    .line 49
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->setContentView(Landroid/view/View;)V

    .line 50
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    .line 51
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "errorRecord"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->initViews(Landroid/view/View;)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceUpgradeActivity upgrade onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 139
    new-instance p1, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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
    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;F)V

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateComplete()V
    .locals 2

    .line 170
    const-string v0, "DeviceUpgradeActivity upgrade onUpdateComplete"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mViewModel:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->deleteErrorRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V

    .line 173
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->mCurrentRecord:Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
