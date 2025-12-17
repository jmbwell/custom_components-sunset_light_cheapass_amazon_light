.class public final Lcom/mergbw/android/databinding/FragmentDiySettingBinding;
.super Ljava/lang/Object;
.source "FragmentDiySettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final listPage:Landroidx/viewpager2/widget/ViewPager2;

.field public final rbDiy:Landroid/widget/RadioButton;

.field public final rbSub:Landroid/widget/RadioButton;

.field public final rgDiyType:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rbDiy:Landroid/widget/RadioButton;

    .line 41
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rbSub:Landroid/widget/RadioButton;

    .line 42
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rgDiyType:Landroid/widget/RadioGroup;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;
    .locals 8

    .line 72
    sget v0, Lcom/mergbw/android/R$id;->list_page:I

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_0

    .line 78
    sget v0, Lcom/mergbw/android/R$id;->rb_diy:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v5, :cond_0

    .line 84
    sget v0, Lcom/mergbw/android/R$id;->rb_sub:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_0

    .line 90
    sget v0, Lcom/mergbw/android/R$id;->rg_diy_type:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioGroup;

    if-eqz v7, :cond_0

    .line 96
    new-instance v0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;
    .locals 2

    .line 59
    sget v0, Lcom/mergbw/android/R$layout;->fragment_diy_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentDiySettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentDiySettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
