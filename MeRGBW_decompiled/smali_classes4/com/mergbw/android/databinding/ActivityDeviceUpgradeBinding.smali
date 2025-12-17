.class public final Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;
.super Ljava/lang/Object;
.source "ActivityDeviceUpgradeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnComplete:Landroid/widget/Button;

.field public final btnUpgrade:Landroid/widget/Button;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivCompleteCover:Landroid/widget/ImageView;

.field public final layoutBeforeUpgrade:Landroid/widget/LinearLayout;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutHint:Landroid/widget/LinearLayout;

.field public final layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvFirmwareVersion:Landroid/widget/TextView;

.field public final tvNewFirmware:Landroid/widget/TextView;

.field public final tvUpgradePercent:Landroid/widget/TextView;

.field public final tvUpgradeTick:Landroid/widget/TextView;

.field public final viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/android/ui/view/WaveProgressView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnComplete:Landroid/widget/Button;

    .line 75
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->btnUpgrade:Landroid/widget/Button;

    .line 76
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivBack:Landroid/widget/ImageView;

    .line 77
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->ivCompleteCover:Landroid/widget/ImageView;

    .line 78
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutBeforeUpgrade:Landroid/widget/LinearLayout;

    .line 79
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 80
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutHint:Landroid/widget/LinearLayout;

    .line 81
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    .line 83
    iput-object p11, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvNewFirmware:Landroid/widget/TextView;

    .line 84
    iput-object p12, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvUpgradePercent:Landroid/widget/TextView;

    .line 85
    iput-object p13, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->tvUpgradeTick:Landroid/widget/TextView;

    .line 86
    iput-object p14, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 116
    sget v1, Lcom/mergbw/android/R$id;->btn_complete:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 122
    sget v1, Lcom/mergbw/android/R$id;->btn_upgrade:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 128
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 134
    sget v1, Lcom/mergbw/android/R$id;->iv_complete_cover:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 140
    sget v1, Lcom/mergbw/android/R$id;->layout_before_upgrade:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 146
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 152
    sget v1, Lcom/mergbw/android/R$id;->layout_hint:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 158
    sget v1, Lcom/mergbw/android/R$id;->layout_upgrading:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v12, :cond_0

    .line 164
    sget v1, Lcom/mergbw/android/R$id;->tv_firmware_version:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 170
    sget v1, Lcom/mergbw/android/R$id;->tv_new_firmware:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 176
    sget v1, Lcom/mergbw/android/R$id;->tv_upgrade_percent:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 182
    sget v1, Lcom/mergbw/android/R$id;->tv_upgrade_tick:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 188
    sget v1, Lcom/mergbw/android/R$id;->view_progress:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/mergbw/android/ui/view/WaveProgressView;

    if-eqz v17, :cond_0

    .line 194
    new-instance v1, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/android/ui/view/WaveProgressView;)V

    return-object v1

    .line 198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;
    .locals 2

    .line 103
    sget v0, Lcom/mergbw/android/R$layout;->activity_device_upgrade:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityDeviceUpgradeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
