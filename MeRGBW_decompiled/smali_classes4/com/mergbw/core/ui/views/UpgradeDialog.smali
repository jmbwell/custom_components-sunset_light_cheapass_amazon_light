.class public Lcom/mergbw/core/ui/views/UpgradeDialog;
.super Landroid/app/Dialog;
.source "UpgradeDialog.java"


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/DialogUpgradeBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
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

    .line 21
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/UpgradeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/UpgradeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/DialogUpgradeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/DialogUpgradeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/UpgradeDialog;->mBinding:Lcom/mergbw/core/databinding/DialogUpgradeBinding;

    .line 24
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/DialogUpgradeBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/UpgradeDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/UpgradeDialog;->setCancelable(Z)V

    return-void
.end method

.method public showProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mergbw/core/ui/views/UpgradeDialog;->mBinding:Lcom/mergbw/core/databinding/DialogUpgradeBinding;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogUpgradeBinding;->pbUpgrade:Landroid/widget/ProgressBar;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 32
    iget-object v0, p0, Lcom/mergbw/core/ui/views/UpgradeDialog;->mBinding:Lcom/mergbw/core/databinding/DialogUpgradeBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogUpgradeBinding;->tvPbValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
