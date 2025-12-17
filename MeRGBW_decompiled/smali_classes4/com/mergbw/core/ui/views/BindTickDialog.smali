.class public Lcom/mergbw/core/ui/views/BindTickDialog;
.super Landroid/app/Dialog;
.source "BindTickDialog.java"


# instance fields
.field private mBinding:Lcom/mergbw/core/databinding/DialogBindTickBinding;


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

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/mergbw/core/ui/views/BindTickDialog;->mBinding:Lcom/mergbw/core/databinding/DialogBindTickBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogBindTickBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

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

    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/BindTickDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 27
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/BindTickDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 28
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/BindTickDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 29
    invoke-virtual {p0}, Lcom/mergbw/core/ui/views/BindTickDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/databinding/DialogBindTickBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/DialogBindTickBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/views/BindTickDialog;->mBinding:Lcom/mergbw/core/databinding/DialogBindTickBinding;

    .line 30
    invoke-virtual {p1}, Lcom/mergbw/core/databinding/DialogBindTickBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/BindTickDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ui/views/BindTickDialog;->setCancelable(Z)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/ui/views/BindTickDialog;->mBinding:Lcom/mergbw/core/databinding/DialogBindTickBinding;

    iget-object v0, v0, Lcom/mergbw/core/databinding/DialogBindTickBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
