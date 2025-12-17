.class public Lcom/mergbw/core/ui/views/DIYMenuPopWindow;
.super Landroid/widget/PopupWindow;
.source "DIYMenuPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;
    }
.end annotation


# static fields
.field public static final DELETE_CODE:I = 0x3

.field public static final EDIT_CODE:I = 0x2

.field public static final RENAME_CODE:I = 0x1


# instance fields
.field private final mListener:Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/PopDiyMenuBinding;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 27
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setWidth(I)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setOutsideTouchable(Z)V

    .line 32
    sget p2, Lcom/mergbw/core/R$style;->pop_anim:I

    invoke-virtual {p0, p2}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->setAnimationStyle(I)V

    .line 34
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/DIYMenuPopWindow;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->menuItem4:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/DIYMenuPopWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->menuItem1:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/views/DIYMenuPopWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p2, p1, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->menuItem2:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/ui/views/DIYMenuPopWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p1, Lcom/mergbw/core/databinding/PopDiyMenuBinding;->menuItem3:Landroid/widget/TextView;

    new-instance p2, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/ui/views/DIYMenuPopWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-mergbw-core-ui-views-DIYMenuPopWindow(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$1$com-mergbw-core-ui-views-DIYMenuPopWindow(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$com-mergbw-core-ui-views-DIYMenuPopWindow(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;->OnMenuClick(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method synthetic lambda$new$3$com-mergbw-core-ui-views-DIYMenuPopWindow(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 45
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;->OnMenuClick(I)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method synthetic lambda$new$4$com-mergbw-core-ui-views-DIYMenuPopWindow(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->mListener:Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 52
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow$OnMenuClickListener;->OnMenuClick(I)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/DIYMenuPopWindow;->dismiss()V

    :cond_1
    return-void
.end method
