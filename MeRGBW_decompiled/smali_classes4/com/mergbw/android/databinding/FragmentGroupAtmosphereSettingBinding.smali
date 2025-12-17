.class public final Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;
.super Ljava/lang/Object;
.source "FragmentGroupAtmosphereSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutColorPie:Landroid/widget/LinearLayout;

.field public final listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

.field public final listScene:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvClassicColor:Landroid/widget/TextView;

.field public final viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/LineColorPickerView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->layoutColorPie:Landroid/widget/LinearLayout;

    .line 46
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    iput-object p4, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->listScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object p5, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->tvClassicColor:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;
    .locals 9

    .line 79
    sget v0, Lcom/mergbw/android/R$id;->layout_color_pie:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 85
    sget v0, Lcom/mergbw/android/R$id;->list_classic_color:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 91
    sget v0, Lcom/mergbw/android/R$id;->list_scene:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lcom/mergbw/android/R$id;->tv_classic_color:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lcom/mergbw/android/R$id;->view_color_line:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/mergbw/core/ui/views/LineColorPickerView;

    if-eqz v8, :cond_0

    .line 109
    new-instance v0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/LineColorPickerView;)V

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;
    .locals 2

    .line 66
    sget v0, Lcom/mergbw/android/R$layout;->fragment_group_atmosphere_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentGroupAtmosphereSettingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
