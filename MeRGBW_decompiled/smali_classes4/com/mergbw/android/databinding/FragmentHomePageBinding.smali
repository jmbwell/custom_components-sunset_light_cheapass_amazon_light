.class public final Lcom/mergbw/android/databinding/FragmentHomePageBinding;
.super Ljava/lang/Object;
.source "FragmentHomePageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivAdd:Landroid/widget/ImageView;

.field public final ivIcon:Landroid/widget/ImageView;

.field public final layoutChildContent:Landroid/widget/FrameLayout;

.field public final rbDevice:Landroid/widget/RadioButton;

.field public final rbGroup:Landroid/widget/RadioButton;

.field public final rgTitleBar:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivAdd:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->ivIcon:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->layoutChildContent:Landroid/widget/FrameLayout;

    .line 50
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rbDevice:Landroid/widget/RadioButton;

    .line 51
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rbGroup:Landroid/widget/RadioButton;

    .line 52
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rgTitleBar:Landroid/widget/RadioGroup;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentHomePageBinding;
    .locals 10

    .line 82
    sget v0, Lcom/mergbw/android/R$id;->iv_add:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lcom/mergbw/android/R$id;->iv_icon:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lcom/mergbw/android/R$id;->layout_child_content:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lcom/mergbw/android/R$id;->rb_device:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Lcom/mergbw/android/R$id;->rb_group:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lcom/mergbw/android/R$id;->rg_title_bar:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioGroup;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentHomePageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentHomePageBinding;
    .locals 2

    .line 69
    sget v0, Lcom/mergbw/android/R$layout;->fragment_home_page:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentHomePageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentHomePageBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
