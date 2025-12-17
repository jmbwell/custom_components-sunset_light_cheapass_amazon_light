.class public final Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;
.super Ljava/lang/Object;
.source "FragmentAtmosphereSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBrightnessMax:Landroid/widget/ImageView;

.field public final ivBrightnessMin:Landroid/widget/ImageView;

.field public final layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutColorPie:Landroid/widget/LinearLayout;

.field public final listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

.field public final listScene:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

.field public final sbBrightness:Landroid/widget/SeekBar;

.field public final tvClassicColor:Landroid/widget/TextView;

.field public final viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    .line 62
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->ivBrightnessMax:Landroid/widget/ImageView;

    .line 63
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->ivBrightnessMin:Landroid/widget/ImageView;

    .line 64
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->layoutColorPie:Landroid/widget/LinearLayout;

    .line 66
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p8, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->sbBrightness:Landroid/widget/SeekBar;

    .line 69
    iput-object p9, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->tvClassicColor:Landroid/widget/TextView;

    .line 70
    iput-object p10, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;
    .locals 13

    .line 100
    sget v0, Lcom/mergbw/android/R$id;->iv_brightness_max:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 106
    sget v0, Lcom/mergbw/android/R$id;->iv_brightness_min:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 112
    sget v0, Lcom/mergbw/android/R$id;->layout_brightness:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 118
    sget v0, Lcom/mergbw/android/R$id;->layout_color_pie:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 124
    sget v0, Lcom/mergbw/android/R$id;->list_classic_color:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    .line 130
    sget v0, Lcom/mergbw/android/R$id;->list_scene:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 136
    sget v0, Lcom/mergbw/android/R$id;->sb_brightness:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    .line 142
    sget v0, Lcom/mergbw/android/R$id;->tv_classic_color:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 148
    sget v0, Lcom/mergbw/android/R$id;->view_color_line:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/mergbw/core/ui/views/LineColorPickerView;

    if-eqz v12, :cond_0

    .line 154
    new-instance v0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    move-object v3, p0

    check-cast v3, Lcom/mergbw/core/ui/views/CustomScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;-><init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;
    .locals 2

    .line 87
    sget v0, Lcom/mergbw/android/R$layout;->fragment_atmosphere_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentAtmosphereSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    return-object v0
.end method
