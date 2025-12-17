.class public final Lcom/mergbw/android/databinding/FragmentDeviceListBinding;
.super Ljava/lang/Object;
.source "FragmentDeviceListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddDevice:Landroid/widget/Button;

.field public final layoutNoDevice:Landroid/widget/LinearLayout;

.field public final listDevice:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->btnAddDevice:Landroid/widget/Button;

    .line 37
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->layoutNoDevice:Landroid/widget/LinearLayout;

    .line 38
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;
    .locals 4

    .line 68
    sget v0, Lcom/mergbw/android/R$id;->btn_add_device:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lcom/mergbw/android/R$id;->layout_no_device:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lcom/mergbw/android/R$id;->list_device:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;
    .locals 2

    .line 55
    sget v0, Lcom/mergbw/android/R$layout;->fragment_device_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentDeviceListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentDeviceListBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
