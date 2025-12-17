.class public final Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;
.super Ljava/lang/Object;
.source "ActivityDeviceInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDeleteDevice:Landroid/widget/Button;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivDeviceIcon:Landroid/widget/ImageView;

.field public final layoutDeviceAlias:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAliasTitle:Landroid/widget/TextView;

.field public final tvDeviceAlias:Landroid/widget/TextView;

.field public final tvDeviceName:Landroid/widget/TextView;

.field public final tvFirmwareTick:Landroid/widget/TextView;

.field public final tvFirmwareVersion:Landroid/widget/TextView;

.field public final tvLedNum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->btnDeleteDevice:Landroid/widget/Button;

    .line 73
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivBack:Landroid/widget/ImageView;

    .line 74
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->ivDeviceIcon:Landroid/widget/ImageView;

    .line 75
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutDeviceAlias:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutFirmwareUpdate:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->layoutLedNum:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvAliasTitle:Landroid/widget/TextView;

    .line 80
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvDeviceAlias:Landroid/widget/TextView;

    .line 81
    iput-object p11, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvDeviceName:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareTick:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvFirmwareVersion:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->tvLedNum:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 114
    sget v1, Lcom/mergbw/android/R$id;->btn_delete_device:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 120
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 126
    sget v1, Lcom/mergbw/android/R$id;->iv_device_icon:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 132
    sget v1, Lcom/mergbw/android/R$id;->layout_device_alias:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 138
    sget v1, Lcom/mergbw/android/R$id;->layout_firmware_update:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 144
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 150
    sget v1, Lcom/mergbw/android/R$id;->layout_led_num:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 156
    sget v1, Lcom/mergbw/android/R$id;->tv_alias_title:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 162
    sget v1, Lcom/mergbw/android/R$id;->tv_device_alias:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 168
    sget v1, Lcom/mergbw/android/R$id;->tv_device_name:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 174
    sget v1, Lcom/mergbw/android/R$id;->tv_firmware_tick:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 180
    sget v1, Lcom/mergbw/android/R$id;->tv_firmware_version:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 186
    sget v1, Lcom/mergbw/android/R$id;->tv_led_num:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 192
    new-instance v1, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;
    .locals 2

    .line 101
    sget v0, Lcom/mergbw/android/R$layout;->activity_device_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityDeviceInfoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
