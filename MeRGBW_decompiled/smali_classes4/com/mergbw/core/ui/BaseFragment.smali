.class public Lcom/mergbw/core/ui/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bluetoothReady()V
    .locals 0

    return-void
.end method

.method public hideWaitDialog()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$showPopWindow$2$com-mergbw-core-ui-BaseFragment()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 76
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$showWaitDialog$0$com-mergbw-core-ui-BaseFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method synthetic lambda$showWaitDialog$1$com-mergbw-core-ui-BaseFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/ui/BaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "popupWindow"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 70
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    .line 71
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 72
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    new-instance p1, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/BaseFragment;)V

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "showPopWindow error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showWaitDialog()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mergbw/core/ui/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    .line 40
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    .line 41
    iget-object v1, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/ui/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 48
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/BaseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
