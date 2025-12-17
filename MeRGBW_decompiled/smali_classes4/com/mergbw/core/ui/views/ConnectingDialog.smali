.class public Lcom/mergbw/core/ui/views/ConnectingDialog;
.super Landroid/app/Dialog;
.source "ConnectingDialog.java"


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/DialogConnectingBinding;


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

    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 38
    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConnectingDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConnectingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogConnectingBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

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

    .line 22
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConnectingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/ConnectingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/DialogConnectingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/DialogConnectingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/ConnectingDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConnectingBinding;

    .line 25
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/DialogConnectingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/ConnectingDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/ConnectingDialog;->setCancelable(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 32
    iget-object v0, p0, Lcom/mergbw/core/ui/views/ConnectingDialog;->mBinding:Lcom/mergbw/core/databinding/DialogConnectingBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogConnectingBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
