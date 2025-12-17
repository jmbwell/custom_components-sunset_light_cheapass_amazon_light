.class public final Lcom/mergbw/core/databinding/ActivityDiySettingBinding;
.super Ljava/lang/Object;
.source "ActivityDiySettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutEffect:Landroid/widget/LinearLayout;

.field public final layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutSubItem:Landroid/widget/LinearLayout;

.field public final listSubItem:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sbSpeed:Landroid/widget/SeekBar;

.field public final tvAllCheck:Landroid/widget/TextView;

.field public final tvDeviceName:Landroid/widget/TextView;

.field public final tvEffect:Landroid/widget/TextView;

.field public final tvSave:Landroid/widget/TextView;

.field public final tvSpeed:Landroid/widget/TextView;

.field public final tvSpeedValue:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

.field public final viewSubList:Lcom/mergbw/core/ui/views/SubListView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/CommonColorPickerView;Lcom/mergbw/core/ui/views/SubListView;)V
    .locals 2
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
            "layoutEffect",
            "layoutHead",
            "layoutSubItem",
            "listSubItem",
            "sbSpeed",
            "tvAllCheck",
            "tvDeviceName",
            "tvEffect",
            "tvSave",
            "tvSpeed",
            "tvSpeedValue",
            "tvTitle",
            "viewCommonColorPicker",
            "viewSubList"
        }
    .end annotation

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->layoutEffect:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->layoutSubItem:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->listSubItem:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->sbSpeed:Landroid/widget/SeekBar;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvAllCheck:Landroid/widget/TextView;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvDeviceName:Landroid/widget/TextView;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvEffect:Landroid/widget/TextView;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSave:Landroid/widget/TextView;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSpeed:Landroid/widget/TextView;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvSpeedValue:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->viewSubList:Lcom/mergbw/core/ui/views/SubListView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 125
    sget v1, Lcom/mergbw/core/R$id;->iv_back:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 131
    sget v1, Lcom/mergbw/core/R$id;->layout_effect:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 137
    sget v1, Lcom/mergbw/core/R$id;->layout_head:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 143
    sget v1, Lcom/mergbw/core/R$id;->layout_sub_item:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 149
    sget v1, Lcom/mergbw/core/R$id;->list_sub_item:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 155
    sget v1, Lcom/mergbw/core/R$id;->sb_speed:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    .line 161
    sget v1, Lcom/mergbw/core/R$id;->tv_all_check:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 167
    sget v1, Lcom/mergbw/core/R$id;->tv_device_name:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 173
    sget v1, Lcom/mergbw/core/R$id;->tv_effect:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 179
    sget v1, Lcom/mergbw/core/R$id;->tv_save:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 185
    sget v1, Lcom/mergbw/core/R$id;->tv_speed:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 191
    sget v1, Lcom/mergbw/core/R$id;->tv_speed_value:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 197
    sget v1, Lcom/mergbw/core/R$id;->tv_title:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 203
    sget v1, Lcom/mergbw/core/R$id;->view_common_color_picker:I

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/mergbw/core/ui/views/CommonColorPickerView;

    if-eqz v18, :cond_0

    .line 209
    sget v1, Lcom/mergbw/core/R$id;->view_sub_list:I

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/mergbw/core/ui/views/SubListView;

    if-eqz v19, :cond_0

    .line 215
    new-instance v1, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v19}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/core/ui/views/CommonColorPickerView;Lcom/mergbw/core/ui/views/SubListView;)V

    return-object v1

    .line 219
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;
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

    .line 106
    invoke-static {p0, v0, v1}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;
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

    .line 112
    sget v0, Lcom/mergbw/core/R$layout;->activity_diy_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/core/databinding/ActivityDiySettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mergbw/core/databinding/ActivityDiySettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
