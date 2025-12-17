.class public final Lcom/mergbw/android/databinding/FragmentColorSettingBinding;
.super Ljava/lang/Object;
.source "FragmentColorSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSave:Landroid/widget/Button;

.field private final rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

.field public final viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;


# direct methods
.method private constructor <init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/Button;Lcom/mergbw/core/ui/views/CommonColorPickerView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    .line 32
    iput-object p2, p0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->btnSave:Landroid/widget/Button;

    .line 33
    iput-object p3, p0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->viewCommonColorPicker:Lcom/mergbw/core/ui/views/CommonColorPickerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;
    .locals 3

    .line 63
    sget v0, Lcom/mergbw/android/R$id;->btn_save:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Lcom/mergbw/android/R$id;->view_common_color_picker:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/ui/views/CommonColorPickerView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    check-cast p0, Lcom/mergbw/core/ui/views/CustomScrollView;

    invoke-direct {v0, p0, v1, v2}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;-><init>(Lcom/mergbw/core/ui/views/CustomScrollView;Landroid/widget/Button;Lcom/mergbw/core/ui/views/CommonColorPickerView;)V

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;
    .locals 2

    .line 50
    sget v0, Lcom/mergbw/android/R$layout;->fragment_color_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/FragmentColorSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/mergbw/core/ui/views/CustomScrollView;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mergbw/android/databinding/FragmentColorSettingBinding;->rootView:Lcom/mergbw/core/ui/views/CustomScrollView;

    return-object v0
.end method
