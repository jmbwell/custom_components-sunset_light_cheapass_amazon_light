.class public final Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;
.super Ljava/lang/Object;
.source "ActivitySubColorSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAllCheck:Landroid/widget/TextView;

.field public final tvDeviceName:Landroid/widget/TextView;

.field public final tvSave:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

.field public final viewDivider:Landroid/view/View;

.field public final viewSubList:Lcom/mergbw/core/ui/views/SubListView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/CommonColorPickerView;Landroid/view/View;Lcom/mergbw/core/ui/views/SubListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "ivBack",
            "layoutHead",
            "tvAllCheck",
            "tvDeviceName",
            "tvSave",
            "tvTitle",
            "viewCommonColorPicker",
            "viewDivider",
            "viewSubList"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->ivBack:Landroid/widget/ImageView;

    .line 60
    iput-object p3, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p4, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvAllCheck:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvDeviceName:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvSave:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->tvTitle:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    .line 66
    iput-object p9, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewDivider:Landroid/view/View;

    .line 67
    iput-object p10, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 97
    sget v0, Lcom/mergbw/core/R$id;->iv_back:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 103
    sget v0, Lcom/mergbw/core/R$id;->layout_head:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 109
    sget v0, Lcom/mergbw/core/R$id;->tv_all_check:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 115
    sget v0, Lcom/mergbw/core/R$id;->tv_device_name:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 121
    sget v0, Lcom/mergbw/core/R$id;->tv_save:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 127
    sget v0, Lcom/mergbw/core/R$id;->tv_title:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 133
    sget v0, Lcom/mergbw/core/R$id;->view_common_color_picker:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/mergbw/core/ui/views/CommonColorPickerView;

    if-eqz v10, :cond_0

    .line 139
    sget v0, Lcom/mergbw/core/R$id;->view_divider:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 145
    sget v0, Lcom/mergbw/core/R$id;->view_sub_list:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/mergbw/core/ui/views/SubListView;

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/CommonColorPickerView;Landroid/view/View;Lcom/mergbw/core/ui/views/SubListView;)V

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;
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

    .line 78
    invoke-static {p0, v0, v1}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;
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

    .line 84
    sget v0, Lcom/mergbw/core/R$layout;->activity_sub_color_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/databinding/ActivitySubColorSettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
