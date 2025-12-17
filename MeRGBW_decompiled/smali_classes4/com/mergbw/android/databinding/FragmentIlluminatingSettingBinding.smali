.class public final Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;
.super Ljava/lang/Object;
.source "FragmentIlluminatingSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBrightnessMax:Landroid/widget/ImageView;

.field public final ivBrightnessMin:Landroid/widget/ImageView;

.field public final layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

.field public final listScene:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

.field public final sbBrightness:Landroid/widget/SeekBar;

.field public final viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    .line 53
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->ivBrightnessMax:Landroid/widget/ImageView;

    .line 54
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->ivBrightnessMin:Landroid/widget/ImageView;

    .line 55
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    .line 59
    iput-object p8, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;
    .locals 11

    .line 89
    sget v0, Lcom/mergbw/android/R$id;->iv_brightness_max:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lcom/mergbw/android/R$id;->iv_brightness_min:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 101
    sget v0, Lcom/mergbw/android/R$id;->layout_brightness:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 107
    sget v0, Lcom/mergbw/android/R$id;->list_classic_color:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 113
    sget v0, Lcom/mergbw/android/R$id;->list_scene:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 119
    sget v0, Lcom/mergbw/android/R$id;->sb_brightness:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_0

    .line 125
    sget v0, Lcom/mergbw/android/R$id;->view_color_line:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/mergbw/core/ui/views/LineColorPickerView;

    if-eqz v10, :cond_0

    .line 131
    new-instance v0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    move-object v3, p0

    check-cast v3, Lcom/mergbw/core/ui/views/CustomScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;-><init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;
    .locals 2

    .line 76
    sget v0, Lcom/mergbw/android/R$layout;->fragment_illuminating_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentIlluminatingSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    return-object v0
.end method
