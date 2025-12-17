.class public final Lcom/mergbw/android/databinding/FragmentUserPageBinding;
.super Ljava/lang/Object;
.source "FragmentUserPageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivAvtar:Landroid/widget/ImageView;

.field public final ivItem1:Landroid/widget/ImageView;

.field public final ivItem2:Landroid/widget/ImageView;

.field public final ivItem3:Landroid/widget/ImageView;

.field public final layoutAbout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutContactUs:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutLogin:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutUserManual:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvUsername:Landroid/widget/TextView;

.field public final tvVersion:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->rootView:Landroid/widget/FrameLayout;

    .line 60
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->ivAvtar:Landroid/widget/ImageView;

    .line 61
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->ivItem1:Landroid/widget/ImageView;

    .line 62
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->ivItem2:Landroid/widget/ImageView;

    .line 63
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->ivItem3:Landroid/widget/ImageView;

    .line 64
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutAbout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutContactUs:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    iput-object p8, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutLogin:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    iput-object p9, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->layoutUserManual:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p10, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvUsername:Landroid/widget/TextView;

    .line 69
    iput-object p11, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->tvVersion:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;
    .locals 14

    .line 99
    sget v0, Lcom/mergbw/android/R$id;->iv_avtar:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lcom/mergbw/android/R$id;->iv_item_1:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lcom/mergbw/android/R$id;->iv_item_2:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lcom/mergbw/android/R$id;->iv_item_3:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lcom/mergbw/android/R$id;->layout_about:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lcom/mergbw/android/R$id;->layout_contact_us:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lcom/mergbw/android/R$id;->layout_login:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lcom/mergbw/android/R$id;->layout_user_manual:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lcom/mergbw/android/R$id;->tv_username:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 153
    sget v0, Lcom/mergbw/android/R$id;->tv_version:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 159
    new-instance v0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentUserPageBinding;
    .locals 2

    .line 86
    sget v0, Lcom/mergbw/android/R$layout;->fragment_user_page:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentUserPageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentUserPageBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
