.class public final Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;
.super Ljava/lang/Object;
.source "ActivityGroupSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDelete:Landroid/widget/Button;

.field public final ivBack:Landroid/widget/ImageView;

.field public final layoutBottom:Landroid/widget/FrameLayout;

.field public final layoutGroupName:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final listDevice:Landroid/widget/ExpandableListView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvGroupName:Landroid/widget/TextView;

.field public final tvSave:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ExpandableListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->btnDelete:Landroid/widget/Button;

    .line 61
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->ivBack:Landroid/widget/ImageView;

    .line 62
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->layoutBottom:Landroid/widget/FrameLayout;

    .line 63
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->layoutGroupName:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->layoutHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->listDevice:Landroid/widget/ExpandableListView;

    .line 66
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvGroupName:Landroid/widget/TextView;

    .line 67
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvSave:Landroid/widget/TextView;

    .line 68
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;
    .locals 13

    .line 98
    sget v0, Lcom/mergbw/android/R$id;->btn_delete:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Lcom/mergbw/android/R$id;->iv_back:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Lcom/mergbw/android/R$id;->layout_bottom:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Lcom/mergbw/android/R$id;->layout_group_name:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 122
    sget v0, Lcom/mergbw/android/R$id;->layout_head:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 128
    sget v0, Lcom/mergbw/android/R$id;->list_device:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ExpandableListView;

    if-eqz v9, :cond_0

    .line 134
    sget v0, Lcom/mergbw/android/R$id;->tv_group_name:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 140
    sget v0, Lcom/mergbw/android/R$id;->tv_save:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Lcom/mergbw/android/R$id;->tv_title:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 152
    new-instance v0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ExpandableListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;
    .locals 2

    .line 85
    sget v0, Lcom/mergbw/android/R$layout;->activity_group_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityGroupSettingBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
