.class public Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DeviceInfoActivity.java"


# instance fields
.field private canUpgrade:Z

.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

.field private mHits:[J

.field private mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;


# direct methods
.method public static synthetic $r8$lambda$1xrNTALJE6IkO8JuzTYm_mrt_eg(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->onDeleteResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7nqzkLmXxHaXNP-9WilFxqgzN0(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->canUpgrade:Z

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private checkVersion(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 193
    const-string v0, "V04"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 195
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 196
    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-ge v2, v3, :cond_0

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->canUpgrade:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onDeleteResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->finish()V

    :cond_0
    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->setDeviceViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 134
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->initData(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->setDeleteResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvDeviceAlias:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 144
    sget v0, Lcom/mergbw/android/R$string;->firmware_text:I

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v3, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v3, v3, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareTick:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto/16 :goto_6

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_buble:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_6:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_sunlight:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_5:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_letter:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect:I

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_6

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_star:I

    goto :goto_4

    :cond_8
    sget p1, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_3:I

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_6

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/mergbw/core/R$mipmap;->icon_device_letter:I

    goto :goto_5

    :cond_a
    sget v1, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->checkVersion(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvLedNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getLedNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 157
    :cond_b
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->btnDeleteDevice:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutDeviceAlias:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Z)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-virtual {p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->deleteDevice()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Landroid/view/View;)V
    .locals 7

    .line 53
    new-instance p1, Lcom/mergbw/core/ui/views/ConfirmDialog;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->confirm:I

    .line 54
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/mergbw/android/R$string;->remove_device_tick:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 56
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 57
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/mergbw/core/ui/views/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V

    .line 62
    invoke-virtual {p1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->show()V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Landroid/view/View;)V
    .locals 8

    .line 65
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->set_alias:I

    .line 66
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    .line 67
    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 68
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 69
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$1;

    invoke-direct {v7, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$1;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 80
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Landroid/view/View;)V
    .locals 8

    .line 83
    new-instance p1, Lcom/mergbw/core/ui/views/EditPopWindow;

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/mergbw/android/R$string;->set_led_num:I

    .line 84
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvLedNum:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    .line 86
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 87
    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;

    invoke-direct {v7, p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity$2;-><init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;)V

    const/4 v6, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/mergbw/core/ui/views/EditPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V

    .line 113
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-android-ui-deviceInfo-DeviceInfoActivity(Landroid/view/View;)V
    .locals 6

    .line 116
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mHits:[J

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mHits:[J

    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 120
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mHits:[J

    aget-wide v0, p1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 121
    iget-boolean p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->canUpgrade:Z

    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-virtual {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->getCurrentDevice()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToDeviceUpgrade(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_0

    .line 124
    :cond_0
    sget p1, Lcom/mergbw/android/R$string;->current_is_new:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    .line 127
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mHits:[J

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    .line 42
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mViewModel:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->setContentView(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->initViews(Landroid/view/View;)V

    .line 45
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoActivity;->subscribeUI()V

    return-void
.end method
