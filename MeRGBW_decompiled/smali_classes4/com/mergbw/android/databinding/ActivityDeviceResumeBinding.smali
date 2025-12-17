.class public final Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;
.super Ljava/lang/Object;
.source "ActivityDeviceResumeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnComplete:Landroid/widget/Button;

.field public final btnUpgrade:Landroid/widget/Button;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivCompleteCover:Landroid/widget/ImageView;

.field public final layoutBeforeUpgrade:Landroid/widget/LinearLayout;

.field public final layoutHead:Landroid/widget/RelativeLayout;

.field public final layoutHint:Landroid/widget/LinearLayout;

.field public final layoutRecord:Landroid/widget/LinearLayout;

.field public final layoutResume:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final listRecord:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvUpgradePercent:Landroid/widget/TextView;

.field public final tvUpgradeTick:Landroid/widget/TextView;

.field public final viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/android/ui/view/WaveProgressView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iput-object p2, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnComplete:Landroid/widget/Button;

    .line 80
    iput-object p3, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->btnUpgrade:Landroid/widget/Button;

    .line 81
    iput-object p4, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivBack:Landroid/widget/ImageView;

    .line 82
    iput-object p5, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->ivCompleteCover:Landroid/widget/ImageView;

    .line 83
    iput-object p6, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutBeforeUpgrade:Landroid/widget/LinearLayout;

    .line 84
    iput-object p7, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutHead:Landroid/widget/RelativeLayout;

    .line 85
    iput-object p8, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutHint:Landroid/widget/LinearLayout;

    .line 86
    iput-object p9, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutRecord:Landroid/widget/LinearLayout;

    .line 87
    iput-object p10, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutResume:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    iput-object p11, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->layoutUpgrading:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    iput-object p12, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->listRecord:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    iput-object p13, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->tvUpgradePercent:Landroid/widget/TextView;

    .line 91
    iput-object p14, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->tvUpgradeTick:Landroid/widget/TextView;

    .line 92
    iput-object p15, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->viewProgress:Lcom/mergbw/android/ui/view/WaveProgressView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 122
    sget v1, Lcom/mergbw/android/R$id;->btn_complete:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 128
    sget v1, Lcom/mergbw/android/R$id;->btn_upgrade:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 134
    sget v1, Lcom/mergbw/android/R$id;->iv_back:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 140
    sget v1, Lcom/mergbw/android/R$id;->iv_complete_cover:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 146
    sget v1, Lcom/mergbw/android/R$id;->layout_before_upgrade:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 152
    sget v1, Lcom/mergbw/android/R$id;->layout_head:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 158
    sget v1, Lcom/mergbw/android/R$id;->layout_hint:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 164
    sget v1, Lcom/mergbw/android/R$id;->layout_record:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 170
    sget v1, Lcom/mergbw/android/R$id;->layout_resume:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_0

    .line 176
    sget v1, Lcom/mergbw/android/R$id;->layout_upgrading:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_0

    .line 182
    sget v1, Lcom/mergbw/android/R$id;->list_record:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    .line 188
    sget v1, Lcom/mergbw/android/R$id;->tv_upgrade_percent:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 194
    sget v1, Lcom/mergbw/android/R$id;->tv_upgrade_tick:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 200
    sget v1, Lcom/mergbw/android/R$id;->view_progress:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/mergbw/android/ui/view/WaveProgressView;

    if-eqz v18, :cond_0

    .line 206
    new-instance v1, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mergbw/android/ui/view/WaveProgressView;)V

    return-object v1

    .line 210
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;
    .locals 2

    .line 109
    sget v0, Lcom/mergbw/android/R$layout;->activity_device_resume:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/databinding/ActivityDeviceResumeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
