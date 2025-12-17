.class public final Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;
.super Ljava/lang/Object;
.source "ActivityFactoryAreaBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final ivFactoryLogo:Landroid/widget/ImageView;

.field public final ivSite:Landroid/widget/ImageView;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutSiteList:Landroid/widget/LinearLayout;

.field public final listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvFactoryName:Landroid/widget/TextView;

.field public final viewBanner:Lcom/youth/banner/Banner;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/youth/banner/Banner;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivBack:Landroid/widget/ImageView;

    .line 57
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivFactoryLogo:Landroid/widget/ImageView;

    .line 58
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->ivSite:Landroid/widget/ImageView;

    .line 59
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->layoutSiteList:Landroid/widget/LinearLayout;

    .line 61
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->listNewProduct:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->tvFactoryName:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->viewBanner:Lcom/youth/banner/Banner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;
    .locals 12

    .line 93
    sget v0, Lcom/mergbw/android/R$id;->iv_back:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 99
    sget v0, Lcom/mergbw/android/R$id;->iv_factory_logo:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 105
    sget v0, Lcom/mergbw/android/R$id;->iv_site:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 111
    sget v0, Lcom/mergbw/android/R$id;->layout_head:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 117
    sget v0, Lcom/mergbw/android/R$id;->layout_site_list:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 123
    sget v0, Lcom/mergbw/android/R$id;->list_new_product:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 129
    sget v0, Lcom/mergbw/android/R$id;->tv_factory_name:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 135
    sget v0, Lcom/mergbw/android/R$id;->view_banner:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/youth/banner/Banner;

    if-eqz v11, :cond_0

    .line 141
    new-instance v0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/youth/banner/Banner;)V

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;
    .locals 2

    .line 80
    sget v0, Lcom/mergbw/android/R$layout;->activity_factory_area:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityFactoryAreaBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
