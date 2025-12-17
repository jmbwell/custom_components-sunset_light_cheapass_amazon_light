.class public final Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;
.super Ljava/lang/Object;
.source "LayoutDeviceListItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivItemIcon:Landroid/widget/ImageView;

.field public final ivItemState:Landroid/widget/ImageView;

.field public final ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvItemModel:Landroid/widget/TextView;

.field public final tvItemName:Landroid/widget/TextView;

.field public final tvSwitchState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 47
    iput-object p2, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->ivItemIcon:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->ivItemState:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 50
    iput-object p5, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->tvItemModel:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->tvItemName:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->tvSwitchState:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;
    .locals 10

    .line 82
    sget v0, Lcom/mergbw/android/R$id;->iv_item_icon:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/mergbw/android/R$id;->iv_item_state:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/mergbw/android/R$id;->iv_item_switch:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lcom/mergbw/android/R$id;->tv_item_model:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Lcom/mergbw/android/R$id;->tv_item_name:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lcom/mergbw/android/R$id;->tv_switch_state:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;
    .locals 2

    .line 69
    sget v0, Lcom/mergbw/android/R$layout;->layout_device_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/databinding/LayoutDeviceListItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
