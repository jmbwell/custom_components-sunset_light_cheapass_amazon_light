.class public final Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;
.super Ljava/lang/Object;
.source "ActivityFirstCheckPrivacyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAccept:Landroid/widget/Button;

.field public final btnRefuse:Landroid/widget/Button;

.field public final ivAcceptPrivacy:Landroid/widget/ImageView;

.field public final ivLogo:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvPrivacyAgreement:Landroid/widget/TextView;

.field public final tvPrivacyHint:Landroid/widget/TextView;

.field public final tvUserAgreement:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->btnAccept:Landroid/widget/Button;

    .line 51
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->btnRefuse:Landroid/widget/Button;

    .line 52
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->ivAcceptPrivacy:Landroid/widget/ImageView;

    .line 53
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->ivLogo:Landroid/widget/ImageView;

    .line 54
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvPrivacyAgreement:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvPrivacyHint:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->tvUserAgreement:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;
    .locals 11

    .line 86
    sget v0, Lcom/mergbw/android/R$id;->btn_accept:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Lcom/mergbw/android/R$id;->btn_refuse:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/mergbw/android/R$id;->iv_accept_privacy:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 104
    sget v0, Lcom/mergbw/android/R$id;->iv_logo:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 110
    sget v0, Lcom/mergbw/android/R$id;->tv_privacy_agreement:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 116
    sget v0, Lcom/mergbw/android/R$id;->tv_privacy_hint:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 122
    sget v0, Lcom/mergbw/android/R$id;->tv_user_agreement:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 128
    new-instance v0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;
    .locals 2

    .line 73
    sget v0, Lcom/mergbw/android/R$layout;->activity_first_check_privacy:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityFirstCheckPrivacyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
