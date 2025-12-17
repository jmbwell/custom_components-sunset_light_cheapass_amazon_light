.class public final Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;
.super Ljava/lang/Object;
.source "ActivityGroupDetail6Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbCheckAll:Landroid/widget/CheckBox;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivBrightnessMax:Landroid/widget/ImageView;

.field public final ivBrightnessMin:Landroid/widget/ImageView;

.field public final ivDeviceIcon:Landroid/widget/ImageView;

.field public final ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final ivSetting:Landroid/widget/ImageView;

.field public final layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutDeviceControl:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final listDevice:Landroidx/recyclerview/widget/RecyclerView;

.field public final listPage:Landroidx/viewpager2/widget/ViewPager2;

.field public final listTab:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sbBrightness:Landroid/widget/SeekBar;

.field public final tvGroupName:Landroid/widget/TextView;

.field public final tvItemModel:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewDivider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    move-object v0, p0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 92
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 93
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->cbCheckAll:Landroid/widget/CheckBox;

    move-object v1, p3

    .line 94
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p4

    .line 95
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivBrightnessMax:Landroid/widget/ImageView;

    move-object v1, p5

    .line 96
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivBrightnessMin:Landroid/widget/ImageView;

    move-object v1, p6

    .line 97
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivDeviceIcon:Landroid/widget/ImageView;

    move-object v1, p7

    .line 98
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivItemSwitch:Landroidx/appcompat/widget/SwitchCompat;

    move-object v1, p8

    .line 99
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->ivSetting:Landroid/widget/ImageView;

    move-object v1, p9

    .line 100
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->layoutBrightness:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p10

    .line 101
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->layoutDeviceControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    .line 102
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p12

    .line 103
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listDevice:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    .line 104
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listPage:Landroidx/viewpager2/widget/ViewPager2;

    move-object/from16 v1, p14

    .line 105
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->listTab:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p15

    .line 106
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->sbBrightness:Landroid/widget/SeekBar;

    move-object/from16 v1, p16

    .line 107
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->tvGroupName:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 108
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->tvItemModel:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 109
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 110
    iput-object v1, v0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->viewDivider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;
    .locals 23

    move-object/from16 v0, p0

    .line 140
    sget v1, Lcom/mergbw/android/R$id;->cb_check_all:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 146
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 152
    sget v1, Lcom/mergbw/android/R$id;->iv_brightness_max:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 158
    sget v1, Lcom/mergbw/android/R$id;->iv_brightness_min:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 164
    sget v1, Lcom/mergbw/android/R$id;->iv_device_icon:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 170
    sget v1, Lcom/mergbw/android/R$id;->iv_item_switch:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v10, :cond_0

    .line 176
    sget v1, Lcom/mergbw/android/R$id;->iv_setting:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 182
    sget v1, Lcom/mergbw/android/R$id;->layout_brightness:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v12, :cond_0

    .line 188
    sget v1, Lcom/mergbw/android/R$id;->layout_device_control:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_0

    .line 194
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_0

    .line 200
    sget v1, Lcom/mergbw/android/R$id;->list_device:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    .line 206
    sget v1, Lcom/mergbw/android/R$id;->list_page:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v16, :cond_0

    .line 212
    sget v1, Lcom/mergbw/android/R$id;->list_tab:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_0

    .line 218
    sget v1, Lcom/mergbw/android/R$id;->sb_brightness:I

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/SeekBar;

    if-eqz v18, :cond_0

    .line 224
    sget v1, Lcom/mergbw/android/R$id;->tv_group_name:I

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 230
    sget v1, Lcom/mergbw/android/R$id;->tv_item_model:I

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 236
    sget v1, Lcom/mergbw/android/R$id;->tv_title:I

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 242
    sget v1, Lcom/mergbw/android/R$id;->view_divider:I

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 248
    new-instance v1, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v1

    .line 253
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;
    .locals 2

    .line 127
    sget v0, Lcom/mergbw/android/R$layout;->activity_group_detail_6:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityGroupDetail6Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
