.class public final Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;
.super Ljava/lang/Object;
.source "FragmentStarColorSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSave:Landroid/widget/Button;

.field public final ivStarBrightness:Landroid/widget/ImageView;

.field public final layoutClassicColor:Landroid/widget/LinearLayout;

.field public final layoutCommonColor:Landroid/widget/LinearLayout;

.field public final listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

.field public final listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

.field public final sbSpeed:Landroid/widget/SeekBar;

.field public final sbStarBrightness:Landroid/widget/SeekBar;

.field public final tvSpeed:Landroid/widget/TextView;

.field public final tvSpeedPercent:Landroid/widget/TextView;

.field public final tvStarBrightnessPercent:Landroid/widget/TextView;

.field public final viewStarColorPicker:Lcom/mergbw/core/ui/views/StarColorPickerView;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/StarColorPickerView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    .line 72
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->btnSave:Landroid/widget/Button;

    .line 73
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->ivStarBrightness:Landroid/widget/ImageView;

    .line 74
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->layoutClassicColor:Landroid/widget/LinearLayout;

    .line 75
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->layoutCommonColor:Landroid/widget/LinearLayout;

    .line 76
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    iput-object p7, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iput-object p8, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    .line 79
    iput-object p9, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->sbStarBrightness:Landroid/widget/SeekBar;

    .line 80
    iput-object p10, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvSpeed:Landroid/widget/TextView;

    .line 81
    iput-object p11, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvSpeedPercent:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->tvStarBrightnessPercent:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->viewStarColorPicker:Lcom/mergbw/core/ui/views/StarColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 113
    sget v1, Lcom/mergbw/android/R$id;->btn_save:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 119
    sget v1, Lcom/mergbw/android/R$id;->iv_star_brightness:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 125
    sget v1, Lcom/mergbw/android/R$id;->layout_classic_color:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 131
    sget v1, Lcom/mergbw/android/R$id;->layout_common_color:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 137
    sget v1, Lcom/mergbw/android/R$id;->list_classic_color:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 143
    sget v1, Lcom/mergbw/android/R$id;->list_common_color:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    .line 149
    sget v1, Lcom/mergbw/android/R$id;->sb_speed:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_0

    .line 155
    sget v1, Lcom/mergbw/android/R$id;->sb_star_brightness:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    .line 161
    sget v1, Lcom/mergbw/android/R$id;->tv_speed:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 167
    sget v1, Lcom/mergbw/android/R$id;->tv_speed_percent:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 173
    sget v1, Lcom/mergbw/android/R$id;->tv_star_brightness_percent:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 179
    sget v1, Lcom/mergbw/android/R$id;->view_star_color_picker:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/mergbw/core/ui/views/StarColorPickerView;

    if-eqz v16, :cond_0

    .line 185
    new-instance v1, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    move-object v4, v0

    check-cast v4, Lcom/mergbw/core/ui/views/CustomScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;-><init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/StarColorPickerView;)V

    return-object v1

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;
    .locals 2

    .line 100
    sget v0, Lcom/mergbw/android/R$layout;->fragment_star_color_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentStarColorSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    return-object v0
.end method
