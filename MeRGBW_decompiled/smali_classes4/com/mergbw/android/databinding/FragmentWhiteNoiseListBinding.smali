.class public final Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;
.super Ljava/lang/Object;
.source "FragmentWhiteNoiseListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutOffTime:Landroid/widget/LinearLayout;

.field public final layoutTimer:Landroid/widget/LinearLayout;

.field public final listNoise:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final switchOff:Landroidx/appcompat/widget/SwitchCompat;

.field public final tvOffTime:Landroid/widget/TextView;

.field public final tvOffTimeStr:Landroid/widget/TextView;

.field public final tvOffTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->layoutOffTime:Landroid/widget/LinearLayout;

    .line 52
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->layoutTimer:Landroid/widget/LinearLayout;

    .line 53
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->listNoise:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->switchOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 55
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTime:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTimeStr:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->tvOffTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;
    .locals 11

    .line 87
    sget v0, Lcom/mergbw/android/R$id;->layout_off_time:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 93
    sget v0, Lcom/mergbw/android/R$id;->layout_timer:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 99
    sget v0, Lcom/mergbw/android/R$id;->list_noise:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 105
    sget v0, Lcom/mergbw/android/R$id;->switch_off:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v7, :cond_0

    .line 111
    sget v0, Lcom/mergbw/android/R$id;->tv_off_time:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 117
    sget v0, Lcom/mergbw/android/R$id;->tv_off_time_str:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 123
    sget v0, Lcom/mergbw/android/R$id;->tv_off_title:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 129
    new-instance v0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;
    .locals 2

    .line 74
    sget v0, Lcom/mergbw/android/R$layout;->fragment_white_noise_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentWhiteNoiseListBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
