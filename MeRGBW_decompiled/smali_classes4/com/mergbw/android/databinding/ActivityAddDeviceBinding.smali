.class public final Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;
.super Ljava/lang/Object;
.source "ActivityAddDeviceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnScanAgain:Landroid/widget/Button;

.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutDeviceList:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutNoDevice:Landroid/widget/LinearLayout;

.field public final layoutSearch:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final listDevice:Landroid/widget/ListView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvScanHint:Landroid/widget/TextView;

.field public final tvScanTick:Landroid/widget/TextView;

.field public final viewLoading:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->btnScanAgain:Landroid/widget/Button;

    .line 66
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->ivBack:Landroid/widget/ImageView;

    .line 67
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutDeviceList:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    .line 70
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->layoutSearch:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->listDevice:Landroid/widget/ListView;

    .line 72
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->tvScanHint:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->tvScanTick:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;
    .locals 14

    .line 104
    sget v0, Lcom/mergbw/android/R$id;->btn_scan_again:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 110
    sget v0, Lcom/mergbw/android/R$id;->iv_back:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 116
    sget v0, Lcom/mergbw/android/R$id;->layout_device_list:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 122
    sget v0, Lcom/mergbw/android/R$id;->layout_head:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 128
    sget v0, Lcom/mergbw/android/R$id;->layout_no_device:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 134
    sget v0, Lcom/mergbw/android/R$id;->layout_search:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 140
    sget v0, Lcom/mergbw/android/R$id;->list_device:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ListView;

    if-eqz v10, :cond_0

    .line 146
    sget v0, Lcom/mergbw/android/R$id;->tv_scan_hint:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 152
    sget v0, Lcom/mergbw/android/R$id;->tv_scan_tick:I

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 158
    sget v0, Lcom/mergbw/android/R$id;->view_loading:I

    .line 159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v13, :cond_0

    .line 164
    new-instance v0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;
    .locals 2

    .line 91
    sget v0, Lcom/mergbw/android/R$layout;->activity_add_device:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityAddDeviceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
