.class public final Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;
.super Ljava/lang/Object;
.source "LayoutGroupDeviceListItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnConnect:Landroid/widget/Button;

.field public final cbItemCheck:Landroid/widget/CheckBox;

.field public final ivItemIcon:Landroid/widget/ImageView;

.field public final ivItemState:Landroid/widget/ImageView;

.field public final ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvItemModel:Landroid/widget/TextView;

.field public final tvItemName:Landroid/widget/TextView;

.field public final viewLoading:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 57
    iput-object p2, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->btnConnect:Landroid/widget/Button;

    .line 58
    iput-object p3, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->cbItemCheck:Landroid/widget/CheckBox;

    .line 59
    iput-object p4, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemState:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 62
    iput-object p7, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->tvItemModel:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->tvItemName:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;
    .locals 12

    .line 94
    sget v0, Lcom/mergbw/android/R$id;->btn_connect:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 100
    sget v0, Lcom/mergbw/android/R$id;->cb_item_check:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 106
    sget v0, Lcom/mergbw/android/R$id;->iv_item_icon:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 112
    sget v0, Lcom/mergbw/android/R$id;->iv_item_state:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 118
    sget v0, Lcom/mergbw/android/R$id;->iv_item_switch:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v8, :cond_0

    .line 124
    sget v0, Lcom/mergbw/android/R$id;->tv_item_model:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 130
    sget v0, Lcom/mergbw/android/R$id;->tv_item_name:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 136
    sget v0, Lcom/mergbw/android/R$id;->view_loading:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v11, :cond_0

    .line 142
    new-instance v0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;
    .locals 2

    .line 81
    sget v0, Lcom/mergbw/android/R$layout;->layout_group_device_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mergbw/android/databinding/LayoutGroupDeviceListItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
