.class public final Lcom/mergbw/android/databinding/PopChooseTimeBinding;
.super Ljava/lang/Object;
.source "PopChooseTimeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final hourPicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

.field public final minutePicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvDone:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->rootView:Landroid/widget/FrameLayout;

    .line 42
    iput-object p2, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->hourPicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    .line 43
    iput-object p3, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->minutePicker:Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    .line 44
    iput-object p4, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->tvCancel:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->tvDone:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mergbw/android/databinding/PopChooseTimeBinding;
    .locals 9

    .line 76
    sget v0, Lcom/mergbw/android/R$id;->hour_picker:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    if-eqz v4, :cond_0

    .line 82
    sget v0, Lcom/mergbw/android/R$id;->minute_picker:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;

    if-eqz v5, :cond_0

    .line 88
    sget v0, Lcom/mergbw/android/R$id;->tv_cancel:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 94
    sget v0, Lcom/mergbw/android/R$id;->tv_done:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 100
    sget v0, Lcom/mergbw/android/R$id;->tv_title:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 106
    new-instance v0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;-><init>(Landroid/widget/FrameLayout;Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/PopChooseTimeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/PopChooseTimeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mergbw/android/databinding/PopChooseTimeBinding;
    .locals 2

    .line 63
    sget v0, Lcom/mergbw/android/R$layout;->pop_choose_time:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->bind(Landroid/view/View;)Lcom/mergbw/android/databinding/PopChooseTimeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mergbw/android/databinding/PopChooseTimeBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
