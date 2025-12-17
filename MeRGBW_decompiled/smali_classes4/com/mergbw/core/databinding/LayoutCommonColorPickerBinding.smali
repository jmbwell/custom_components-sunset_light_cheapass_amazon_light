.class public final Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;
.super Ljava/lang/Object;
.source "LayoutCommonColorPickerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutClassicColor:Landroid/widget/LinearLayout;

.field public final layoutCommonColor:Landroid/widget/LinearLayout;

.field public final listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

.field public final listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

.field public final viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/mergbw/core/ui/views/LineColorPickerView;Ltop/defaults/colorpicker/ColorPickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "layoutClassicColor",
            "layoutCommonColor",
            "listClassicColor",
            "listCommonColor",
            "viewColorLine",
            "viewColorPie"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p2, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->layoutClassicColor:Landroid/widget/LinearLayout;

    .line 49
    iput-object p3, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->layoutCommonColor:Landroid/widget/LinearLayout;

    .line 50
    iput-object p4, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listClassicColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput-object p5, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->listCommonColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iput-object p6, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorLine:Lcom/mergbw/core/ui/views/LineColorPickerView;

    .line 53
    iput-object p7, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->viewColorPie:Ltop/defaults/colorpicker/ColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 83
    sget v0, Lcom/mergbw/core/R$id;->layout_classic_color:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 89
    sget v0, Lcom/mergbw/core/R$id;->layout_common_color:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 95
    sget v0, Lcom/mergbw/core/R$id;->list_classic_color:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 101
    sget v0, Lcom/mergbw/core/R$id;->list_common_color:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    .line 107
    sget v0, Lcom/mergbw/core/R$id;->view_color_line:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/mergbw/core/ui/views/LineColorPickerView;

    if-eqz v8, :cond_0

    .line 113
    sget v0, Lcom/mergbw/core/R$id;->view_color_pie:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ltop/defaults/colorpicker/ColorPickerView;

    if-eqz v9, :cond_0

    .line 119
    new-instance v0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/mergbw/core/ui/views/LineColorPickerView;Ltop/defaults/colorpicker/ColorPickerView;)V

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 70
    sget v0, Lcom/mergbw/core/R$layout;->layout_common_color_picker:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->bind(Landroid/view/View;)Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mergbw/core/databinding/LayoutCommonColorPickerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
