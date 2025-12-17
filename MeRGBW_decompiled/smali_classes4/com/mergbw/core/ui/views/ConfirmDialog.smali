.class public Lcom/mergbw/core/ui/views/ConfirmDialog;
.super Landroid/app/Dialog;
.source "ConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;
    }
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final lBtnText:Ljava/lang/String;

.field private mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

.field private final mListener:Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;

.field private final rBtnText:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "lBtnText",
            "rBtnText",
            "listener"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->title:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->content:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->lBtnText:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->rBtnText:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mListener:Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-mergbw-core-ui-views-ConfirmDialog(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mListener:Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;->OnConfirmResult(Z)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-mergbw-core-ui-views-ConfirmDialog(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mListener:Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 60
    invoke-interface {p1, v0}, Lcom/mergbw/core/ui/views/ConfirmDialog$OnChooseListener;->OnConfirmResult(Z)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConfirmDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/DialogConfirmBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/DialogConfirmBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    .line 44
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/DialogConfirmBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/ConfirmDialog;->setCancelable(Z)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->lBtnText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvOk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->rBtnText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvOk:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/views/ConfirmDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/ConfirmDialog$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/views/ConfirmDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/core/ui/views/ConfirmDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConfirmBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/DialogConfirmBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/core/ui/views/ConfirmDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/ui/views/ConfirmDialog$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/views/ConfirmDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
