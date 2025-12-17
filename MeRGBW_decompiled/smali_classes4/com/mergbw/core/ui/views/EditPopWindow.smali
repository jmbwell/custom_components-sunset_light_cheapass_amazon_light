.class public Lcom/mergbw/core/ui/views/EditPopWindow;
.super Landroid/widget/PopupWindow;
.source "EditPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;
    }
.end annotation


# instance fields
.field private final mBinding:Lcom/mergbw/core/databinding/PopEditBinding;

.field private final mListener:Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;)V
    .locals 2
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
            "context",
            "title",
            "content",
            "lText",
            "rText",
            "inputType",
            "listener"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 33
    iput-object p7, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mListener:Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/PopEditBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/PopEditBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mBinding:Lcom/mergbw/core/databinding/PopEditBinding;

    .line 36
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopEditBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p7

    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setContentView(Landroid/view/View;)V

    const/4 p7, -0x1

    .line 37
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setWidth(I)V

    .line 38
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setHeight(I)V

    const/4 p7, 0x1

    .line 39
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setFocusable(Z)V

    .line 40
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setOutsideTouchable(Z)V

    .line 42
    sget v0, Lcom/mergbw/core/R$style;->pop_anim:I

    invoke-virtual {p0, v0}, Lcom/mergbw/core/ui/views/EditPopWindow;->setAnimationStyle(I)V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const/16 p7, 0x30

    .line 45
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setSoftInputMode(I)V

    .line 46
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopEditBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p7

    const/4 v0, 0x0

    invoke-virtual {p7, v0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 47
    iget-object p7, p1, Lcom/mergbw/core/databinding/PopEditBinding;->content:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setupInsetsListener(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setSoftInputMode(I)V

    const/16 p7, 0x10

    .line 50
    invoke-virtual {p0, p7}, Lcom/mergbw/core/ui/views/EditPopWindow;->setSoftInputMode(I)V

    .line 53
    :goto_0
    iget-object p7, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    if-nez p4, :cond_1

    .line 55
    iget-object p4, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 57
    :cond_1
    iget-object p7, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {p7, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_1
    iget-object p4, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvSkip:Landroid/widget/TextView;

    new-instance p7, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda0;

    invoke-direct {p7, p0}, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/EditPopWindow;)V

    invoke-virtual {p4, p7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p4, p1, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p3, p1, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p6}, Landroid/widget/EditText;->setInputType(I)V

    .line 67
    invoke-static {}, Lcom/mergbw/core/utils/KeyboardManager;->with()Lcom/mergbw/core/utils/KeyboardManager;

    move-result-object p3

    iget-object p4, p1, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p3, p4}, Lcom/mergbw/core/utils/KeyboardManager;->showDelayed(Landroid/view/View;)V

    if-nez p5, :cond_2

    .line 70
    iget-object p3, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvDone:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_2
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvDone:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_2
    iget-object p1, p1, Lcom/mergbw/core/databinding/PopEditBinding;->tvDone:Landroid/widget/TextView;

    new-instance p2, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p6}, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/EditPopWindow;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$setupInsetsListener$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 102
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 103
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method

.method private setupInsetsListener(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentView"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/mergbw/core/ui/views/EditPopWindow$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-mergbw-core-ui-views-EditPopWindow(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mListener:Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;->onSkip()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/EditPopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$com-mergbw-core-ui-views-EditPopWindow(ILandroid/view/View;)V
    .locals 2

    .line 75
    iget-object p2, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mBinding:Lcom/mergbw/core/databinding/PopEditBinding;

    iget-object p2, p2, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p2}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mBinding:Lcom/mergbw/core/databinding/PopEditBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 80
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/mergbw/core/R$string;->value_not_empty:I

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 86
    invoke-static {p2}, Lcom/mergbw/core/utils/StringUtils;->checkNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mBinding:Lcom/mergbw/core/databinding/PopEditBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/PopEditBinding;->etEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 88
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/mergbw/core/R$string;->value_not_number:I

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/mergbw/core/ui/views/EditPopWindow;->mListener:Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;

    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1, p2}, Lcom/mergbw/core/ui/views/EditPopWindow$OnEditListener;->onEditText(Ljava/lang/String;)V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/EditPopWindow;->dismiss()V

    return-void
.end method
